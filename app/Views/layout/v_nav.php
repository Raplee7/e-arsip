 <!-- Left side column. contains the sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<?= base_url('foto/' .session()->get('foto')) ?>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?= session()->get('nama_user')?></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>

        <li>
          <a href="<?= base_url('Home') ?>">
            <i class="fa fa-home " style="color:#555299"></i> <span>Home</span>
          </a>
        </li>
        
        <li>
          <a href="<?= base_url('Arsip') ?>">
            <i class="fa fa-file-pdf-o" style="color:red"></i> <span>Arsip</span>
          </a>
        </li>

        <li>
          <a href="<?= base_url('Kategori') ?>">
            <i class="fa fa-cubes" style="color:#00c0ef"></i> <span>Kategori</span>
          </a>
        </li>

        <li>
          <a href="<?= base_url('dep') ?>">
            <i class="fa fa-building-o" style="color:#f39c12"></i> <span>Departemen</span>
          </a>
        </li>

        <li>
          <a href="<?= base_url('User') ?>">
            <i class="fa fa-users " style="color:#00a65a"></i> <span>User</span>
          </a>
        </li>


      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <?= $title ?>
      </h1>
      <!-- <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol> -->
    </section>


    <!-- Main content -->
    <section class="content">