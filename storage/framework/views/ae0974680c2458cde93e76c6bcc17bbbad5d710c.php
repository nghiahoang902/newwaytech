

<?php $__env->startSection('content'); ?>
<?php
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

    //lấy product theo taxonomy
    $products = $taxonomy_thietbi->products()->paginate(6);
?>


<?php echo $__env->make('frontend.intro.breadcrum', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    
<!-- BLOG GRID
================================================== -->
<section>
    <div class="container">
        <div class="section-heading5">
            <h2><?php echo e($childMenu->name); ?><span class="text-secondary"></span></h2>
            <div class="divider"></div>
        </div>
        <div class="row mt-n1-9">

            <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                
                <div class="col-md-6 col-xl-4 mt-1-9">
                    <article class="card card-style10 h-100">
                        <div class="image-box">
                            <img src="<?php echo e($product->image); ?>" alt="..." 
                                style="background-size:contain; width:100%;">
                        </div>

                        <div class="card-body" style="margin:0px">
                            <div class="category"><span>Liên hệ</span></div>
                            <h3 class="h4 mb-3"><a href="<?php echo e(route('frontend.detail.index', $product->alias)); ?>"><?php echo e($product->title); ?></a></h3>
                            <a class="link-btn" href="<?php echo e(route('frontend.detail.index', $product->alias)); ?>"><span class="link-text">Chi tiết</span></a>
                        </div>
                    </article>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <!-- start pager  -->
                <div class="text-center mt-6 mt-lg-7">
                    <div class="pagination text-primary">
                        <?php echo e($products->withQueryString()->links('frontend.paginate.pagination')); ?>

                    </div>
                </div>
                <!-- end pager -->
            </div>
        </div>
    </div>
</section>

<style>
    @media(min-width: 992px) {
        .image-box {
            height: 400px;
            line-height: 400px;
            border: 1px solid #ccc;
        }

        .image-box img {
            vertical-align: middle;
        }
    }
</style>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.default.index', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/device/index.blade.php ENDPATH**/ ?>