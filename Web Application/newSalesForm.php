<?php

// depends on database name can be happen error 
// check your Database Name as 4. parameter of this line
$db = mysqli_connect('localhost', 'root', '', 'supermarket');

if($db->connect_errno > 0){
    die('Unable to connect to database [' . $db->connect_error . ']');
}

$sqlCustomer = "SELECT * FROM customer ORDER BY cname";
$customerResult = mysqli_query($db, $sqlCustomer);

$sqlProduct = "SELECT * FROM product_stores_supply ORDER BY pname";
$productResult = mysqli_query($db, $sqlProduct);
?>


<head>
  <title>SUpermarket</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="index.html"><img src="logo1.png" style=""></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	
   
      <ul class="nav navbar-nav navbar-right" style="padding-top: 20px;padding-right: 20px;
		font-size: 20px;
		color: #0000cc;
		letter-spacing: 5px;
		font-family: Montserrat, sans-serif;">
		<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Employees<span class="caret"></span></a>
          <ul class="dropdown-menu" style="letter-spacing: 1px;">
            <li><a href="managers.php">Managers</a></li>
            <li><a href="sales_rep.php">Sales Representatives</a></li>
          </ul>
        </li>
		<li><a href="departments.php">Departments<span class="sr-only">(current)</span></a></li>
        <li><a href="customer.php">Customers</a></li>
        <li><a href="suppliers.php">Suppliers</a></li>
		<a href="newSalesForm.php" class="btn btn-default navbar-btn btn-success">New Sale</a>

        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

	<div class="container-fluid">
        <div class="row">
			<div class="col-sm-3">
			</div>
			<div class="col-sm-6">
                <h1>New Sale</h1>
                <form action="newSales.php" method="post" class="form-horizontal">
				<div class="form-group form-group-lg">
					<label class="control-label" for="formGroupInputLarge">Customer</label>
					<select name="customers" class="col-sm-10 form-control" >
						<?php
						while($row = mysqli_fetch_assoc($customerResult)) {
							$cid = $row['cid'];
							$name = $row['cname'];

							echo "<option value=$cid>$cid - $name</option> \n";
						}
						?>

					</select><br>
				</div>
				<div class="form-group form-group-lg">

					<label class="control-label" for="formGroupInputLarge">Products</label>
					<select name="products" class="col-sm-10 form-control" >
						<?php
						while($row = mysqli_fetch_assoc($productResult)) {
							$pid = $row['pid'];
							$pname = $row['pname'];

							echo "<option value=$pid>$pid - $pname</option> \n";
						}
						?>
					</select><br>
				</div>
					<input type="submit" class="btn btn-success align-center btn-lg">
                </form>
				<br>

            </div>
			<div class="col-sm-3">
			</div>
        </div>
    </div>
	

</body>
