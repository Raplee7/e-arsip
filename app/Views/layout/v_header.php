<body class="hold-transition skin-purple sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="<?= base_url() ?>/template/index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>E-A</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>E-Arsip</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu" style="background-color:#555299;">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<?= base_url('foto/' .session()->get('foto')) ?>" class="user-image" alt="User Image">
              <span class="hidden-xs"><?= session()->get('nama_user')?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
                <li class="user-header">
                  <img src="<?= base_url('foto/' . session()->get('foto')) ?>" class="img-circle" alt="User Image">

                    <p>
                        <?= session()->get('nama_user') ?> - <?php if (session()->get('level') == 1) {
                                                                    echo 'Admin';
                                                                } else {
                                                                    echo 'User';
                                                                } ?>
                        <small><?php echo "" . date("d-m-Y"); ?></small>
                    </p>

                  <!-- <p>
                    <?= session()->get('nama_user')?> - <?php if (session()->get('level') == 1 ) {
                      echo 'Admin';
                    } else {
                      echo 'User';
                    }
                    ?>
                    <small><?= date('h-M-Y')?></small>
                  </p> -->

                </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-right">
                  <a href="<?= base_url('auth/logout') ?>" class="btn btn-default btn-flat">Logout</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- =============================================== -->