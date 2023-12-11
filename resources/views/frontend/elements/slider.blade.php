@php
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['block_code'] = 'slide';
    $slide = App\Http\Services\PageBuilderService::getBlockContent($params)->first();

    $childBlockContents = $slide->childBlockContents;
@endphp

@if ($slide)
    
<div class="top-position1 z-index-1">
    <div class="slider-fade banner1">
        <div class="owl-carousel owl-theme w-100">

            @foreach ($childBlockContents as $item)
                
                <div class="text-center item bg-img primary-overlay" data-overlay-dark="2" data-background="{{ $item->image }}">
                    <div class="container h-100 w-100">
                        <div class="d-table h-100 w-100">
                            <div class="d-table-cell align-middle caption">
                                <div class="overflow-hidden w-95 w-md-85 w-lg-80">
                                    <h1 class="text-white w-lg-90 w-xl-80 w-xxl-70 mx-auto"><span class="stroke">{{ $item->brief }}</span></h1>
                                    {{-- <p class="w-90 w-xl-60 mx-auto d-none d-md-block">We are leading technology solutions providing company all over the world doing over 35 years.</p> --}}
                                    <div class="py-4 mt-n1-9">
                                        <a href="{{ route('frontend.intro.index') }}" class="butn white me-4 mt-1-9 d-none d-sm-inline-block"><i class="ti-arrow-right icon-arrow before white"></i><span class="label">Xem thêm</span><i class="ti-arrow-right icon-arrow after"></i></a>
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
@endif