<?php

namespace App\Http\Controllers\Admin;

// use App\Http\Controllers\Controller;

use App\Consts;
use App\Http\Services\ContentService;
use App\Models\Coupon;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DiscountCodeController extends Controller
{
    // protected $coupon;

    public function __construct()
    {
        // $this->coupon = $coupon;
        $this->routeDefault = 'coupons';
        $this->viewPart = 'admin.pages.coupons';
        $this->responseData['module_name'] = __('Quản lý mã giảm giá');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if(ContentService::checkRole($this->routeDefault,'index') == 0){
			$this->responseData['module_name'] = __('Bạn không có quyền truy cập chức năng này');
			return $this->responseView($this->viewPart . '.404');
		}
        
        $params = $request->all();

        $params['type'] = Consts::TYPE_COUPONS['type'];
		$this->responseData['type'] = $params['type'];
        $this->responseData['rows'] = ContentService::getDiscountCode($params)->get();

        return $this->responseView($this->viewPart . '.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(ContentService::checkRole($this->routeDefault,'create') == 0){
			$this->responseData['module_name'] = __('Bạn không có quyền truy cập chức năng này');
			return $this->responseView($this->viewPart . '.404');
		}

        $params['type'] = Consts::TYPE_COUPONS['type'];
		$this->responseData['type'] = $params['type'];

        return $this->responseView($this->viewPart . '.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(ContentService::checkRole($this->routeDefault,'create') == 0){
            $this->responseData['module_name'] = __('Bạn không có quyền truy cập chức năng này');
            return $this->responseView($this->viewPart . '.404');
        }
        $request->validate([
            'code' => 'required|max:255',
            'name' => 'required|max:255',
            'max_uses' => 'required',
            'max_uses_user' => 'required',
            'type' => 'required',
            'discount_amount' => 'required',
            'min_amount' => 'required',
            'status' => 'required',
        ]);

        $params = $request->all();
        
        //Start date must be greater than current date
        if(!empty($params['starts_at'])) {
            $date = date('d-m-Y');

            if($params['starts_at'] < $date){
                return redirect()->back()->with('errorMessage', __('Start date must be greater than current date'));
            }
            $starts_at = Carbon::createFromFormat('d/m/Y', $params['starts_at'])->format('Y-m-d');

        }

        //Expiry date must be greater than start date
        if(!empty($params['starts_at']) && !empty($params['expires_at'])) {
            if($params['expires_at'] < $params['starts_at']){
                return redirect()->back()->with('errorMessage', __('Expiry date must be greater than start date'));
            }
            $expires_at = Carbon::createFromFormat('d/m/Y', $params['expires_at'])->format('Y-m-d');

        }
        $coupon                   = new Coupon();
        $coupon->code             = $params['code'];
        $coupon->name             = $params['name'];
        $coupon->max_uses         = $params['max_uses'];
        $coupon->max_uses_user    = $params['max_uses_user'];
        $coupon->type             = $params['type'];
        $coupon->discount_amount  = $params['discount_amount'];
        $coupon->min_amount       = $params['min_amount'];
        $coupon->status           = $params['status'];
        $coupon->starts_at        = $starts_at;
        $coupon->expires_at       = $expires_at;
        $coupon->admin_created_id = Auth::guard('admin')->user()->id;
        $coupon->admin_updated_id = Auth::guard('admin')->user()->id;

        $coupon->save();
        return redirect()->route($this->routeDefault . '.index')->with('successMessage', __('Add new successfully!'));

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
        if(ContentService::checkRole($this->routeDefault,'update') == 0){
			$this->responseData['module_name'] = __('Bạn không có quyền truy cập chức năng này');
			return $this->responseView($this->viewPart . '.404');
		}

        $coupon = Coupon::find($id);

        $params['type'] = Consts::TYPE_COUPONS['type'];
		$this->responseData['type'] = $params['type'];
        $this->responseData['coupon'] = $coupon;

        return $this->responseView($this->viewPart . '.edit');
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
        if(ContentService::checkRole($this->routeDefault,'create') == 0){
            $this->responseData['module_name'] = __('Bạn không có quyền truy cập chức năng này');
            return $this->responseView($this->viewPart . '.404');
        }

        $request->validate([
            'code' => 'required|max:255',
            'name' => 'required|max:255',
            'max_uses' => 'required',
            'max_uses_user' => 'required',
            'type' => 'required',
            'discount_amount' => 'required',
            'min_amount' => 'required',
            'status' => 'required',
        ]);

        $params = $request->all();
        
        //Start date must be greater than current date
        if(!empty($params['starts_at'])) {
            $date = date('d-m-Y');

            if($params['starts_at'] < $date){
                return redirect()->back()->with('errorMessage', __('Start date must be greater than current date'));
            }
            $params['starts_at'] = Carbon::createFromFormat('d/m/Y', $params['starts_at'])->format('Y-m-d');
        }

        //Expiry date must be greater than start date
        if(!empty($params['starts_at']) && !empty($params['expires_at'])) {
            if($params['expires_at'] < $params['starts_at']){
                return redirect()->back()->with('errorMessage', __('Expiry date must be greater than start date'));
            }
            $params['expires_at'] = Carbon::createFromFormat('d/m/Y', $params['expires_at'])->format('Y-m-d');
        }

        // $coupon                   = $this->coupon->find($id);
        $coupon = Coupon::find($id);

        $coupon->code             = $params['code'];
        $coupon->name             = $params['name'];
        $coupon->max_uses         = $params['max_uses'];
        $coupon->max_uses_user    = $params['max_uses_user'];
        $coupon->type             = $params['type'];
        $coupon->discount_amount  = $params['discount_amount'];
        $coupon->min_amount       = $params['min_amount'];
        $coupon->status           = $params['status'];
        $coupon->starts_at        = $params['starts_at'];
        $coupon->expires_at       = $params['expires_at'];
        $coupon->admin_created_id = Auth::guard('admin')->user()->id;
        $coupon->admin_updated_id = Auth::guard('admin')->user()->id;

        $coupon->save();
        // return redirect()->route($this->routeDefault . '.index')->with('successMessage', __('Add new successfully!'));
        return redirect()->back()->with('successMessage', __('Successfully updated!'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(ContentService::checkRole($this->routeDefault,'create') == 0){
            $this->responseData['module_name'] = __('Bạn không có quyền truy cập chức năng này');
            return $this->responseView($this->viewPart . '.404');
        }

        $coupon = Coupon::find($id);
        $coupon->delete();

        return redirect()->back()->with('successMessage', __('Delete record successfully!'));
    }
}
