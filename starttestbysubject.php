<?php include 'inc/header.php'; ?>
<?php 
	Session::checkSession();
	$question = $exm->getQuestion();
	$total = $exm->getTotalRows();
?>
<?php
	if($_SERVER['REQUEST_METHOD']=='POST'){
		$sub = $_POST['sub'];
		echo "<script>window.location='starttest.php?sub=".$sub."'</script>";
	}
?>
<div class="main">
<h1>Welcome to Online Exam</h1>

	 <form action="" method="post" enctype="multipart/form-data">
        <table class="form">
           <tr>
              
            <tr>
                <td>
                    <select id="select" name="sub">
                    <option>Select Subject</option>
                      <option value="1">C</option>
                      <option value="2">C++</option>
                      <option value="3">C#</option>
                      <option value="4">Java</option>
                      <option value="4">PHP</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="submit" Value="Go" />
                </td>
            </tr>
        </table>
        </form>
</div>
<?php include 'inc/footer.php'; ?>