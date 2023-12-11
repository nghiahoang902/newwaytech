
<?php if($paginator->hasPages()): ?>
  <ul class="pagination clearfix">
    
    <?php if($paginator->onFirstPage()): ?>
      <li class="page-item disabled" aria-disabled="true" aria-label="<?php echo app('translator')->get('pagination.previous'); ?>">
        <a class="page-link">
            <i class="fas fa-long-arrow-alt-left me-2"></i> 
            Prev
        </a>
      </li>
    <?php else: ?>
      <li class="page-item ">
        <a class="page-link" href="<?php echo e($paginator->previousPageUrl()); ?>" rel="prev"
          aria-label="<?php echo app('translator')->get('pagination.previous'); ?>">
          <i class="fas fa-long-arrow-alt-left me-2"></i> 
            Prev
        </a>
      </li>
    <?php endif; ?>

    
    <?php $__currentLoopData = $elements; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $element): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      
      <?php if(is_string($element)): ?>
        <li class="page-item "><a class="page-link"><?php echo e($element); ?></a></li>
      <?php endif; ?>

      
      <?php if(is_array($element)): ?>
        <?php $__currentLoopData = $element; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page => $url): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php if($page == $paginator->currentPage()): ?>
            <li class="page-item active"><a class="page-link"><?php echo e($page); ?></a>
            </li>
          <?php else: ?>
            <li class="page-item "><a class="page-link" href="<?php echo e($url); ?>"><?php echo e($page); ?></a>
            </li>
          <?php endif; ?>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      <?php endif; ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

    
    <?php if($paginator->hasMorePages()): ?>
      <li class="page-item ">
        <a class="page-link" href="<?php echo e($paginator->nextPageUrl()); ?>" rel="next"
          aria-label="<?php echo app('translator')->get('pagination.next'); ?>">
          Next
          <i class="fas fa-long-arrow-alt-right ms-2"></i>
        </a>
      </li>
    <?php else: ?>
      <li class="page-item disabled" aria-disabled="true" aria-label="<?php echo app('translator')->get('pagination.next'); ?>">
        <a class="page-link">
            Next
            <i class="fas fa-long-arrow-alt-right ms-2"></i>
        </a>
      </li>
    <?php endif; ?>
  </ul>
  
<?php endif; ?>
<?php /**PATH D:\PHPcoban\beanmobile_sapo\resources\views/frontend/paginate/pagination.blade.php ENDPATH**/ ?>