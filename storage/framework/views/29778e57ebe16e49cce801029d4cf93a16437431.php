<?php $__env->startSection('title'); ?>
  <?php echo e($module_name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      <?php echo e($module_name); ?>

      <a class="btn btn-sm btn-warning pull-right" href="<?php echo e(route(Request::segment(2) . '.create')); ?>"><i
          class="fa fa-plus"></i> <?php echo app('translator')->get('Add'); ?></a>
    </h1>
  </section>

  <!-- Main content -->
  <section class="content">
    <?php if(session('errorMessage')): ?>
      <div class="alert alert-warning alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <?php echo e(session('errorMessage')); ?>

      </div>
    <?php endif; ?>
    <?php if(session('successMessage')): ?>
      <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <?php echo e(session('successMessage')); ?>

      </div>
    <?php endif; ?>

    <?php if($errors->any()): ?>
      <div class="alert alert-danger alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>

        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <p><?php echo e($error); ?></p>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

      </div>
    <?php endif; ?>

    <div class="box box-primary">
      <div class="box-header with-border">
        <h3 class="box-title"><?php echo app('translator')->get('Create form'); ?></h3>
      </div>
      <!-- /.box-header -->
      <!-- form start -->
      <form role="form" action="<?php echo e(route('coupons.store')); ?>" method="POST">
        <?php echo csrf_field(); ?>
        <div class="box-body">
          <!-- Custom Tabs -->
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active">
                <a href="#tab_1" data-toggle="tab">
                  <h5>Thông tin chính <span class="text-danger">*</span></h5>
                </a>
              </li>

              <button type="submit" class="btn btn-primary btn-sm pull-right">
                <i class="fa fa-floppy-o"></i>
                <?php echo app('translator')->get('Save'); ?>
              </button>
            </ul>

            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
                <div class="row">
                  <div class="col-md-6">
                    
                    <div class="form-group">
                      <label><?php echo app('translator')->get('Code'); ?> <small class="text-red">*</small></label>
                      <input type="text" class="form-control" maxlength="255" id="txtTitle" 
                        onchange="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        onclick="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        onblur="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        name="code" placeholder="<?php echo app('translator')->get('Code'); ?>"
                        value="<?php echo e(old('code')); ?>" required>
                      <span id='remainingInput_text' class="note pull-right"><?php echo e(mb_strlen(old('code'))); ?>/255</span>
                    </div>

                    
                    <div class="form-group">
                      <label><?php echo app('translator')->get('Tên mã giảm giá'); ?> <small class="text-red">*</small></label>
                      <input type="text" class="form-control" maxlength="255" id="txtTitle" 
                        onchange="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        onclick="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        onblur="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        name="name" placeholder="<?php echo app('translator')->get('Name'); ?>"
                        value="<?php echo e(old('name')); ?>" required>
                      <span id='remainingInput_text' class="note pull-right"><?php echo e(mb_strlen(old('name'))); ?>/255</span>
                    </div>

                    
                    <div class="form-group">
                      <div class="row">
                        <div class="col-xs-4">
                          <label>Số lần dùng</label>
                          <input type="number" class="form-control" name="max_uses"
                            placeholder="max_uses" value="<?php echo e(old('max_uses')); ?>">
                        </div>
                        <div class="col-xs-4">
                          <label>Số lần dùng cho 1 người</label>
                          <input type="number" class="form-control" name="max_uses_user"
                            placeholder="max_uses_user" value="<?php echo e(old('max_uses_user')); ?>">
                        </div>
                        <div class="col-xs-4">
                          
                            <label><?php echo app('translator')->get('Phân loại mã'); ?></label>
                            <select name="type" id="type" class="form-control select2" style="width: 100%;">
                              <option value=""><?php echo app('translator')->get('Please select'); ?></option>
                              <option value="percent"><?php echo e($type['percent']); ?></option>
                              <option value="fixed"><?php echo e($type['fixed']); ?></option>
                            </select>
                          
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-6">
                    
                    <div class="form-group">
                      <div class="row">
                        <div class="col-xs-4">
                          <label>Số tiền giảm</label>
                          <input type="number" class="form-control" name="discount_amount"
                            placeholder="discount_amount" value="<?php echo e(old('discount_amount')); ?>">
                        </div>
                        <div class="col-xs-4">
                          <label>Số tiền tối thiểu</label>
                          <input type="number" class="form-control" name="min_amount"
                            placeholder="min_amount" value="<?php echo e(old('min_amount')); ?>">
                        </div>
                        <div class="col-xs-4">
                            <label><?php echo app('translator')->get('Status'); ?></label>
                            <select name="status" id="status" class="form-control select2" style="width: 100%;">
                              <option value=""><?php echo app('translator')->get('Please select'); ?></option>
                              <option value="1" selected>Hoạt động</option>
                              <option value="0">Không hoạt động</option>
                            </select>
                        </div>
                      </div>
                    </div>

                    
                    <div class="form-group">
                      <div class="row">
                        <div class="col-xs-4">
                          <label>Ngày bắt đầu: </label>
                          <input name="starts_at" id="created_at_from" 
                            class="form-control datepicker" value="" placeholder="dd/mm/yyyy">
                        </div>
                        <div class="col-xs-4">
                          <label>Ngày kết thúc: </label>
                          <input name="expires_at" id="created_at_from" 
                            class="form-control datepicker" value="" placeholder="dd/mm/yyyy">
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-12" id="frames"></div>
                </div>
              </div>
            </div><!-- /.tab-content -->
          </div><!-- nav-tabs-custom -->
        </div><!-- /.box-body -->
        

        <div class="box-footer">
          <a class="btn btn-success btn-sm" href="<?php echo e(route(Request::segment(2) . '.index')); ?>">
            <i class="fa fa-bars"></i> <?php echo app('translator')->get('List'); ?>
          </a>
          <button type="submit" class="btn btn-primary pull-right btn-sm"><i class="fa fa-floppy-o"></i>
            <?php echo app('translator')->get('Save'); ?></button>
        </div>
      </form>
    </div>
  </section>

<?php $__env->stopSection(); ?>
<style>
  /* label{margin-left: 20px;}
      #datepicker{width:180px;}
      #datepicker > span:hover{cursor: pointer;} */
</style>


<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shopquanao\resources\views/admin/pages/coupons/create.blade.php ENDPATH**/ ?>