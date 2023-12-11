
      <form action="/login" method="post">
        <?php echo csrf_field(); ?>
        <div class="form-group">
          <input type="email" name="email" required class="form-control" placeholder="Email">
        </div>
        <div class="form-group">
          <input type="password" required name="password" class="form-control" placeholder="Password">
        </div>
        <button type="submit" class="btn btn-primary btn-block btn-flat">
          Sign In
        </button>
      </form>
<?php /**PATH C:\xampp\htdocs\shopquanao\resources\views/frontend/pages/login.blade.php ENDPATH**/ ?>