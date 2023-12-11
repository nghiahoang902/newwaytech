<?php
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['block_code'] = 'reasons';
    $choose = App\Http\Services\PageBuilderService::getBlockContent($params)->first();

    $childBlockContents = $choose->childBlockContents;
?>


<!-- SERVICE 
================================================== -->
<section class="bg-light">
    <div class="container">
        <div class="section-heading5">
            <h2><?php echo e($choose->title); ?><span class="text-secondary"></span></h2>
            <div class="divider"></div>
        </div>
        <div class="horizontaltab tab-style1">

            
            <ul class="resp-tabs-list hor_1" style="display:flex">
                <?php $__currentLoopData = $childBlockContents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <li class="tab<?php echo e($item->id); ?>"><img src="<?php echo e($item->image); ?>" alt="..." class="d-none d-lg-block mx-auto mb-1"><?php echo e($item->title); ?></li>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </ul>

            <?php $__currentLoopData = $childBlockContents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                
                <div class="resp-tabs-container hor_1">
                    <div class="first<?php echo e($item->id); ?>">
                        <div class="row align-items-xl-center">
                            <div class="col-lg-5 mb-1-6 mb-md-1-9 mb-lg-0">
                                <img src="<?php echo e($item->image); ?>" class="border border-color-extra-light-gray border-width-8 d-block mx-auto" alt="...">
                            </div>
                            <div class="col-lg-7">
                                <div class="ps-lg-3">
                                    <h4 class="mb-3 text-capitalize"><?php echo e($item->title); ?></h4>
                                    <p class="mb-1-6 w-lg-95"><?php echo $item->content; ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</section><?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/elements/choose.blade.php ENDPATH**/ ?>