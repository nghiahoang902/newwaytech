

<?php $__env->startSection('content'); ?>
    <?php
        $params['status'] = App\Consts::POST_STATUS['active'];
        $params['block_code'] = 'intro';
        $intro = App\Http\Services\PageBuilderService::getBlockContent($params)->first();
        $childBlockContents = $intro->childBlockContents;
        
        $currentURL = url()->current();
        $currentPath = parse_url($currentURL, PHP_URL_PATH);
        
        if(isset($currentPath) && !empty($currentPath)){
            $is_menu = App\Models\Menu::where('url_link', '=', $currentPath)
            ->where('status', '=', 'active')
            ->first();

            if(isset($is_menu)){
                $childMenu = $is_menu;
            }
        }

    ?>

    
    <?php echo $__env->make('frontend.intro.breadcrum', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <!-- PORTFOLIO DETAIL
    ================================================== -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 mb-2-2">
                    <h3 class="mb-3 text-primary"><?php echo e($intro->brief); ?> :</h3>
                    <p class="w-lg-95 mb-0"><?php echo $intro->content; ?></p>
                </div>

                <?php $__currentLoopData = $childBlockContents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    
                    <div class="col-lg-12 mb-2-2">
                        <h3 class="mb-3 text-primary"><?php echo e($item->title); ?> :</h3>
                        <p class="w-lg-95 mb-0"><?php echo e($item->brief); ?> </p>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.default.index', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/intro/index.blade.php ENDPATH**/ ?>