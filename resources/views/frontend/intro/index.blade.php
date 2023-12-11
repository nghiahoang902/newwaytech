@extends('frontend.default.index')

@section('content')
    @php
        $params['status'] = App\Consts::POST_STATUS['active'];
        $params['block_code'] = 'intro';
        $intro = App\Http\Services\PageBuilderService::getBlockContent($params)->first();
        $childBlockContents = $intro->childBlockContents;
        
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

    @endphp

    {{-- breadcrumb --}}
    @include('frontend.intro.breadcrum')

    <!-- PORTFOLIO DETAIL
    ================================================== -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 mb-2-2">
                    <h3 class="mb-3 text-primary">{{ $intro->brief }} :</h3>
                    <p class="w-lg-95 mb-0">{!! $intro->content !!}</p>
                </div>

                @foreach ($childBlockContents as $item)
                    
                    <div class="col-lg-12 mb-2-2">
                        <h3 class="mb-3 text-primary">{{ $item->title }} :</h3>
                        <p class="w-lg-95 mb-0">{{ $item->brief }} </p>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection
