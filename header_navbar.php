<!DOCTYPE html>
<html>
<head>
	<title>PHP Car Rental Agency</title>

	<link rel="stylesheet" type="text/css" href="style.css">

	<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g="
            crossorigin="anonymous"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- font -->
	<link href="https://fonts.googleapis.com/css?family=Dancing+Script|Great+Vibes" rel="stylesheet">
</head>
<body>

	

		<h3> Vienna  <?php echo $customerRow['customer_name']; ?>Car Rental Office</h3>

		<nav class="navbar navbar-inverse">
           <div class="container-fluid">
              <div class="navbar-header">
               <a class="navbar-brand" href="">VCR</a>
          </div>
             <ul class="nav navbar-nav">
               <li class="active"><a href="home.php">Home</a></li>
               <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="cars_list.php">Office
             <span class="caret"></span></a>
           <ul class="dropdown-menu">
                 <li><a href="cars_list.php">cars list</a></li>
                 <li><a href="cars_locations.php">cars location</a></li>
           </ul>
          </li>
                <li><a href="logout.php">sign out</a></li>
      
    </ul>
  </div>
</nav>
	
