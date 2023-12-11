<?php
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['block_code'] = 'partner';
    $partner = App\Http\Services\PageBuilderService::getBlockContent($params)->first();

    $childBlockContents = $partner->childBlockContents;

?>

<!-- FOOTER
================================================== -->
<footer class="footer-top-shape footer-style bg-primary" style="background-color: #2a3a48 !important;">
    <div class="container">
        <div class="row mt-n2-6 pt-15">
            <div class="col-sm-6 col-xl-3 mt-2-6">
                <div class="footer-logo mb-1-6">
                    <img src="<?php echo e($web_information->image->logo_footer); ?>" alt="...">
                </div>
                <p class="text-white mb-1-6 opacity9"><?php echo e($web_information->information->seo_description); ?></p>
                <ul class="footer-social-style3">
                    <li><a href="#!"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="#!"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#!"><i class="fab fa-youtube"></i></a></li>
                    <li><a href="#!"><i class="fab fa-linkedin-in"></i></a></li>
                </ul>
            </div>

            <div class="col-sm-6 col-xl-3 mt-2-6">
                <div class="ps-sm-1-6 ps-md-2-5">
                    <h3 class="h5 text-white mb-4"><span class="me-2">|</span>Địa chỉ</h3>
                    <ul class="contact-list">
                        <li><span class="fas fa-map-marker-alt pe-3 text-white"></span><a
                                href="#!"><?php echo e($web_information->information->address); ?></a></li>
                        <li><span class="fa fa-phone pe-3 text-white"></span><a
                                href="#!"><?php echo e($web_information->information->phone); ?></a></li>
                        <li><span class="fas fa-globe pe-3 text-white"></span><a
                                href="#!"><?php echo e($web_information->information->email); ?></a></li>
                    </ul>
                </div>
            </div>

            <div class="col-sm-6 col-xl-3 mt-2-6">
                <div class="ps-xl-2-5">
                    <h3 class="h5 text-white mb-4"><span class="me-2">|</span>Liên kết</h3>

                    <?php if(isset($menu)): ?>
                        <ul class="footer-list-style1">
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
                                            $content .= '<li><a href="' . $url . '" > ' . $title . ' </a>';
                                        } else {
                                            $content .= '<li><a href="' . $url . '">' . $title . '</a></li>';
                                        }
                                        $content .= '</li>';
                                    }
                                }
                                echo $content;
                            ?>
                        </ul>
                    <?php endif; ?>
                </div>
            </div>

            
            <div class="col-sm-6 col-lg-3 mt-2-6">
                <div class="ps-sm-1-9 ps-xl-6">
                    <h3 class="h5 text-white text-capitalize mb-1-6 mb-lg-1-9"><span class="me-2">|</span><?php echo e($partner->brief); ?></h3>
                    <div class="row g-2">

                        <?php $__currentLoopData = $childBlockContents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            
                            <div class="col-4">
                                <div class="footer-icon position-relative">
                                    <a href="#!">
                                        <img src="<?php echo e($item->image); ?>" alt="...">
                                    </a>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mt-3 mt-md-0 order-2 order-md-1">
                    <p class="d-inline-block mb-0 text-white display-30 display-lg-29"> 
                        <?php echo e($web_information->information->copyright); ?>

                        <span class="current-year"></span>
                        <a href="<?php echo e(route('frontend.home')); ?>" target="_blank"
                            class="text-secondary white-hover">NEWWAYTECH</a>
                    </p>
                </div>

                <div class="col-md-6 text-md-end order-1 order-md-2">
                    <ul class="footer-social-style1">
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
</footer>
<?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/elements/footer.blade.php ENDPATH**/ ?>