<!-- Include Font Awesome -->
<link rel="stylesheet" href="../css/all.min.css">
<link rel="stylesheet" href="css/fontawesome.min.css">

<!-- Sidebar -->
<div class="sidebar">
	<a href="../halaman utama" class="navbar-brand">
		<h2><i class="fas fa-store"></i> atk-store </h2>
	</a>
	<a href="../penjualan" class="btn-sidebar">
		<i class="fas fa-shopping-cart"></i> Penjualan
	</a>
	<?php if ($_SESSION['level'] == "admin") { ?>
		<a href="../produk" class="btn-sidebar">
			<i class="fas fa-box-open"></i> Produk
		</a>
		<a href="../pelanggan" class="btn-sidebar">
			<i class="fas fa-users"></i> Pelanggan
		</a>
		<a href="../petugas" class="btn-sidebar">
			<i class="fas fa-user-tie"></i> Petugas
		</a>
	<?php } ?>
	<a href="../report" class="btn-sidebar">
		<i class="fas fa-chart-bar"></i> Laporan
	</a>

	<a href="../about" class="btn-sidebar">
		<i class="fas fa-info-circle"></i> About
	</a>
	<a href="../logout.php" class="btn-sidebar">
		<i class="fas fa-sign-out-alt"></i> Logout
	</a>
</div>