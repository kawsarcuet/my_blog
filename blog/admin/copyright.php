<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
<?php 
      if ($_SERVER['REQUEST_METHOD'] == 'POST') {
          $copyright = $_POST['copyright'];
          if (empty($copyright)) {
               echo "<span style = 'color : red; font-size : 18px; ' >Your field is empty</span>";
          }
          else{
                    $qry = "UPDATE `copyright`
                            SET `text`  = '$copyright' 
                            WHERE `id`   = '1'";
                 $result = $db->update($qry);
                 if($result){
                    echo "<span style = 'color: green; font-size: 18px; font-family: arial;'> Updated successfully</span>";
                }
                else{
                     echo "<span style = 'color : red; font-size : 18px; ' >Copyright is not Updated successfully</span>";
                }
          }
      }
?>
<link rel="stylesheet" type="text/css" href="action.css">
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Update Copyright Text</h2>
                <div class="block copyblock"> 
                 <form action="" method="POST">
                    <table class="form">					
                        <tr>
                            <td>
                 <?php 
                      $qry = "SELECT * 
                              FROM `copyright`
                              WHERE `id` = '1'";
                   $result = $db->select($qry);
                      if($result){
                            while($row = $result->fetch_assoc()){
                 ?>
                                <input type="text" value="<?php echo $row['text']; ?>" name="copyright" class="large" />
                <?php } } ?>
                            </td>
                        </tr>
						
						 <tr> 
                            <td>
                                <input type="submit" name="submit" Value="Update" />
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
     <?php include "inc/footer.php"; ?>