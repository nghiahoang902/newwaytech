<?php
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['block_code'] = 'solution';
    $solution = App\Http\Services\PageBuilderService::getBlockContent($params)->first();
?>


<?php if($solution): ?>
    
<section class="bg-img primary-overlay cover-background parallax" data-overlay-dark="9" data-background="<?php echo e($solution->image); ?>">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="extra-style1">
                    <div class="row justify-content-center">
                        <div class="col-md-8 text-center">
                            <h2 class="h1 text-white font-weight-700 mb-4"><?php echo e($solution->title); ?></h2>
                            <p class="text-white display-29 display-md-28 mb-2-2 w-xl-80 mx-auto"><?php echo e($solution->brief); ?></p>
                            <a href="<?php echo e(route('frontend.contact.index')); ?>" class="butn white"><i class="ti-arrow-right icon-arrow before white"></i><span class="label">Liên Hệ</span><i class="ti-arrow-right icon-arrow after"></i></a>
                        </div>
                    </div>
                    <div class="icons">
                        <div class="icon-box">
                            <div class="position-relative">
                                <img src="<?php echo e(asset('themes/frontend/newwaytech/img/icons/icon-52.png')); ?>" alt="...">
                                <div class="hover-icon position-absolute top-0 left-0">
                                    <img src="<?php echo e(asset('themes/frontend/newwaytech/img/icons/icon-hover-52.png')); ?>" alt="...">
                                </div>
                            </div>
                        </div>
                        <div class="icon-box">
                            <div class="position-relative">
                                <img src="<?php echo e(asset('themes/frontend/newwaytech/img/icons/icon-53.png')); ?>" alt="...">
                                <div class="hover-icon position-absolute top-0 left-0">
                                    <img src="<?php echo e(asset('themes/frontend/newwaytech/img/icons/icon-hover-53.png')); ?>" alt="...">
                                </div>
                            </div>
                        </div>
                        <div class="icon-box">
                            <div class="position-relative">
                                <img src="<?php echo e(asset('themes/frontend/newwaytech/img/icons/icon-54.png')); ?>" alt="...">
                                <div class="hover-icon position-absolute top-0 left-0">
                                    <img src="<?php echo e(asset('themes/frontend/newwaytech/img/icons/icon-hover-54.png')); ?>" alt="...">
                                </div>
                            </div>
                        </div>
                        <div class="icon-box">
                            <div class="position-relative">
                                <img src="<?php echo e(asset('themes/frontend/newwaytech/img/icons/icon-55.png')); ?>" alt="...">
                                <div class="hover-icon position-absolute top-0 left-0">
                                    <img src="<?php echo e(asset('themes/frontend/newwaytech/img/icons/icon-hover-55.png')); ?>" alt="...">
                                </div>
                            </div>
                        </div>
                        <div class="icon-box">
                            <div class="position-relative">
                                <img src="<?php echo e(asset('themes/frontend/newwaytech/img/icons/icon-56.png')); ?>" alt="...">
                                <div class="hover-icon position-absolute top-0 left-0">
                                    <img src="<?php echo e(asset('themes/frontend/newwaytech/img/icons/icon-hover-56.png')); ?>" alt="...">
                                </div>
                            </div>
                        </div>
                        <div class="icon-box">
                            <div class="position-relative">
                                <img src="<?php echo e(asset('themes/frontend/newwaytech/img/icons/icon-57.png')); ?>" alt="...">
                                <div class="hover-icon position-absolute top-0 left-0">
                                    <img src="<?php echo e(asset('themes/frontend/newwaytech/img/icons/icon-hover-57.png')); ?>" alt="...">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endif; ?><?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/elements/solution.blade.php ENDPATH**/ ?>