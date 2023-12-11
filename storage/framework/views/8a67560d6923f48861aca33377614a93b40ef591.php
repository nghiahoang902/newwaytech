


<?php $__env->startSection('content'); ?>
    <!-- BANNER
    ================================================== -->
    <?php echo $__env->make('frontend.elements.slider', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <!-- infrastructure
    ================================================== -->
    <?php echo $__env->make('frontend.elements.infrastructure', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <!-- FIELD
    ================================================== -->
    <?php echo $__env->make('frontend.elements.field', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <!-- CHOOSE
    ================================================== -->
    <?php echo $__env->make('frontend.elements.choose', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <!-- INTRO
    ================================================== -->
    <?php echo $__env->make('frontend.elements.intro', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <!-- SOLUTION
    ================================================== -->
    <?php echo $__env->make('frontend.elements.solution', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <!-- PROCESS
    ================================================== -->
    <?php echo $__env->make('frontend.elements.process', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <!-- FEEDBACK
    ================================================== -->
    <?php echo $__env->make('frontend.elements.feedback', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.default.index', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/default/layouts.blade.php ENDPATH**/ ?>