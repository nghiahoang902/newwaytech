@php
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['block_code'] = 'intro';
    $intro = App\Http\Services\PageBuilderService::getBlockContent($params)->first();

    $childBlockContents = $intro->childBlockContents;
@endphp


@if ($intro)
    
<!-- PORTFOLIO
================================================== -->
<section>
    <div class="container">
        <div class="section-heading5">
            <h2>{{ $intro->brief }}<span class="text-secondary"></span></h2>
            <div class="divider"></div>
        </div>
    </div>
    <div class="portfolio2-carousel owl-carousel owl-theme">

        @foreach ($childBlockContents as $item)
            
            <div class="card card-style11">
                <img class="card-img-top border-radius-none" src="{{ $item->image }}" alt="...">
                <div class="card-body">
                    <div class="d-xxl-flex">
                        <div class="flex-shrink-0 mb-4 mb-xxl-0">
                            <span class="portfolio-category">Development</span>
                            <a href="{{ route('frontend.intro.index') }}"><h4 class="text-white mb-0">{{ $item->title }}</h4></a>
                        </div>
                        <div class="flex-grow-1 ps-3 ps-xxl-4 ms-xxl-4 border-start border-secondary">
                            <p class="mb-0 text-white w-md-90 clamp-text">{{ $item->brief }}</p>
                        </div>
                    </div>
                    <a href="{{ route('frontend.intro.index') }}" class="portfolio-links"><i class="ti-arrow-right"></i></a>
                </div>
            </div>
        @endforeach
    </div>
</section>

<style>
    .clamp-text {
        display: -webkit-box;
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-overflow: ellipsis;
        -webkit-line-clamp: 3; /* Số dòng tối đa */
    }
</style>
@endif