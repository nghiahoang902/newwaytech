@php
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['block_code'] = 'field';
    $field = App\Http\Services\PageBuilderService::getBlockContent($params)->first();
    $childFields = $field->childBlockContents;

    $i = 1;
@endphp


@if ($field)
    
<!-- ABOUT US
================================================== -->
<section class="about-style-04 pt-0">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 mb-2-2 mb-sm-2-5 mb-lg-0">
                <div class="about-img-box position-relative text-center text-lg-start">
                    <div class="about-img-left">
                        <img src="{{ asset('themes/frontend/newwaytech/img/content/about-12.jpg') }}" alt="..." class="about-img-1">
                    </div>
                    <div class="about-img-right">
                        <img src="{{ asset('themes/frontend/newwaytech/img/content/about-13.jpg') }}" alt="..." class="about-img-2">
                    </div>
                    <div class="about-img-bottom">
                        <img src="{{ asset('themes/frontend/newwaytech/img/content/about-14.jpg') }}" alt="..." class="about-img-3">
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="ps-lg-2-9">
                    <h2 class="mb-4 text-capitalize">{!! $field->content !!}<span class="text-secondary">{{ $field->brief }}</span></h2>

                    @foreach ($childFields as $item)
                        
                        <div class="steps-item-wrap">
                            <div class="steps-wrap">
                                <div class="steps-number"><span class="text-white">{{ $i++ }}</span></div>
                                <div class="steps-line-wrap">
                                    <div class="steps-line"></div>
                                </div>
                            </div>
                            <div class="steps-content">
                                <h4>{{ $item->title }}</h4>
                                <p class="mb-0 w-lg-95">{!! $item->content !!}</p>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
@endif