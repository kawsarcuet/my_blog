<?php ob_start(); ?>
<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
<?php 
        if (!isset($_GET['msgid']) || $_GET['msgid'] == NULL) {
            header("Location: inbox.php");
        }
        else{
            $id = $_GET['msgid'];
        }
 ?>
 <link rel="stylesheet" type="text/css" href="action.css">
        <div class="grid_10">
            <div class="box round first grid">
                <h2>View Message</h2>
                <?php 
                       if (isset($_POST['submit'])) {
                           header("Location: inbox.php");
                        }
                ?>
                <div class="block">               
                 <form action="" method="POST" >
                 <?php  
                        $qry = "SELECT *
                                FROM `dbl_contact`
                                WHERE `id` = $id";
                               
                    $result  = $db->select($qry);
                    if ($result) {
                        while ($row = $result->fetch_assoc()) {

                 ?>
                    <table class="form">
                       
                        <tr>
                            <td>
                                <label>Name : </label>
                            </td>
                            <td>
                                <input type="text" readonly  value="<?php echo $row['firstname'].' '.$row['lastname']; ?>" class="medium" />
                            </td>
                        </tr>
                     
                        <tr>
                            <td>
                                <label>E-mail : </label>
                            </td>
                            <td>
                               <input type="text" readonly  value="<?php echo $row['email'] ; ?>" class="medium" />
                            </td>
                        </tr>
                   
                        <tr>
                            <td style="vertical-align: top; padding-top: 9px;">
                                <label>Message : </label>
                            </td>
                            <td>
                                <textarea readonly style="height: 400px;width: 800px;" ><?php echo $row['message'] ; ?></textarea>
                            </td>
                        </tr>


                        <tr>
                            <td>
                                <label>Date : </label>
                            </td>
                            <td>
                                <input type="text"  readonly value="<?php echo $fm->formatdate($row['date']); ?>" class="medium" />
                            </td>
                        </tr>
                     
						<tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Ok" />
                            </td>
                        </tr>
                    </table>
                    <?php } } ?>
                    </form>
                </div>
            </div>
        </div>
<?php include "inc/footer.php"; ?>
<?php ob_end_flush();  ?>