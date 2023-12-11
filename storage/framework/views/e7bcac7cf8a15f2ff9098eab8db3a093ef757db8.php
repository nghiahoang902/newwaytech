<?php
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['block_code'] = 'intro';
    $intro = App\Http\Services\PageBuilderService::getBlockContent($params)->first();

    $childBlockContents = $intro->childBlockContents;
?>


<?php if($intro): ?>
    
<!-- PORTFOLIO
================================================== -->
<section>
    <div class="container">
        <div class="section-heading5">
            <h2><?php echo e($intro->brief); ?><span class="text-secondary"></span></h2>
            <div class="divider"></div>
        </div>
    </div>
    <div class="portfolio2-carousel owl-carousel owl-theme">

        <?php $__currentLoopData = $childBlockContents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            
            <div class="card card-style11">
                <img class="card-img-top border-radius-none" src="<?php echo e($item->image); ?>" alt="...">
                <div class="card-body">
                    <div class="d-xxl-flex">
                        <div class="flex-shrink-0 mb-4 mb-xxl-0">
                            <span class="portfolio-category">Development</span>
                            <a href="<?php echo e(route('frontend.intro.index')); ?>"><h4 class="text-white mb-0"><?php echo e($item->title); ?></h4></a>
                        </div>
                        <div class="flex-grow-1 ps-3 ps-xxl-4 ms-xxl-4 border-start border-secondary">
                            <p class="mb-0 text-white w-md-90 clamp-text"><?php echo e($item->brief); ?></p>
                        </div>
                    </div>
                    <a href="<?php echo e(route('frontend.intro.index')); ?>" class="portfolio-links"><i class="ti-arrow-right"></i></a>
                </div>
            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
</section>

<style>
    .clamp-text {
        display: -webkit-box;
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-overflow: ellipsis;
        -webkit-line-clamp: 3; /* Số dòng tối đa */
    }
</style>
<?php endif; ?><?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/elements/intro.blade.php ENDPATH**/ ?>