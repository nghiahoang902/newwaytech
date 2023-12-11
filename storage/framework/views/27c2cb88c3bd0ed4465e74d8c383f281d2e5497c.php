
<?php $__env->startSection('title', 'Login'); ?>

<?php $__env->startSection('content'); ?>

<section class="vh-100" style="background-color: #508bfc;">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
          <div class="card shadow-2-strong" style="border-radius: 1rem;">
            <form action="<?php echo e(route('frontend.login.post')); ?>" method="POST">
              <?php echo csrf_field(); ?>

              <div class="card-body p-5 text-center">
    
                <h3 class="mb-5">Sign in</h3>

                <?php if($errors->has('errorMessage')): ?>
                  <div class="alert alert-danger">
                      <?php echo e($errors->first('errorMessage')); ?>

                  </div>
                <?php endif; ?>

                <?php if($errors->has('loginError')): ?>
                  <div class="alert alert-danger">
                    <?php echo e($errors->first('loginError')); ?>

                  </div>
                <?php endif; ?>
    
                <div class="form-outline mb-4">
                  <input type="email" name="email" id="typeEmailX-2" class="form-control form-control-lg" />
                  <label class="form-label" for="typeEmailX-2">Email</label>
                </div>
    
                <div class="form-outline mb-4">
                  <input type="password" name="password" id="typePasswordX-2" class="form-control form-control-lg" />
                  <label class="form-label" for="typePasswordX-2">Password</label>
                </div>
    
                <!-- Checkbox -->
                <div class="form-check d-flex justify-content-start mb-4">
                  <input class="form-check-input" type="checkbox" value="" id="form1Example3" />
                  <label class="form-check-label" for="form1Example3"> Remember password </label>
                </div>
    
                <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>

                <div>
                  <p class="mb-0 pt-3">Don't have an account? 
                    <a href="<?php echo e(route('frontend.register')); ?>" class="text-black-50 fw-bold">Sign Up</a>
                  </p>
                </div>
    
                <hr class="my-4">
    
                <button class="btn btn-lg btn-block btn-primary" style="background-color: #dd4b39;"
                  type="submit"><i class="fab fa-google me-2"></i> Sign in with google</button>
                <button class="btn btn-lg btn-block btn-primary mb-2" style="background-color: #3b5998;"
                  type="submit"><i class="fab fa-facebook-f me-2"></i>Sign in with facebook</button>
    
              </div>

              <?php
                  $referer = request()->headers->get('referer');
              ?>
              <input type="hidden" name="url" value="<?php echo e($referer); ?>">
            </form>
          </div>
        </div>
      </div>
    </div>
</section>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('frontend.pages.login.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\shopquanao\resources\views/frontend/pages/login/login.blade.php ENDPATH**/ ?>