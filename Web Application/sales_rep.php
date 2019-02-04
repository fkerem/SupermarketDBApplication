<?php

// depends on database name can be happen error 
// check your Database Name as 4. parameter of this line
$db = mysqli_connect('localhost', 'root', '', 'supermarket');

if($db->connect_errno > 0){
    die('Unable to connect to database [' . $db->connect_error . ']');
}

$sql = 'SELECT E.ssn, E.ename, E.gender, E.salary 
		FROM employees E, sales_rep S
		WHERE E.ssn = S.ssn';
		
		
$sqlDepartment = 'SELECT *	FROM depart_man';

$result = mysqli_query($db,$sql);
$resultDep = mysqli_query($db,$sqlDepartment);
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


<div class="container">
<h1>&nbsp Sales Representatives Information</h1><br>
<div class="col-sm-8">
	
	<table class="table table-striped">
		<thead>
			<tr>
				<th>Social Security Number</th>
				<th>Employee Name</th>
				<th>Gender</th>
				<th>Salary</th>
			</tr>
		</thead>
		<tbody>
			<?php
				while($row = mysqli_fetch_assoc($result)) {
					$ssn = $row['ssn'];
					$ename = $row['ename'];
					$gender = $row['gender'];
					$salary = $row['salary'];
						echo "<tr>	
								<td>$ssn</td>
								<td>$ename</td>
								<td>$gender</td>
								<td>$salary</td>
							</tr>";
				}
			?>
		</tbody>
	</table>
</div>
<div class="col-sm-4">
<h3>Sales Representatives in Departments</h3>
<form action="sRepInDep.php" method="post" class="form-inline">
	<label>Departments:</label>
	<select class="form-control" name="department">
		<?php
			while($row = mysqli_fetch_assoc($resultDep)) {
				$dname = $row['dname'];

				echo "<option value=$dname>$dname</option> \n";
			}
		?>

	</select>


	<input type="submit" class="btn btn-success align-center">
</form>
<br>
<h3>Salary Information</h3>
<a href="avgSalarySRep.php" class="btn btn-danger">Average Salaries</a>
</div>
</div>




</body>
