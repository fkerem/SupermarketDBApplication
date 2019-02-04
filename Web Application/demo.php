<?php

// depends on database name can be happen error 
// check your Database Name as 4. parameter of this line
$db = mysqli_connect('localhost', 'root', '', 'supermarket');

if($db->connect_errno > 0){
    die('Unable to connect to database [' . $db->connect_error . ']');
}

$sql = 'SELECT *  FROM employees';
$result = mysqli_query($db,$sql);
?>
<head>
  <title>CS-306 Supermarket</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<div class="container">
<h1>This table show us employees information from Supermarket Database.</h1><br>
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

</body>
