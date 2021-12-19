<div class="row">
    <div class="col-md-3">
    </div>
    <div class="col-md-6">
        <div class="box box-primary box-solid">
            <div class="box-header with-border">
                <h3 class="box-title">Add Admin</h3>

                <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">

            <?php echo form_open_multipart(''); ?>

            <div class="form-group">
                    <label>Nama User</label>
                    <input name="nama_kategori" class="form-control" placeholder="Nama User">
            </div>

                <div class="form-group">
                    <label>E-Mail</label>
                    <input name="email" class="form-control" placeholder="E-Mail">
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input name="password" class="form-control" placeholder="Password">
                </div>

                <div class="form-group">
                    <label>Level</label>
                    <select name="level" class="form-control">
                        <option value="">--Pilih Level--</option>
                        <option value="1">Admin</option>
                        <option value="2">User</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Dep</label>
                    <select name="id_dep" class="form-control">
                        <option value="">--Pilih Departemen--</option>
                        <?php foreach ($dep as $key => $value) { ?>
                            <option value="<?= $value ['id_dep'] ?>"><?= $value ['nama_dep'] ?></option>
                        <?php } ?>
                        
                    </select>
                </div>

                <div class="form-group">
                    <label>Foto</label>
                    <input type="file" name="foto" class="form-control">
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                    <a href="<?= base_url('user') ?>" class="btn btn-success">Kembali</a>
                </div>

            <?php echo form_close() ?>
                
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>

    <div class="col-md-3">
    </div>
</div>