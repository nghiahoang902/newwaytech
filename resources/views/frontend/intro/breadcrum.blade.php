<!-- PAGE TITLE
    ================================================== -->
    <section class="page-title-section bg-img cover-background primary-overlay" data-overlay-dark="7"
        data-background="img/bg/bg-19.jpg">
        <div class="row position-relative z-index-1">
            <div class="col-md-12">
                <div class="faded-text">
                    <div class="f-text"><span class="main-font">{{ $childMenu->name }}</span></div>
                </div>
                <h1>{{ $childMenu->name }}</h1>
                <ul class="breadcrumb">
                    <li><a href="{{ route('frontend.home') }}">Trang chủ</a></li>
                    <li><a href="#!">{{ $childMenu->name }}</a></li>  

                </ul>
            </div>
        </div>
    </section>