<?php
session_start();
if (!isset($_SESSION['username']) && !isset($_SESSION['password'])) {
    ?>
    <meta http-equiv="refresh" content="0;url=../login.php">
    <?php
}
?>
<?php
include "../config.php";
$tahun = date('Y');
$sql = "SELECT MONTH(tanggal) AS bulan, COUNT(*) AS count FROM penjualan WHERE YEAR(tanggal) = $tahun GROUP BY bulan";
$result = mysqli_query($koneksi, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $penjualan[] = ['bulan' => $row['bulan'], 'count' => $row['count']];
}
$json_penjualan = json_encode($penjualan);

$sql = "SELECT SUM(jumlah) AS jumlah, nama_produk FROM `detail_penjualan` GROUP BY nama_produk";
$result = mysqli_query($koneksi, $sql);
while ($row = mysqli_fetch_assoc($result)) {
    $produk[] = ['nama_produk' => $row['nama_produk'], 'jumlah' => $row['jumlah']];
}
$json_produk = json_encode($produk);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../styleMe.css">
    <style>
        body {
            background-color: #f8f9fa;
        }

        main {
            margin-left: 220px;
            padding: 20px;
        }

        .chart {
            width: 100%;
            padding-top: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
        }

        hr {
            border: 1px solid #007bff;
            margin: 20px 0;
        }

        /* Styling untuk daftar label di bawah chart donat */
        .chart-labels {
            margin-top: 20px;
            text-align: left;
        }

        .chart-labels li {
            list-style: none;
            margin-bottom: 5px;
        }

        .chart-labels li span {
            display: inline-block;
            width: 12px;
            height: 12px;
            margin-right: 10px;
            vertical-align: middle;
        }
    </style>
</head>

<body>
    <?php include "../sidebar.php"; ?>
    <main>
        <div class="container">
            <center>
                <h2>SELAMAT DATANG</h2>
                <h3><?= $_SESSION['nama_petugas'] ?></h3>
                <h4>Anda Login Sebagai <?= $_SESSION['level'] ?></h4>
                <hr>
            </center>

            <div class="row">
                <div class="col-sm-8">
                    <div class="chart">
                        <canvas id="myChart"></canvas>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="chart">
                        <canvas id="Charts"></canvas>
                        <!-- Tempat untuk menampilkan label dari chart donat -->
                        <ul class="chart-labels" id="chartLabels"></ul>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <?php include "../footer.php" ?>
    <script src="../chart/chart.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script>
        const grafik = <?= $json_penjualan; ?>;
        const ctx = document.getElementById('myChart').getContext('2d');
        const bulan = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];

        const myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: grafik.map((item) => bulan[item.bulan - 1]),
                datasets: [{
                    label: 'Jumlah Transaksi',
                    data: grafik.map(item => item.count),
                    backgroundColor: 'rgba(0, 123, 255, 0.3)',
                    borderColor: 'rgba(0, 123, 255, 0.3)',
                    borderWidth: 0,
                }]
            },
            options: {
                animation: {
                    duration: 1500,
                    easing: 'easeOutBounce'
                },
                scales: {
                    x: {
                        grid: {
                            display: false
                        }
                    },
                    y: {
                        beginAtZero: true,
                        grid: {
                            color: 'rgba(200, 200, 200, 0.3)'
                        },
                        ticks: {
                            precision: 0
                        }
                    }
                },
                plugins: {
                    legend: {
                        display: false
                    },
                    tooltip: {
                        enabled: true,
                        backgroundColor: 'rgba(0, 123, 255, 0.7)',
                        titleFont: {
                            family: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
                            size: 12
                        },
                        bodyFont: {
                            family: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
                            size: 12
                        }
                    }
                }
            }
        });

        const charts = document.getElementById('Charts').getContext('2d');
        const grafiks = <?= $json_produk; ?>;
        const chartColors = [
            'rgba(255, 99, 132, 0.3)',
            'rgba(54, 162, 235, 0.3)',
            'rgba(255, 206, 86, 0.3)',
            'rgba(75, 192, 192, 0.3)',
            'rgba(153, 102, 255, 0.3)',
            'rgba(255, 159, 64, 0.3)',
            'rgba(255, 99, 71, 0.3)',
            'rgba(100, 149, 237, 0.3)',
            'rgba(0, 255, 127, 0.3)',
            'rgba(218, 112, 214, 0.3)',
            'rgba(127, 255, 212, 0.3)',
            'rgba(189, 183, 107, 0.3)',
            'rgba(255, 140, 0, 0.3)',
            'rgba(106, 90, 205, 0.3)',
            'rgba(70, 130, 180, 0.3)',
            'rgba(240, 128, 128, 0.3)',
            'rgba(0, 191, 255, 0.3)',
            'rgba(46, 139, 87, 0.3)',
            'rgba(123, 104, 238, 0.3)',
            'rgba(173, 216, 230, 0.3)',
            'rgba(250, 128, 114, 0.3)',
            'rgba(0, 255, 255, 0.3)',
            'rgba(244, 164, 96, 0.3)',
            'rgba(128, 0, 128, 0.3)',
            'rgba(60, 179, 113, 0.3)',
            'rgba(255, 222, 173, 0.3)',
            'rgba(255, 69, 0, 0.3)',
            'rgba(72, 61, 139, 0.3)',
            'rgba(32, 178, 170, 0.3)',
            'rgba(210, 105, 30, 0.3)',

        ];

        new Chart(charts, {
            type: 'doughnut',
            data: {
                labels: grafiks.map((item) => item.nama_produk),
                datasets: [{
                    label: 'Jumlah Terjual',
                    data: grafiks.map(item => item.jumlah),
                    backgroundColor: chartColors,
                    borderWidth: 0
                }]
            },
            options: {
                responsive: true,
                animation: {
                    duration: 2000,
                    easing: 'easeInOutCubic',
                },
                plugins: {
                    legend: {
                        display: false
                    },
                    tooltip: {
                        backgroundColor: 'rgba(0, 0, 0, 0.7)',
                        titleFont: {
                            family: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
                            size: 12
                        },
                        bodyFont: {
                            family: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
                            size: 12
                        }
                    }
                }
            }
        });

        // Menampilkan label di bawah chart donat
        const chartLabelsContainer = document.getElementById('chartLabels');
        grafiks.forEach((item, index) => {
            const labelItem = document.createElement('li');
            labelItem.innerHTML = `<span style="background-color: ${chartColors[index]};"></span>${item.nama_produk}: ${item.jumlah}`;
            chartLabelsContainer.appendChild(labelItem);
        });

    </script>

</body>

</html>