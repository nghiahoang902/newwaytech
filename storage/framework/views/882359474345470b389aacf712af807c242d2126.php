
<!DOCTYPE html>
<html lang="vi">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>

  <?php
  $page_title = $taxonomy->title ?? ($page->title ?? ($page->name ?? ''));
  ?>

  <title><?php echo e($page_title); ?></title>
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta name="robots" content="index, follow" />
  <meta http-equiv="Content-Language" content="vi" />
  <meta name="copyright" content="Copyright" />
  <meta property="og:type" name="ogtype" content="Website" />
  <meta property="og:sitename" content="<?php echo e(Request::fullUrl()); ?>" />
  <link rel="canonical" href="<?php echo e(Request::fullUrl()); ?>" />
  <link rel="shortcut icon" type="image/png" href="<?php echo e($web_information->image->favicon ?? ''); ?>" />

  <?php echo $__env->make('frontend.panels.styles', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  <style>
    .copy {
    border-color: #ccc;
    color: #ccc;
    margin-bottom: 6px;
    }

    .copy:hover {
    background-color: #fff;
    border-color: #000;
    color: #000;
    }
  </style>

</head>
<body data-rsssl=1 class="archive tax-product_cat term-quan-ao-be-trai term-37 ot-vertical-menu woocommerce woocommerce-page woocommerce-no-js lightbox nav-dropdown-has-arrow">
    <a class="skip-link screen-reader-text" href="#main">Skip to content</a>
    <div id="wrapper">

      <?php echo $__env->make('frontend.element.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

      <main id="main" class="">
         <div class="row category-page-row">
            <div class="col large-3 hide-for-medium ">
               <div id="shop-sidebar" class="sidebar-inner col-inner">
                  <aside id="nav_menu-3" class="widget widget_nav_menu">
                     <span class="widget-title shop-sidebar">Danh mục sản phẩm</span>
                     <div class="is-divider small"></div>
                     <div class="menu-danh-muc-san-pham-container">
                        <ul id="menu-danh-muc-san-pham" class="menu">
                           <?php
                              $array_category_sp = array();
                              foreach ($taxonomy_sanpham as $category_sp) {
                                 if ($category_sp->parent_id != '') {
                                    $array_category_sp[$category_sp->parent_id] = $category_sp->parent_id;
                                 }
                              }
                           ?>
                           <?php foreach($taxonomy_sanpham as $taxonomy_sp){
                              if(in_array($taxonomy_sp->id,$array_category_sp)) {
                           ?>
                              <li class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-has-children">
                                 <a href="/<?php echo e($taxonomy_sp->taxonomy); ?>/<?php echo e($taxonomy_sp->url_part); ?>.html"><?php echo e($taxonomy_sp->title); ?></a>
                                    <ul class="sub-menu">
                                       <?php
                                       foreach($taxonomy_sanpham as $sub_taxonomy_sp){ 
                                          if($sub_taxonomy_sp->parent_id == $taxonomy_sp->id){
                                       ?>
                                             <li class="menu-item menu-item-type-taxonomy menu-item-object-product_cat "><a href="/<?php echo e($sub_taxonomy_sp->taxonomy); ?>/<?php echo e($sub_taxonomy_sp->url_part); ?>.html"><?php echo e($sub_taxonomy_sp->title); ?></a></li>
                                          <?php } } ?>
                                    </ul>
                              </li>
                           <?php } else { ?>
                              <?php if($taxonomy_sp->parent_id == '') { ?>
                              <li class="menu-item menu-item-type-taxonomy menu-item-object-product_cat"><a href="/<?php echo e($taxonomy_sp->taxonomy); ?>/<?php echo e($taxonomy_sp->url_part); ?>.html"><?php echo e($taxonomy_sp->title); ?></a></li>
                           <?php } } } ?>
                        </ul>
                     </div>
                  </aside>
                  <aside id="woocommerce_products-3" class="widget woocommerce widget_products">
                     <span class="widget-title shop-sidebar">Sản phẩm nổi bật</span>
                     <div class="is-divider small"></div>
                     <ul class="product_list_widget">
                        <?php $__currentLoopData = $posts_sp; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php
                           $hienthi = trim($item->hienthi,';');
                           $vitrihienthi = explode(';',$hienthi);       
                        ?>
                           <?php if(in_array('1',$vitrihienthi)): ?>
                           <li>
                              <a href="/chi-tiet-sp/<?php echo e($item->alias); ?>.html">
                              <img width="100" height="100" src="<?php echo e($item->image); ?>" class="attachment-woocommerce_gallery_thumbnail size-woocommerce_gallery_thumbnail" alt="<?php echo e($item->title); ?>" sizes="(max-width: 100px) 100vw, 100px" />     
                              <span class="product-title"><?php echo e($item->title); ?></span>
                              </a>
                              <span class="woocommerce-Price-amount amount"><?php echo e(number_format($item->giakm ? $item->giakm : $item->gia)); ?><span class="woocommerce-Price-currencySymbol">&#8363;</span></span>
                           </li>
                           <?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                     </ul>
                  </aside>
               </div>
               <!-- .sidebar-inner -->
            </div>
            <!-- #shop-sidebar -->
            <style type="text/css">
              h5.post-title, .from_the_blog_excerpt {
                 overflow: hidden;
                 display: -webkit-box;
                 -webkit-line-clamp: 2;
                         line-clamp: 2; 
                 -webkit-box-orient: vertical;
              }
            </style>
            <div class="large-9 col medium-col-first">
                <div class="page-inner">
                   <p>
                      <!-- wp:html -->
                   </p>
                   <h2 style="text-align: center;">
                      <span style="color: #000000; font-size: 100%; font-family: 'times new roman', times, serif;">
                          <strong>Danh sách mã giảm giá</strong>
                      </span>
                   </h2>               
                   
                   <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <p style="padding-left: 30px;">
                        <span style="color: #000000; font-size: 120%; font-family: 'times new roman', times, serif;">
                            <span style="color: #800000;">❁</span> 
                            <?php echo e($item->name); ?>: <strong id="myCopy_<?php echo e($item->id); ?>"><?php echo e($item->code); ?></strong>
                        </span>

                        <button class="copy"onclick="copyText(<?php echo e($item->id); ?>)">Copy</button>
                    </p>
                   <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                   <p style="text-align: right; margin-top: 200px"><span style="font-size: 120%; font-family: 'times new roman', times, serif;"><em><span style="color: #000000;">Thế Giới Thời Trang Baby – Nơi Thiên Thần Tỏa Sáng</span></em></span></p>
                   <p style="text-align: center;"><span style="font-size: 120%; font-family: 'times new roman', times, serif;"><strong><span style="color: #0084a7;">Hướng Dẫn Đường Đi Đến Showroom Thế Giới Thời Trang Baby</span></strong></span></p>
                   
                   <p style="text-align: center;">
                    <iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.415193853098!2d106.64378341480078!3d10.779478192319452!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f173982a9a9%3A0x9b77f75913e13beb!2zVGjhur8gR2nhu5tpIFRo4budaSBUcmFuZyBCYWJ5!5e0!3m2!1svi!2s!4v1531465740653" width="1170" height="450" frameborder="0" allowfullscreen="allowfullscreen"></iframe>
                  </p>
                   <p>
                      <!-- /wp:html -->
                   </p>
                </div>
            </div>
         </div>
      </main>

       <?php echo $__env->make('frontend.element.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?> 

    </div>

    <?php echo $__env->make('frontend.element.menu_mobile', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo $__env->make('frontend.element.login_popup', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo $__env->make('frontend.panels.stylefooter', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>


    <script>
        function copyText(id) {
            // Tạo một range và chọn nó
            var range = document.createRange();
            range.selectNode(document.getElementById('myCopy_' + id));

            // Lấy selection và thêm range vào đó
            var selection = window.getSelection();
            selection.removeAllRanges();
            selection.addRange(range);

            // Copy văn bản vào clipboard
            document.execCommand('copy');

            // Bỏ chọn
            selection.removeAllRanges();

            // Hiển thị thông báo
            alert("Đã sao chép: " + document.getElementById('myCopy_'+ id).innerText);
        }
    </script>
 </body>
</html><?php /**PATH C:\xampp\htdocs\shopquanao\resources\views/frontend/pages/coupon/index.blade.php ENDPATH**/ ?>