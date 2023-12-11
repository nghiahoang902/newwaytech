@extends('frontend.default.index')

@section('content')
@php
    $currentURL = url()->current();
    $currentPath = parse_url($currentURL, PHP_URL_PATH);
    
    if(isset($currentPath) && !empty($currentPath)){
        $is_menu = App\Models\Menu::where('url_link', '=', $currentPath)
        ->where('status', '=', 'active')
        ->first();

        if(isset($is_menu)){
            $childMenu = $is_menu;
        }
    }

    //lấy product theo taxonomy
    $products = $taxonomy_thietbi->products()->paginate(6);
@endphp

{{-- breadcrumb --}}
@include('frontend.intro.breadcrum')

    
<!-- BLOG GRID
================================================== -->
<section>
    <div class="container">
        <div class="section-heading5">
            <h2>{{ $childMenu->name }}<span class="text-secondary"></span></h2>
            <div class="divider"></div>
        </div>
        <div class="row mt-n1-9">

            @foreach ($products as $product)
                
                <div class="col-md-6 col-xl-4 mt-1-9">
                    <article class="card card-style10 h-100">
                        <div class="image-box">
                            <img src="{{ $product->image }}" alt="..." 
                                style="background-size:contain; width:100%;">
                        </div>

                        <div class="card-body" style="margin:0px">
                            <div class="category"><span>Liên hệ</span></div>
                            <h3 class="h4 mb-3"><a href="{{ route('frontend.detail.index', $product->alias) }}">{{ $product->title }}</a></h3>
                            <a class="link-btn" href="{{ route('frontend.detail.index', $product->alias) }}"><span class="link-text">Chi tiết</span></a>
                        </div>
                    </article>
                </div>
            @endforeach
        </div>

        <div class="row">
            <div class="col-sm-12">
                <!-- start pager  -->
                <div class="text-center mt-6 mt-lg-7">
                    <div class="pagination text-primary">
                        {{ $products->withQueryString()->links('frontend.paginate.pagination') }}
                    </div>
                </div>
                <!-- end pager -->
            </div>
        </div>
    </div>
</section>

<style>
    @media(min-width: 992px) {
        .image-box {
            height: 400px;
            line-height: 400px;
            border: 1px solid #ccc;
        }

        .image-box img {
            vertical-align: middle;
        }
    }
</style>
@endsection
