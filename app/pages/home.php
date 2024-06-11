
    <?php include '../app/pages/includes/header.php'; ?>

    <div class="container">

    <div class="p-4 p-md-5 mb-4 rounded text-body-emphasis bg-body-secondary" style="background-color: #D3D3D3;">
    <div class="col-lg-6 px-0">
      <h1 class="display-4 fst-italic">Title of a longer featured blog post</h1>
      <p class="lead my-3">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what’s most interesting in this post’s contents.</p>
      <p class="lead mb-0"><a href="<?=ROOT?>/blog"  class="text-body-emphasis fw-bold" <?=$url[0] =='blog' ? 'link-primary':'link-dark'?>>Continue reading...</a></p>
    </div>
  </div>

    <h3 class="mx-4">New Posts</h3>

      <div class="row my-2 justify-content-center">

        <?php  

          $query = "select posts.*,categories.category from posts join categories on posts.category_id = categories.id order by id desc limit 2";
          $rows = query($query);
          if($rows)
          {
            foreach ($rows as $row) {
              include '../app/pages/includes/post-card.php';
            }

          }else{
            echo "No items found!";
          }

        ?>

      </div>
    </div>

      <?php include '../app/pages/includes/footer.php'; ?>
