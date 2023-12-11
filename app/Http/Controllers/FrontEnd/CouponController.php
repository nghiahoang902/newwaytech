<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\FrontEnd\Controller;

use App\Consts;
use App\Http\Services\ContentService;
use App\Models\Coupon;
use Carbon\Carbon;
use Illuminate\Http\Request;

class CouponController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $paramPost_sp['status'] = 1;
        $this->responseData['posts_sp'] = ContentService::getProducts($paramPost_sp)->paginate(Consts::POST_PAGINATE_LIMIT);
        
        $params = $request->all();

        $params['type'] = Consts::TYPE_COUPONS['type'];
		$this->responseData['type'] = $params['type'];
        $this->responseData['rows'] = ContentService::getDiscountCode($params)->get();

        return $this->responseView('frontend.pages.coupon.index');
    }


    public function checkCoupon(Request $request) {
        $coupon = $request->coupon;
        $temp_amount = $request->temp_amount;
        
        //lấy ra tổng tiền thanh toán từ session cart
        $tempTotal = 0 ; 
        $details = session('cart');
        foreach($details as $id => $cart) {
            $tempTotal += $cart['price'] * $cart['quantity'];
        }

        //check mgg có tồn tại hay không
        $query = Coupon::select('coupons.*')
            ->where('coupons.code', $coupon)
            //check số lần sd
            //check số tiền tối thiếu có nhỏ hơn giá trị tạm tính hay không
            ->where('coupons.min_amount', '<', $temp_amount)
            ->where('coupons.status', 1)
            ->first();
        
        
        $expires = $query->expires_at;
        $currentDate = date('Y-m-d');
        //nếu tồn tại
        if(!empty($query) && ($expires >= $currentDate)) {

            //gán session mgg vào mảng session('coupon'): code, số tiền giảm
            $coupons = session()->get('coupons', []);

            $coupons['id'] = $query->id;
            $coupons['code'] = $query->code;
            $coupons['discount_amount'] = $query->discount_amount;
            
            session()->put('coupons', $coupons);
            
            //Lấy voucher giảm giá từ session đã lưu
            $appliedCoupon = session('coupons');
            if($query->type == 'fixed') {
                $discountAmount = $appliedCoupon ? $appliedCoupon['discount_amount'] : 0; 
            } else {
                $discountAmount = $tempTotal * ($appliedCoupon['discount_amount'] / 100);
            }

            $total = $discountAmount ? $tempTotal - $discountAmount : $tempTotal;

            return response()->json([
                'success' => true,
                'discount_amount' => $discountAmount,
                'total' => $total,
            ]);
        } else {

            //forget session mgg nếu tồn tại
            session()->get('coupons') ? session()->forget('coupons') : '';

            $total = $tempTotal;

            return response()->json([
                'success' => false,
                'total' => $total,
                'message' => 'Mã giảm giá không hợp lệ'
            ]);
        }       
    } 

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
