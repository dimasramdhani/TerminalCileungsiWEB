<?php $__env->startSection('content'); ?>
    <!-- Main Section -->
    <section class="main-section">
        <!-- Add Your Content Inside -->
        <div class="content">
            <!-- Remove This Before You Start -->
            <h1>Edit Data Keberangkatan</h1>
            <hr>
            <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $datas): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <form action="<?php echo e(route('kontak.update', $datas->id)); ?>" method="post">
                <?php echo e(csrf_field()); ?>

                <?php echo e(method_field('PUT')); ?>

                <div class="form-group">
                    <label for="nama">TUJUAN:</label>
                    <input type="text" class="form-control" id="usr" name="nama" value="<?php echo e($datas->nama); ?>">
                </div>
                <div class="form-group">
                    <label for="email">KEBERANGKATAN:</label>
                    <input type="text" class="form-control" id="email" name="email" value="<?php echo e($datas->email); ?>">
                </div>
               
                <div class="form-group">
                    <label for="alamat">PERUSAHAAN BIS:</label>
                    <textarea class="form-control" id="alamat" name="alamat"><?php echo e($datas->alamat); ?></textarea>
                </div>

                 <div class="form-group">
                    <label for="tarif">TARIF:</label>
                    <textarea class="form-control" id="tarif" name="tarif"><?php echo e($datas->tarif); ?></textarea>
                </div>

                 <div class="form-group">
                    <label for="kuota">NOMOR KENDARAAN:</label>
                    <textarea class="form-control" id="kuota" name="kuota"><?php echo e($datas->kuota); ?></textarea>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-md btn-primary">Submit</button>
                    <button type="reset" class="btn btn-md btn-danger">Cancel</button>
                </div>
            </form>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
        <!-- /.content -->
    </section>
    <!-- /.main-section -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('base', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>