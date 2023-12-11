<!-- PAGE TITLE
    ================================================== -->
    <section class="page-title-section bg-img cover-background primary-overlay" data-overlay-dark="7"
        data-background="img/bg/bg-19.jpg">
        <div class="row position-relative z-index-1">
            <div class="col-md-12">
                <div class="faded-text">
                    <div class="f-text"><span class="main-font"><?php echo e($childMenu->name); ?></span></div>
                </div>
                <h1><?php echo e($childMenu->name); ?></h1>
                <ul class="breadcrumb">
                    <li><a href="<?php echo e(route('frontend.home')); ?>">Trang chủ</a></li>
                    <li><a href="#!"><?php echo e($childMenu->name); ?></a></li>  

                </ul>
            </div>
        </div>
    </section><?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/intro/breadcrum.blade.php ENDPATH**/ ?>