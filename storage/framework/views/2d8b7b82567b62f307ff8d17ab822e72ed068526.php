<header class="header-style1 menu_area-light" style="background-color: #fff;">

    <div class="navbar-default border-bottom border-color-light-white">

        <!-- start top search -->
        <div class="top-search bg-secondary">
            <div class="container-fluid px-sm-1-6 px-lg-2-9">
                <form class="search-form" action="https://techno.websitelayout.net/search.html" method="GET"
                    accept-charset="utf-8">
                    <div class="input-group">
                        <span class="input-group-addon cursor-pointer">
                            <button class="search-form_submit fas fa-search text-white" type="submit"></button>
                        </span>
                        <input type="text" class="search-form_input form-control" name="s" autocomplete="off"
                            placeholder="Type & hit enter...">
                        <span class="input-group-addon close-search mt-2"><i class="fas fa-times"></i></span>
                    </div>
                </form>
            </div>
        </div>
        <!-- end top search -->

        <div class="container-fluid px-sm-2-9">
            <div class="row align-items-center">
                <div class="col-12 col-lg-12">
                    <div class="menu_area alt-font">
                        <nav class="navbar navbar-expand-lg navbar-light p-0">

                            <div class="navbar-header navbar-header-custom">
                                <!-- start logo -->
                                <a href="<?php echo e(route('frontend.home')); ?>" class="navbar-brand"><img id="logo"
                                        src="<?php echo e($web_information->image->logo_header); ?>" alt="logo"></a>
                                <!-- end logo -->
                            </div>

                            <div class="navbar-toggler"></div>

                            <?php if(isset($menu)): ?>
                                <ul class="navbar-nav ms-auto" id="nav" style="display: none;">
                                    <?php
                                        $main_menu = $menu->first(function ($item, $key) {
                                            return $item->menu_type == 'header' && ($item->parent_id == null || $item->parent_id == 0);
                                        });

                                        $content = '';
                                        //cấp 1
                                        foreach ($menu as $key => $item) {
                                            $url = $title = '';

                                            if ($item->parent_id == $main_menu->id) {
                                                $title = isset($item->json_params->title->{$locale}) && $item->json_params->title->{$locale} != '' ? $item->json_params->title->{$locale} : $item->name;
                                                $url = $item->url_link;
                                                $target = $item->json_params->target;
                                                $active = $url == url()->current() ? 'current' : '';

                                                //cấp 2
                                                if ($item->sub > 0) {
                                                    $content .= '<li><a href="' . $url . '" aria-current="page" style="color:#000;"> ' . $title . ' </a>';

                                                    $content .= '<ul class="sub-menu">';
                                                    foreach ($menu as $item_sub) {
                                                        $url = $title = '';
                                                        if ($item_sub->parent_id == $item->id) {
                                                            $title = isset($item_sub->json_params->title->{$locale}) && $item_sub->json_params->title->{$locale} != '' ? $item_sub->json_params->title->{$locale} : $item_sub->name;
                                                            $url = $item_sub->url_link;
                                                            $target = $item_sub->json_params->target;
                                                            $content .= '<li><a target="' . $target . '" href="' . $url . '">' . $title . '</a>';
                                                            $content .= '</li>';
                                                        }
                                                    }
                                                    $content .= '</ul>';
                                                } else {
                                                    $content .= '<li class=" ' . $active . ' "><a href="' . $url . '" style="color:#000;">' . $title . '</a></li>';
                                                }
                                                $content .= '</li>';
                                            }
                                        }
                                        echo $content;
                                    ?>
                                </ul>
                            <?php endif; ?>
                            </ul>
                            <!-- end menu area -->

                            <!-- start attribute navigation -->
                            <div class="attr-nav align-items-lg-center ms-lg-auto">
                                <ul>
                                    <li class="d-none d-xl-inline-block"><a href="<?php echo e(route('frontend.contact.index')); ?>" class="butn md"><i class="ti-arrow-right icon-arrow before"></i><span class="label">Tư vấn miễn phí</span><i class="ti-arrow-right icon-arrow after"></i></a></li>
                                </ul>
                            </div>
                            <!-- end attribute navigation -->

                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>

</header>
<?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/elements/header.blade.php ENDPATH**/ ?>