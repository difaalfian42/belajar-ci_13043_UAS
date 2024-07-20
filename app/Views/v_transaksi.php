<?= $this->extend('layout') ?>
<?= $this->section('content') ?> 

<?php if (session()->getFlashData('success')): ?>
    <div class="alert alert-info alert-dismissible fade show" role="alert">
        <?= session()->getFlashData('success') ?>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
<?php endif; ?>

<?php if (session()->getFlashData('validation')): ?>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <ul>
        <?php foreach (session()->getFlashData('validation') as $error): ?>
            <li><?= $error ?></li>
        <?php endforeach; ?>
        </ul>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
<?php endif; ?>

<a class="btn btn-success" href="<?= base_url() ?>transaksi/download">
    Download Data
</a>

<div class="table-responsive mt-3">
    <table class="table table-striped datatable">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Username</th>
                <th scope="col">Total Harga</th>
                <th scope="col">Alamat</th>
                <th scope="col">Ongkir</th>
                <th scope="col">Status</th>
                <th scope="col">Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($transaksi as $index => $trans): ?>
                <tr>
                    <th scope="row"><?= $index + 1 ?></th>
                    <td><?= $trans['username'] ?></td>
                    <td>IDR <?= number_format($trans['total_harga'], 0, ',', '.') ?></td>
                    <td><?= $trans['alamat'] ?></td>
                    <td>IDR <?= number_format($trans['ongkir'], 0, ',', '.') ?></td>
                    <td><?= $trans['status'] == 0 ? 'Pending' : 'Selesai' ?></td>
                    <td>
                        <form action="<?= base_url('transaksi/ubahStatus/' . $trans['id']) ?>" method="post">
                            <?= csrf_field(); ?>
                            <div class="input-group">
                                <select class="form-select" name="status">
                                    <option value="0" <?= $trans['status'] == 0 ? 'selected' : '' ?>>Pending</option>
                                    <option value="1" <?= $trans['status'] == 1 ? 'selected' : '' ?>>Selesai</option>
                                </select>
                                <button class="btn btn-success" type="submit">Ubah Status</button>
                            </div>
                        </form>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<?= $this->endSection() ?>
