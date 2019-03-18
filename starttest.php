<?php include 'inc/header.php'; ?>
<?php 
$number=0;
  if(isset($_GET['sub'])){
    $sub = $_GET['sub'];
  }
  $totalqspersub = $exm->subwisetotalrandomqs($sub);

?>
<?php 
	Session::checkSession();
	//$question = $exm->getQuestion();
	$question = $exm->getQuestionBySubject($sub,$totalqspersub);
	$rows = [];
	if($question){
	while($row = mysqli_fetch_array($question))
	{
	    $rows[] = $row['quesNo'];
	}
	$total = $exm->getTotalRows();
}

	//for($i=1;$i<count($rows);$i++){
		//$sendos[] = $rows[$i];
	//}
?>

<div class="main">
<h1>Welcome to Online Exam</h1>
	<div class="starttest">
		<h2>Test Your Knowledge</h2>
		<p>This is multiple choice quiz to test your knowledge</p>
		<ul>
			<li><strong>Number of Questions: </strong><?php echo $totalqspersub; ?></li>
			<li><strong>Question Type: </strong>Multiple choice</li>
		</ul>
		<?php// print_r($sendos) ; ?>
		<?php if($question){ ?>
	<a href="test.php?q=<?php echo $rows[0];?>&other=<?php echo implode(".",$rows); ?>">start test</a>
			<?php } else{

				?>
				<a href="#">Question Not Set Yet</a>
              <?php	}  ?>	
	</div>
</div>
<?php include 'inc/footer.php'; ?>