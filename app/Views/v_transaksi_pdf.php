<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaksi</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h2>Data Transaksi</h2>
    <table>
        <thead>
            <tr>
                <th>#</th>
                <th>Username</th>
                <th>Total Harga</th>
                <th>Alamat</th>
                <th>Ongkir</th>
                <th>Status</th>
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
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>
