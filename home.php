<?php  
	ob_start();
	session_start();

	require_once 'db_connection.php';



	$res=mysqli_query($conn, "SELECT * FROM customer WHERE customer_id=".$_SESSION['customer']);

	

	$sql = "SELECT * FROM car";
	
	$result = mysqli_query($conn, $sql);

	include_once 'header_navbar.php'
?>
		<!-- MAIN (Center website) -->

	<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
	* {
    box-sizing: border-box;
	}

	body {
	background-image: url('');
    background-color: rgb(230, 242, 255);
    padding: 20px;
    font-family: Arial;
	}
	
	h1 {
    font-size: 50px;
    word-break: break-all;
	}
	
	</style>
	</head>
	<body>
	


	<hr>

	<div class="content">
	  <img src="img/auto.jpg" alt="auto" style="width:100%">
	
	</div>

	
	<?php include_once 'footer.php' ?>
</body>
</html>

<?php ob_end_flush(); ?>