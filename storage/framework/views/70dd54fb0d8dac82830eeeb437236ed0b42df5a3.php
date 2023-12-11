<?php
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['block_code'] = 'slide';
    $slide = App\Http\Services\PageBuilderService::getBlockContent($params)->first();

    $childBlockContents = $slide->childBlockContents;
?>

<?php if($slide): ?>
    
<div class="top-position1 z-index-1">
    <div class="slider-fade banner1">
        <div class="owl-carousel owl-theme w-100">

            <?php $__currentLoopData = $childBlockContents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                
                <div class="text-center item bg-img primary-overlay" data-overlay-dark="2" data-background="<?php echo e($item->image); ?>">
                    <div class="container h-100 w-100">
                        <div class="d-table h-100 w-100">
                            <div class="d-table-cell align-middle caption">
                                <div class="overflow-hidden w-95 w-md-85 w-lg-80">
                                    <h1 class="text-white w-lg-90 w-xl-80 w-xxl-70 mx-auto"><span class="stroke"><?php echo e($item->brief); ?></span></h1>
                                    
                                    <div class="py-4 mt-n1-9">
                                        <a href="<?php echo e(route('frontend.intro.index')); ?>" class="butn white me-4 mt-1-9 d-none d-sm-inline-block"><i class="ti-arrow-right icon-arrow before white"></i><span class="label">Xem thêm</span><i class="ti-arrow-right icon-arrow after"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</div>
<?php endif; ?><?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/elements/slider.blade.php ENDPATH**/ ?>