<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from techno.websitelayout.net/index-modern-it-company.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 24 Nov 2023 10:25:46 GMT -->
<head>

    <!-- metas -->
    <meta charset="utf-8">
    <meta name="author" content="<?php echo e($web_information->information->seo_title); ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="keywords" content="<?php echo e($web_information->information->seo_title); ?>">
    <meta name="description" content="<?php echo e($web_information->information->seo_title); ?>">

    <!-- title  -->
    <title>
        <?php echo $__env->yieldContent('title', 'NEWWAYTECH'); ?>
    </title>

    <!-- favicon -->
    <link rel="shortcut icon" href="img/logos/favicon.png">
    <link rel="apple-touch-icon" href="img/logos/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/logos/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/logos/apple-touch-icon-114x114.png">

    
    <?php echo $__env->make('frontend.scripts.style', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</head>

<body>

    <!-- PAGE LOADING
    ================================================== -->
    <div id="preloader"></div>

    <!-- MAIN WRAPPER
    ================================================== -->
    <div class="main-wrapper">

        <!-- HEADER
        ================================================== -->
        <?php echo $__env->make('frontend.elements.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <?php echo $__env->yieldContent('content'); ?>

        <!-- FOOTER
        ================================================== -->
        <?php echo $__env->make('frontend.elements.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    
    <?php echo $__env->make('frontend.scripts.script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</body>
</html><?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/default/index.blade.php ENDPATH**/ ?>