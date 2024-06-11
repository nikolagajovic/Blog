<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <title>Home - <?= APP_NAME ?></title>

  <link href="<?= ROOT ?>/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <style>
    .bi {
      vertical-align: -.125em;
      fill: currentColor;
    }
  </style>

  <!-- Custom styles for this template -->
  <link href="<?= ROOT ?>/assets/css/headers.css" rel="stylesheet">
</head>

<body>

  <header class="p-3 border-bottom">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">


        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="<?= ROOT ?>" class="nav-link px-2 <?= $url[0] == 'home' ? 'link-primary' : 'link-dark' ?>">Home</a></li>
          <li><a href="<?= ROOT ?>/blog" class="nav-link px-2  <?= $url[0] == 'blog' ? 'link-primary' : 'link-dark' ?>">Blog</a></li>
          <li>
            <span class="nav-link px-2 link-dark dropdown text-end">
              <a href="#" class="d-block <?= $url[0] == 'category' ? 'link-primary' : 'link-dark' ?> text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                Category
              </a>
              <ul class="dropdown-menu text-small">

                <?php

                $query = "select * from categories order by id desc";
                $categories = query($query);
                ?>
                <?php if (!empty($categories)) : ?>
                  <?php foreach ($categories as $cat) : ?>
                    <li><a class="dropdown-item" href="<?= ROOT ?>/category/<?= $cat['slug'] ?>"><?= $cat['category'] ?></a></li>
                  <?php endforeach; ?>
                <?php endif; ?>



              </ul>
            </span>
          </li>
        </ul>

        <form action="<?= ROOT ?>/search" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
          <div class="input-group ">
            <input value="<?= $_GET['find'] ?? '' ?>" name="find" type="search" class="form-control" placeholder="Search..." aria-label="Search">
            <button class="btn btn-primary">Find</button>
          </div>
        </form>

        <?php if (!logged_in()) : ?>
          <a class="btn btn-sm btn-outline-secondary" href="<?= ROOT ?>/login" class="nav-link p-0 text-muted">Sign up</a>
        <?php endif; ?>

        <?php if (logged_in()) : ?>
          <div class="dropdown text-end">
            <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
              <i>Hello <?= user('username') ?></i>
            </a>
            <ul class="dropdown-menu text-small">
              <li><a class="dropdown-item" href="<?= ROOT ?>/admin">Profile</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="<?= ROOT ?>/logout">Sign out</a></li>
            </ul>
          </div>
        <?php endif; ?>
      </div>
    </div>
  </header>



  <main class="p-2">