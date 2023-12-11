<?php
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['block_code'] = 'infrastructure';
    $infrastructure = App\Http\Services\PageBuilderService::getBlockContent($params)->first();
?>


<?php if($infrastructure): ?>
    
<!-- INFORMATION
================================================== -->
<section class="info-style-02 pt-0">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 mb-4 mb-lg-0">
                <div class="row g-0">
                    <div class="col-md-5 col-lg-4 bg-img cover-background min-height-300" data-background="<?php echo e($infrastructure->image); ?>">
                    </div>
                    <div class="col-md-7 col-lg-8" style="box-shadow: 3px 3px 5px #ccc;">
                        <div class="box-shadow3 d-table h-100 w-100">
                            <div class="d-table-cell p-1-6 p-sm-2-2 vertical-align-middle">
                                <h3 class="h4 text-center"><?php echo e($infrastructure->title); ?></h3>
                                <p class="lead" style="margin:0px"><?php echo e($infrastructure->brief); ?></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="box-shadow3 h-100">
                    <div class="counter-box bg-primary">
                        <div class="d-lg-table-cell h-100 align-items-center vertical-align-middle">
                            <h1 class="text-white countup">15</h1>
                            <h5 class="h6 text-white mb-0">Years Of Experience</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endif; ?><?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/elements/infrastructure.blade.php ENDPATH**/ ?>