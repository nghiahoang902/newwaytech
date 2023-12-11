@extends('frontend.default.index')

@section('content')
    {{-- breadcrumb --}}
    <section class="page-title-section bg-img cover-background primary-overlay" data-overlay-dark="7"
        data-background="img/bg/bg-19.jpg">
        <div class="row position-relative z-index-1">
            <div class="col-md-12">
                <div class="faded-text">
                    <div class="f-text"><span class="main-font">{{ $taxonomy->title }}</span></div>
                </div>
                <h1>{{ $taxonomy->title }}</h1>
                <ul class="breadcrumb">
                    <li><a href="{{ route('frontend.home') }}">Trang chủ</a></li>
                    @if ($product)
                        <li><a href="{{ route('frontend.device.index', $taxonomy->taxonomy) }}">{{ $taxonomy->title }}</a>
                        </li>
                        <li><a href="#!">{{ $product->title }}</a></li>
                    @else
                        <li><a href="{{ route('frontend.device.index', $taxonomy->taxonomy) }}">{{ $taxonomy->title }}</a>
                        </li>
                    @endif
                </ul>
            </div>
        </div>
    </section>

    {{-- chi tiết --}}
    <section class="about-style-05">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 mb-2-2 mb-md-2-5 mb-lg-0">
                    <div class="box-shadows p-1-6">
                        <div class="box-shadows p-2">
                            <div class="position-relative bg-img cover-background text-center py-10 py-sm-14 py-md-16 py-lg-24"
                                data-background="{{ $product->image }}">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="ps-lg-1-9 ps-xl-2-9">
                        <h2 class="h1 mb-1-6">{{ $product->title }}</h2>
                        <p class="mb-2-2 w-95">{!! $product->chitiet !!}</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    {{-- sản phẩm liên quan --}}
    <section class="bg-light">
        <div class="container">
            <div class="section-heading6">
                <h2>Sản phẩm liên quan</h2>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="portfolio-box-right">
                        <div class="portfolio3-carousel owl-carousel owl-theme">

                            @foreach ($relatedProducts as $item)
                                
                                <div class="portfolio-style4">
                                    <div class="portfolio-image bg-img cover-background min-height-350" 
                                        data-background="{{ $item->image }}"
                                        style="background-size: contain !important;">
                                        <div class="portfolio-content-wrap">
                                            <div class="portfolio-info">
                                                <div class="d-table h-100 w-100">
                                                    <div class="d-table-cell w-100 vertical-align-middle">
                                                        <div class="portfolio-title">
                                                            <a href="{{ route('frontend.detail.index', $item->alias) }}"><h4 class="text-white mb-1-9">{{ $item->title }}</h4></a>
                                                        </div>
                                                        <div class="portfolio-details-link"><a href="{{ route('frontend.detail.index', $item->alias) }}"><i class="fa fa-link"></i></a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
