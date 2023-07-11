<?php 
    $filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/inc/header.php');
	include_once ($filepath.'/../classes/Exam.php');
	$exam = new Exam();
?>
<?php
   if ($_SERVER['REQUEST_METHOD'] == 'POST') {
   	  $addQuestion = $exam->getAddQuestion($_POST);
   }
   // Get Total
   $total = $exam->getTotalRows();
   $next = $total+1;
?>


    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h1 class="mt-5">Add Questions</h1>
               <?php
              if (isset($addQuestion)) {
                echo $addQuestion;}?>
                <br/>
            </div>


            <div class="col-lg-3">
                

            </div>

            <div class="col-lg-6">
                <form action="" method="post" name="tbl_ans">
                    <table>
                        <tr>
                            <td>Question No</td>
                            <td> : </td>
                            <td width="80%"><input class="form-control" readonly type="number" name="quesNo" value="<?php
                                if(isset($next)){
                                    echo $next;
                                }

                                ?>"></td>
                        </tr>
                        <tr>
                            <td>Question</td>
                            <td> : </td>
                            <td width="80%"><input class="form-control" type="text" name="ques" placeholder="Enter Question" required></td>
                        </tr>
                        <tr>
                            <td>Choice 1</td>
                            <td> : </td>
                            <td width="80%"><input class="form-control" type="text" name="ans1" placeholder="Enter choice no 1"></td>
                        </tr>
                        <tr>
                            <td>Choice 2</td>
                            <td> : </td>
                            <td width="80%"><input class="form-control" type="text" name="ans2" placeholder="Enter choice no 2"></td>
                        </tr>
                        <tr>
                            <td>Choice 3</td>
                            <td> : </td>
                            <td width="80%"><input class="form-control" type="text" name="ans3" placeholder="Enter choice no 3"></td>
                        </tr>
                        <tr>
                            <td>Choice 4</td>
                            <td> : </td>
                            <td width="80%"><input class="form-control" type="text" name="ans4" placeholder="Enter choice no 4"></td>
                        </tr>
                        <tr>
                            <td>Correct No</td>
                            <td> : </td>
                            <td width="80%"><input class="form-control" type="number" name="rightAns" min="1" max="4" required="1"></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3"><input type="submit" class="btn btn-success" value="Submit Question"></td>
                        </tr>
                    </table>
                </form>
            </div>

            <div class="col-lg-3">

            </div>
        </div>
    </div>

<?php include '../inc/footer.php'; ?>