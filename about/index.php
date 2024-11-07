<?php
session_start();
if (!isset($_SESSION['username']) && !isset($_SESSION['password'])) {
    ?>
    <meta http-equiv="refresh" content="0;url=../login.php">
    <?php
} else {
    ?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About</title>
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../styleMe.css">
        <style>
            body {
                background-color: #f8f9fa;
            }

            main {
                padding: 40px 20px;
                text-align: center;
            }

            main h2 {
                font-size: 2rem;
                color: #343a40;
                margin-bottom: 30px;
            }

            .card {
                border: none;
                border-radius: 8px;
                box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
                transition: all 0.2s ease;
            }

            .card:hover {
                transform: translateY(-5px);
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            }

            .card-header {
                background-color: #55d8f2;
                color: white;
                border-radius: 8px 8px 0 0;
                padding: 15px;
                font-size: 1.2rem;
                font-weight: 600;
                text-align: center;
            }

            .card-body {
                padding: 20px;
                text-align: center;
            }

            .card-body img {
                border-radius: 50%;
                width: 100px;
                height: 100px;
                object-fit: cover;
                margin-bottom: 15px;
            }

            .card-body p {
                margin: 0;
                font-size: 1rem;
                color: #6c757d;
            }

            .container {
                max-width: 1200px;
                margin: 0 auto;
            }

            .row {
                display: flex;
                justify-content: center;
            }

            @media (max-width: 768px) {
                .card-body {
                    text-align: center;
                }

                .card-body img {
                    margin-bottom: 10px;
                }
            }
        </style>
    </head>

    <body>
        <?php include "../sidebar.php" ?>
        <main>
            <h2>Aplikasi Ini Dibuat Oleh</h2>
            <div class="container">
                <div class="row g-4">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-header">
                                Ramzi Musthofa
                            </div>
                            <div class="card-body">
                                <img src="../foto/ramzi.jpg" alt="Ramzi">
                                <p>12 RPL 3</p>
                                <p>SMKN 1 KADIPATEN</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-header">
                                Muhamad Ripaldi
                            </div>
                            <div class="card-body">
                                <img src="../foto/ripal.jpg" alt="Ripaldi">
                                <p> 12 RPL 3</p>
                                <p>SMKN 1 KADIPATEN</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-header">
                                Agung Setiadi
                            </div>
                            <div class="card-body">
                                <img src="../foto/agungs.jpg" alt="agungs">
                                <p> 12 RPL 3</p>
                                <p>SMKN 1 KADIPATEN</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-header">
                                Rizma Fauziah
                            </div>
                            <div class="card-body">
                                <img src="../foto/rizma.jpg" alt="Rizma">
                                <p>12 RPL 3</p>
                                <p>SMKN 1 KADIPATEN</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-header">
                                Wanda Aprilia Hidayat
                            </div>
                            <div class="card-body">
                                <img src="../foto/wanda.jpg" alt="Wanda">
                                <p> 12 RPL 3</p>
                                <p>SMKN 1 KADIPATEN</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </main>
        <script src="../bootstrap/js/bootstrap.min.js"></script>


    </body>
    <?php include "../footer.php" ?>

    </html>
<?php } ?>