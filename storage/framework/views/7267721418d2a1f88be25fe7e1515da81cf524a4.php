<?php $__env->startSection('title'); ?>
<?php echo e($module_name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content-header'); ?>
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
    <?php echo e($module_name); ?>

    
  </h1>
</section>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

<!-- Main content -->
<section class="content">
  
  <div class="box box-default">

    <div class="box-header with-border">
      <h3 class="box-title"><?php echo app('translator')->get('Filter'); ?></h3>
      <div class="box-tools pull-right">
        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
      </div>
    </div>
    <form action="<?php echo e(route(Request::segment(2) . '.index')); ?>" method="GET">
      <div class="box-body">
        <div class="row">
          
          <div class="col-md-2">
            <div class="form-group">
              <label>Trạng thái</label>
              <select name="status" id="status" class="form-control select2" style="width: 100%;">
                <option value=""><?php echo app('translator')->get('Please select'); ?></option>
                <?php $__currentLoopData = App\Consts::STATUS_COMMENT; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <option value="<?php echo e($key); ?>"
                    <?php echo e(isset($params['status']) && $key == $params['status'] ? 'selected' : ''); ?>>
                    <?php echo e(__($value)); ?></option>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              </select>
            </div>
          </div>
          
          <div class="col-md-6">
            <div class="form-group">
              <label>Từ khóa</label>
              <input type="text" class="form-control" name="keyword" placeholder="<?php echo app('translator')->get('keyword_note'); ?>"
                value="<?php echo e(isset($params['keyword']) ? $params['keyword'] : ''); ?>">
            </div>
          </div>

          <div class="col-md-2">
            <div class="form-group">
              <label><?php echo app('translator')->get('Filter'); ?></label>
              <div>
                <button type="submit" class="btn btn-primary btn-sm mr-10"><?php echo app('translator')->get('Submit'); ?></button>
                <a class="btn btn-default btn-sm" href="<?php echo e(route(Request::segment(2) . '.index')); ?>">
                  <?php echo app('translator')->get('Reset'); ?>
                </a>
              </div>
            </div>
          </div>

        </div>
      </div>
    </form>
  </div>
  

  <div class="box">
    <div class="box-header">
      <h3 class="box-title"><?php echo app('translator')->get('Danh sách bình luận'); ?></h3>
    </div>

    <div class="box-body table-responsive">
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
      <?php if(count($rows) == 0): ?>
      <div class="alert alert-warning alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <?php echo app('translator')->get('No record found'); ?>
      </div>
      <?php else: ?>
      <table class="table table-hover table-bordered">
        <thead>
          <tr>
            <th><?php echo app('translator')->get('Bài viết'); ?></th>
            <th><?php echo app('translator')->get('Người bình luận'); ?></th>
            <th><?php echo app('translator')->get('Nội dung bình luận'); ?></th>
            <th style="min-width: 115px;"><?php echo app('translator')->get('Trạng thái'); ?></th>
            <th><?php echo app('translator')->get('Updated at'); ?></th>
            <th style="min-width: 80px"><?php echo app('translator')->get('Action'); ?></th>
          </tr>
        </thead>
        <tbody>
          <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

          <form action="<?php echo e(route(Request::segment(2).'.destroy', $row->id)); ?>" method="POST"
            onsubmit="return confirm('<?php echo app('translator')->get('confirm_action'); ?>')">
            <tr class="valign-middle">
              <td>
                <?php echo e($row->post_title); ?>

              </td>
              <td>
                <?php echo e($row->member_name); ?>

              </td>
              <td>
                <?php echo App\Http\Services\ContentService::stringTruncate ( $row->content, 200); ?>

				<a href="<?php echo e(route(Request::segment(2).'.edit', $row->id)); ?>" class="btn btn-default btn-xs txt-color-blueLight" data-toggle="tooltip" data-original-title="Xem chi tiết"
				rel="popover-hover"
				data-html="true"><i class="fa fa-eye"></i></a>
              </td>
              <td>
                <select class="form-control" name="" id="apcept_comment_<?php echo e($row->id); ?>" onchange="updateStatusComment(<?php echo e($row->id); ?>)">
                  <?php $__currentLoopData = App\Consts::STATUS_COMMENT; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$status_comment): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <option value="<?php echo e($key); ?>" <?php echo e($row->status == $key ? 'selected' : ''); ?>><?php echo e($status_comment); ?></option>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
                <img id="ic-loading_<?php echo e($row->id); ?>" style="display: none;vertical-align: middle;" src="/images/load.gif" width="20px">
              </td>
              <td>
                <?php echo e($row->updated_at); ?>

              </td>
              <td class="text-center">
                <a class="btn btn-xs btn-warning" data-toggle="tooltip" title="<?php echo app('translator')->get('Update'); ?>"
                  data-original-title="<?php echo app('translator')->get('update'); ?>" href="<?php echo e(route(Request::segment(2).'.edit', $row->id)); ?>" style="margin-right: 5px;">
                  <i class="fa fa-pencil-square-o"></i>
                </a>
                <?php echo csrf_field(); ?>
                <?php echo method_field('DELETE'); ?>
                <button class="btn btn-xs btn-danger" type="submit" data-toggle="tooltip" title="<?php echo app('translator')->get('Delete'); ?>"
                  data-original-title="<?php echo app('translator')->get('delete'); ?>" >
                  <i class="fa fa-trash"></i>
                </button>
              </td>
            </tr>
          </form>

          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tbody>
      </table>
      <?php endif; ?>
    </div>

    <?php if($rows->hasPages()): ?>
    <div class="box-footer clearfix">
      <?php echo e($rows->withQueryString()->links('admin.pagination.default')); ?>

    </div>
    <?php endif; ?>

  </div>
</section>
<script type="text/javascript">
  function updateStatusComment(id){
    var status = $('#apcept_comment_'+id).val();
    $('#ic-loading_'+id).show();
    $.ajax({
      url: '<?php echo e(route('cms_posts.update_comment_status')); ?>',
      type: 'POST',
      data: {
      _token: '<?php echo e(csrf_token()); ?>',
      status: status,
      id: id,
      },
      context: document.body,
    }).done(function(data) {
      $('#ic-loading_'+id).hide();
    });
  }
</script>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shopquanao\resources\views/admin/pages/comment/index.blade.php ENDPATH**/ ?>