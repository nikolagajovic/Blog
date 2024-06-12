<?php include '../app/pages/includes/header.php'; ?>

<div class="container">

  <div class="p-4 p-md-5 mb-4 rounded text-body-emphasis bg-body-secondary" style="background-color: #D3D3D3;">
    <div class="col-lg-8 px-0">
      <h1 class="display-4 fst-italic"> <strong>About Us</strong></h1>
      <p class="lead my-3">Welcome to Our Blog, your go-to source for insightful, engaging, and thought-provoking content. Our mission is to inform, inspire,
        and entertain our readers with high-quality articles, stories, and resources across a wide range of topics.</p>
      <h2 class="fst-italic"> Our Story</h2>
      <p class="lead my-3">Founded in 2024, Our Blog began as a passion project by a group of friends who wanted to share their diverse perspectives and knowledge with the world. Over the years,
        our blog has grown into a vibrant community of writers and readers who are curious about the world and eager to learn more.</p>

      <p class="lead mb-0"><a href="<?= ROOT ?>/blog" class="text-body-emphasis fw-bold" <?= $url[0] == 'blog' ? 'link-primary' : 'link-dark' ?>>Continue reading...</a></p>
    </div>
  </div>

  <h3 class="mx-4">New Posts</h3>

  <div class="row my-2 justify-content-center">

    <?php

    $query = "select posts.*,categories.category from posts join categories on posts.category_id = categories.id order by id desc limit 2";
    $rows = query($query);
    if ($rows) {
      foreach ($rows as $row) {
        include '../app/pages/includes/post-card.php';
      }
    } else {
      echo "No items found!";
    }

    ?>

  </div>

  <h2 class="fst-italic"> What We Cover</h2>
  <p class="lead my-3">At Our Blog, we believe in the power of diverse content. Our blog covers:
  <ul>
    <li><strong>Lifestyle:</strong> Tips and advice on living your best life, from health and wellness to personal finance and productivity.</li>
    <li><strong>Technology:</strong> The latest in tech news, reviews, and how-tos, helping you stay up-to-date with the fast-paced digital world.</li>
    <li><strong>Travel:</strong> Inspiring travel guides, destination reviews, and travel tips to fuel your wanderlust.</li>
    <li><strong>Culture:</strong> In-depth articles on art, literature, music, and the latest cultural trends.</li>
    <li><strong>Food:</strong> Delicious recipes, restaurant reviews, and culinary tips for food enthusiasts.</li>
  </ul>
  Food: Delicious recipes, restaurant reviews, and culinary tips for food enthusiasts.</p>
  <h2 class=" fst-italic"> Join Our Community</h2>
  <p class="lead my-3">We believe that a great blog is built on the engagement and contributions of its readers. We encourage you to join our community by:
  <ul>
    <li><strong>Subscribing:</strong> Stay updated with our latest posts by subscribing to our newsletter.</li>
    <li><strong>Commenting:</strong> Share your thoughts and engage in meaningful discussions in the comments section of our articles.</li>
    <li><strong>Contributing:</strong> Have a story or expertise to share? Check out our submission guidelines and become a guest writer.</li>
  </ul>
</div>

<?php include '../app/pages/includes/footer.php'; ?>