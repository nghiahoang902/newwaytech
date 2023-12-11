
<?php $__env->startSection('content'); ?>
    <?php
        // breadcrum
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

        // partner
        $params['status'] = App\Consts::POST_STATUS['active'];
        $params['block_code'] = 'partner';
        $partner = App\Http\Services\PageBuilderService::getBlockContent($params)->first();
        $childBlockContents = $partner->childBlockContents;

    ?>

    
    <?php echo $__env->make('frontend.intro.breadcrum', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <section>
        <div class="container">
            <div class="row">
                <!-- blog-list left -->
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="pe-lg-1-9">
                        <div class="row mt-n1-9">

                            <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="col-lg-12 mt-1-9">
                                    <article class="card card-style10">
                                        <div class="image-box col-lg-4">
                                            <img src="<?php echo e($item->image); ?>" alt="...">
                                        </div>
                                        <div class="card-body col-lg-8">
                                            <div class="category"><span><?php echo e($item->created_at); ?></span></div>
                                            <h3 class="h4 mb-3"><a href="<?php echo e(route('frontend.detail.index', $item->alias)); ?>"><?php echo e($item->title); ?></a></h3>
                                            <p class="mb-3"><?php echo e($item->mota); ?></p>
                                            <a class="link-btn" href="<?php echo e(route('frontend.detail.index', $item->alias)); ?>"><span class="link-text">Chi
                                                    tiết</span></a>
                                        </div>
                                    </article>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <!-- start pager  -->
                                <div class="text-center mt-5 mt-lg-6">
                                    <div class="pagination text-primary">
                                        <?php echo e($products->withQueryString()->links('frontend.paginate.pagination')); ?>

                                    </div>
                                </div>
                                <!-- end pager -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end blog-list left -->

                <!-- blog-list right -->
                <div class="col-lg-4">
                    <div class="blog-sidebar">
                        
                        <div class="widget widget-nav-menu">
                            <h6 class="widget-title"><span class="me-2">//</span>Liên kết</h6>

                            <?php if(isset($menu)): ?>
                                <ul class="cat-list" id="nav" >
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
                        </div>

                        
                        <div class="widget widget-post">
                            <h6 class="widget-title"><span class="me-2">//</span>Đối tác</h6>
                            <div class="blog-post-carousel owl-carousel owl-theme">

                                <?php $__currentLoopData = $childBlockContents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    
                                    <div>
                                        <div class="image-box">
                                            <img src="<?php echo e($item->image); ?>" alt="...">
                                        </div>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>

                        
                        <div class="widget widget-social-icon">
                            <h6 class="widget-title"><span class="me-2">//</span>Theo dõi</h6>
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
                                    <a href="#!"><i class="fab fa-instagram"></i></a>
                                </li>
                                <li>
                                    <a href="#!"><i class="fab fa-linkedin-in"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- end blog-list right -->
            </div>
        </div>
    </section>

    <style>
        @media(min-width: 992px) {
            .card.card-style10 {
                flex-direction: row !important;
            }

            .image-box.col-lg-4 {
                display: flex;
                align-items: center;
                justify-content: center;
                border: 1px solid #ccc;
            }

            .card-style10 .card-body {
                margin: 0px;
            }
            .blog-sidebar .widget-nav-menu .cat-list li a {
                padding: 10px;
                border: none;
            }
        }

        .blog-post-carousel.owl-carousel.owl-theme.owl-loaded.owl-drag {
            text-align: center
            border: 1px solid #ccc;
        }

        .blog-sidebar .widget .blog-post-carousel .image-box {
            display: flex;
            align-items: center;
            justify-content: center;
            border: 1px solid #ccc;
            margin: 0px;
        }

        .blog-post-carousel .image-box .img {
            max-width: 100%; 
            max-height: 100%;
        }

    </style>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.default.index', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/software/index.blade.php ENDPATH**/ ?>