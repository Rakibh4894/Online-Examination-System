<?php include 'inc/header.php'; ?>
<?php 
	Session::checkSession();
?>

<!-- <div class="main">
<h1>You are done</h1>
	<div class="starttest"> -->

	<h3>Name: <strong><?php echo $_SESSION['name']; ?> </strong></h3>
	<br>
	<h3>Session: 2013-14</h3>
	<br>
	<h4>Email: <?php echo $_SESSION['email']; ?></h4>
	<br>


		<h4>Final Score: 
			<?php 
				if(isset($_SESSION['score'])){
					echo $_SESSION['score'];
				}
				
			?></h4><br>

	
		<h4>Your grade: 
		<?php
			if($_SESSION['score']>=15){
						echo "A";
					}
					elseif($_SESSION['score']>10 && $_SESSION['score']<15){
						echo "B";
					}
					elseif($_SESSION['score']>=5 && $_SESSION['score']<10){
						echo "C";
					}
					elseif($_SESSION['score']>0 && $_SESSION['score']<5){
						echo "D";
					}
					elseif($_SESSION['score']==0){
						echo "F";
					}


					//unset($_SESSION['score']);
		?></h4><br>


		<h4>Comment: 
		<?php
			if($_SESSION['score']>=15){
						echo "Good";
					}
					elseif($_SESSION['score']>10 && $_SESSION['score']<15){
						echo "Average";
					}
					elseif($_SESSION['score']>=5 && $_SESSION['score']<10){
						echo "Below Average";
					}
					elseif($_SESSION['score']>0 && $_SESSION['score']<5){
						echo "Bad";
					}
					elseif($_SESSION['score']==0){
						echo "Fail";
					}


					unset($_SESSION['score']);

		?></h4><br>



		<script type="text/javascript">
			if (window.print) {
				document.write('<form><input type=button name=print value="Print  Result" onClick="window.print()"></form>');
			}
		</script><br>


		<?php 

			
			



		 ?>
		
<!-- 	</div>
</div> -->
<?php include 'inc/footer.php'; ?>