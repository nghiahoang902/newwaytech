<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Admin\Controller;
use App\Models\Images;
use Illuminate\Http\Request;
use App\Consts;
use App\Http\Services\ContentService;
use App\Models\CmsProduct;
use App\Models\CmsPostImage;
use Illuminate\Support\Facades\Auth;

class CmsImagesController extends Controller
{
    public function __construct() 
    {
        $this->routeDefault  = 'cms_images';
        $this->viewPart = 'admin.pages.cms_images';
        $this->responseData['module_name'] = __('Quản lý hình ảnh');
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
        $params['is_type'] = Consts::POST_TYPE['product'];
        // Get list post with filter params
        //$rows = ContentService::getCmsPost($params)->paginate(Consts::DEFAULT_PAGINATE_LIMIT);
		$rows = ContentService::getImages($params)->paginate(Consts::DEFAULT_PAGINATE_LIMIT);
        
        $this->responseData['rows'] =  $rows;
        $this->responseData['params'] = $params;
 
        return $this->responseView($this->viewPart . '.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
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
        $request->validate([
            'title' => 'required|max:255',
            'image' => 'required|max:255',
            'description' => 'required|max:255',
        ]);

        $params = $request->all();

        $Images                      = new Images();
        $Images->title               = $params['title'];
        $Images->image               = $params['image'];
        $Images->description         = $params['description'];
        // $Images->admin_created_id    = Auth::guard('admin')->user()->id;
        // $Images->admin_updated_id    = Auth::guard('admin')->user()->id;

        $Images->save();

        // CmsProduct::create($params);

        return redirect()->route($this->routeDefault . '.index')->with('successMessage', __('Add new successfully!'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Images  $images
     * @return \Illuminate\Http\Response
     */
    public function show(Images $images)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Images  $images
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        $images = Images::find($id);
        $this->responseData['images'] = $images;
        return $this->responseView($this->viewPart . '.edit');
        // return view('admin.pages.cms_images.edit', compact('images'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Images  $images
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required|max:255',
            'description' => 'required|max:255',
        ]);

        $images = Images::find($id);
        if($request->hasFile('image')) {
            $images->image               = $request->image;
        } else {
            $images->image               = $images->image;
        }

        $images->title               = $request->title;
        $images->description         = $request->description;

        $images->update();
        return redirect()->route($this->routeDefault . '.index')->with('successMessage', __('Successfully updated!'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Images  $images
     * @return \Illuminate\Http\Response
     */
    public function destroy(Images $image, $id)
    {
        $imageId = Images::find($id);
        $imageId->delete();
        // return $this->responseView($this->viewPart . '.index')->with('successMessage', __('Delete record successfully!'));

		return redirect()->back()->with('successMessage', __('Delete record successfully!'));
    }
}
