<?php include 'inc/header.php'; ?>
<?php 
	Session::checkSession();
	if(isset($_GET['q'])){
		$number = (int)$_GET['q'];
		$other = $_GET['other'];
		$aarrays = explode(".",$other);
	}else{
		header("Location:exam.php");
	}
	
	$total = $exm->getTotalRows();
	$question = $exm->getQuesByNum($number);
?>
<?php 
	
	if($_SERVER['REQUEST_METHOD']=="POST"){
		$process = $pro->processData($_POST,$aarrays);
		
	} 
?>
<div class="main">
<h1>Questions</h1>
	<div class="test">
		<form method="post" action="">
		<table> 
			<tr>
				<td colspan="2">
				 <h3>Ques <?php echo $question['quesNo']; ?> :<?php echo $question['ques']; ?></h3>
				</td>
			</tr>
			<?php 
				$answer = $exm->getAnswer($number);
				if($answer){
					while($result = $answer->fetch_assoc()){ ?>

			<tr>
				<td>
				 <input type="radio" name="ans" value="<?php echo $result['id'];?>"/><?php echo $result['ans'];?>
				</td>
			</tr>
			<?php } } ?>
			<tr>
			  <td>
				<input type="submit" name="submit" value="Next Question"/>
				<input type="hidden" name="number" value="<?php echo $number; ?>"/>
			</td>
			</tr>
			
		</table>
	</form>
</div>
 </div>
<?php include 'inc/footer.php'; ?>