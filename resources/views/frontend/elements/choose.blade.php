@php
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['block_code'] = 'reasons';
    $choose = App\Http\Services\PageBuilderService::getBlockContent($params)->first();

    $childBlockContents = $choose->childBlockContents;
@endphp


<!-- SERVICE 
================================================== -->
<section class="bg-light">
    <div class="container">
        <div class="section-heading5">
            <h2>{{ $choose->title }}<span class="text-secondary"></span></h2>
            <div class="divider"></div>
        </div>
        <div class="horizontaltab tab-style1">

            
            <ul class="resp-tabs-list hor_1" style="display:flex">
                @foreach ($childBlockContents as $item)
                    <li class="tab{{ $item->id }}"><img src="{{ $item->image }}" alt="..." class="d-none d-lg-block mx-auto mb-1">{{ $item->title }}</li>
                @endforeach
            </ul>

            @foreach ($childBlockContents as $item)
                
                <div class="resp-tabs-container hor_1">
                    <div class="first{{ $item->id }}">
                        <div class="row align-items-xl-center">
                            <div class="col-lg-5 mb-1-6 mb-md-1-9 mb-lg-0">
                                <img src="{{ $item->image }}" class="border border-color-extra-light-gray border-width-8 d-block mx-auto" alt="...">
                            </div>
                            <div class="col-lg-7">
                                <div class="ps-lg-3">
                                    <h4 class="mb-3 text-capitalize">{{ $item->title }}</h4>
                                    <p class="mb-1-6 w-lg-95">{!! $item->content !!}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>