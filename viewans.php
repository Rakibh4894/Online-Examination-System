<?php include 'inc/header.php'; ?>
<?php
if(isset($_GET['sub_id'])){
    $sub_id = $_GET['sub_id'];
  }
?>
<?php 
	Session::checkSession();
	$total = $exm->subwisetotalrandomqs($sub_id);
?>
<?php 
	
	if($_SERVER['REQUEST_METHOD']=="POST"){
		$process = $pro->processData($_POST);
		
	} 
?>

<div class="main">
<h1>All Questions & Answers: <?php  echo $total; ?></h1>
	<div class="viewans">
		<table> 
		<?php 
			//$getques = $exm->getQusByOrder();
			$getques = $exm->getQusBySubOrder($sub_id);
			if($getques){
				while($question = $getques->fetch_assoc()){
				
			
		?>
			<tr>
				<td colspan="2">
				 <h3>Que <?php echo $question['quesNo']; ?>: <?php echo $question['ques']; ?></h3>
				</td>
			</tr>
			<?php 
				$number = $question['quesNo'];
				$answer = $exm->getAnswer($number);
				if($answer){
					while($result = $answer->fetch_assoc()){ ?>

			<tr>
				<td>
				 <input type="radio" />
				 <?php 
					if($result['rightAns'] == '1'){
						echo "<span style = 'color:blue'>".$result['ans']."</span>";
					}else{
						echo $result['ans'];
					}
				 
				 ?>
				</td>
			</tr>
			<?php } } ?>
		<?php } } ?>	
		</table>
	<a href="starttestbysubject.php">Start Again</a>
</div>
 </div>
<?php include 'inc/footer.php'; ?>