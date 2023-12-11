<?php
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['block_code'] = 'feedback';
    $feedback = App\Http\Services\PageBuilderService::getBlockContent($params)->first();

    $childBlockContents = $feedback->childBlockContents;
?>


<section class="bg-light">
    <div class="container">
        <div class="section-heading5">
            <h2><?php echo e($feedback->brief); ?><span class="text-secondary"></span></h2>
            <div class="divider"></div>
        </div>

        <div class="testimonial4-carousel owl-carousel owl-theme">

            <?php $__currentLoopData = $childBlockContents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                
                <div class="testimonial-wrapper">
                    <div class="author-image">
                        <img src="<?php echo e($item->image); ?>" alt="...">
                    </div>
                    <p class="position-relative text-center text-sm-start"><?php echo e($item->brief); ?></p>
                    <div class="testimonial-box">
                        <div class="d-sm-flex justify-content-between align-items-center">
                            <div class="mb-2 mb-sm-0">
                                <h4 class="h5"><?php echo e($item->title); ?></h4>
                                <span class="designation"><?php echo $item->content; ?></span>
                            </div>
                            <div class="display-30 text-warning">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</section><?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/elements/feedback.blade.php ENDPATH**/ ?>