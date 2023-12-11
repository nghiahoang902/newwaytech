@extends('frontend.default.index')

@section('content')
    @php
        $currentURL = url()->current();
        $currentPath = parse_url($currentURL, PHP_URL_PATH);

        if (isset($currentPath) && !empty($currentPath)) {
            $is_menu = App\Models\Menu::where('url_link', '=', $currentPath)
                ->where('status', '=', 'active')
                ->first();

            if (isset($is_menu)) {
                $childMenu = $is_menu;
            }
        }
    @endphp

    {{-- breadcrumb --}}
    @include('frontend.intro.breadcrum')


    <!-- CONTACT FORM
    ================================================== -->
    <section class="bg-light">
        <div class="container">
            <div class="row justify-content-center mt-3">
                <div class="col-lg-7 mb-2-2 mb-lg-0">
                    <div class="p-1-9 p-lg-2-2 box-shadows h-100">
                        <h2 class="mb-2-5 text-primary">Liên hệ với chúng tôi</h2>

                        @if (isset($success))
                            <h3 class="mb-2-5 text-primary">{{ $success }}</h3>
                        @endif

                        @if ($errors->any())
                            <h3 class="mb-2-5 text-primary">{{ $errors->first() }}</h3>
                        @endif

                        <form class="contact quform" action="{{ route('frontend.sendEmail.index') }}"
                            method="post" enctype="multipart/form-data">

                            @csrf

                            <div class="quform-elements">
                                <div class="row">

                                    <!-- Begin Text input element -->
                                    <div class="col-md-6">
                                        <div class="quform-element form-group">
                                            <label for="name">Tên <span class="quform-required">*</span></label>
                                            <div class="quform-input">
                                                <input class="form-control" id="name" type="text" name="name"
                                                    placeholder="Your name here" />
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End Text input element -->

                                    <!-- Begin Text input element -->
                                    <div class="col-md-6">
                                        <div class="quform-element form-group">
                                            <label for="email">Email <span class="quform-required">*</span></label>
                                            <div class="quform-input">
                                                <input class="form-control" id="email" type="text" name="email"
                                                    placeholder="Your email here" />
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End Text input element -->

                                    <!-- Begin Text input element -->
                                    <div class="col-md-6">
                                        <div class="quform-element form-group">
                                            <label for="subject">Tiêu đề <span
                                                    class="quform-required">*</span></label>
                                            <div class="quform-input">
                                                <input class="form-control" id="subject" type="text" name="subject"
                                                    placeholder="Your subject here" />
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End Text input element -->

                                    <!-- Begin Text input element -->
                                    <div class="col-md-6">
                                        <div class="quform-element form-group">
                                            <label for="phone">Số điện thoại <span class="quform-required">*</span></label>
                                            <div class="quform-input">
                                                <input class="form-control" id="phone" type="text" name="phone"
                                                    placeholder="Your phone here" />
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End Text input element -->

                                    <!-- Begin Textarea element -->
                                    <div class="col-md-12">
                                        <div class="quform-element form-group">
                                            <label for="message">Nội dung <span class="quform-required">*</span></label>
                                            <div class="quform-input">
                                                <textarea class="form-control" id="message" name="message" rows="3" placeholder="Tell us a few words"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End Textarea element -->

                                    <!-- Begin Submit button -->
                                    <div class="col-md-12">
                                        <div class="quform-submit-inner">
                                            <button class="butn border-0" type="submit">
                                                <i class="ti-arrow-right icon-arrow before"></i>
                                                <span class="label">Gửi</span>
                                                <i class="ti-arrow-right icon-arrow after"></i>
                                            </button>
                                        </div>
                                        <div class="quform-loading-wrap text-start"><span class="quform-loading"></span>
                                        </div>
                                    </div>
                                    <!-- End Submit button -->

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="box-shadows p-1-9 p-lg-2-2 h-100">
                        <h2 class="mb-3 text-primary text-capitalize h3">{{ $web_information->information->seo_description }}</h2>
                        <p class="mb-2-2"></p>
                        <div class="d-flex mb-4 pb-3 border-bottom border-color-extra-light-gray">
                            <div class="flex-shrink-0 mt-2">
                                <i class="fas fa-phone-alt text-secondary fs-2"></i>
                            </div>
                            <div class="flex-grow-1 ms-4">
                                <h3 class="h5">Số điện thoại</h3>
                                <span class="text-muted d-block mb-1">{{ $web_information->information->phone }}</span>
                            </div>
                        </div>
                        <div class="d-flex mb-4 pb-3 border-bottom border-color-extra-light-gray">
                            <div class="flex-shrink-0 mt-2">
                                <i class="far fa-envelope-open text-secondary fs-2"></i>
                            </div>
                            <div class="flex-grow-1 ms-4">
                                <h3 class="h5 mb-1">Email</h3>
                                <span class="text-muted d-block mb-1">{{ $web_information->information->email }}</span>
                            </div>
                        </div>
                        <div class="d-flex mb-4 pb-3 border-bottom border-color-extra-light-gray">
                            <div class="flex-shrink-0 mt-2">
                                <i class="fas fa-map-marker-alt text-secondary fs-2"></i>
                            </div>
                            <div class="flex-grow-1 ms-4">
                                <h3 class="h5 mb-1">Địa chỉ</h3>
                                <address class="text-muted d-block mb-0 w-md-80 w-xl-70">{{ $web_information->information->address }}</address>
                            </div>
                        </div>
                        <ul class="social-box">
                            <li>
                                <a href="#!"><i class="fab fa-facebook-f"></i></a>
                            </li>
                            <li>
                                <a href="#!"><i class="fab fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#!"><i class="fab fa-youtube"></i></a>
                            </li>
                            <li>
                                <a href="#!"><i class="fab fa-linkedin-in"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- MAP
    ================================================== -->
    <iframe class="map" id="gmap_canvas"
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.698181819879!2d105.8042084746791!3d21.00473228063859!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac98b9327d87%3A0xad35bfc68d5b5bab!2zODIgTmcuIDExNiBQLiBOaMOibiBIw7JhLCBOaMOibiBDaMOtbmgsIFRoYW5oIFh1w6JuLCBIw6AgTuG7mWkgMTEwMDAsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1702027948547!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></iframe>
@endsection
