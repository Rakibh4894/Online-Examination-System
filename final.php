<?php include 'inc/header.php'; ?>
<?php 
	Session::checkSession();
?>
<?php
if(isset($_GET['sub_id'])){
    $id = $_GET['sub_id'];
  }
?>

<div class="main">
<h1>You are done</h1>
	<div class="starttest">
		<a href="result.php">Result</a>
		<a href="viewans.php?sub_id=<?php echo $id; ?>">View Answer</a>
		<a href="starttestbysubject.php">Start Again</a>
	</div>
</div>
<?php include 'inc/footer.php'; ?>