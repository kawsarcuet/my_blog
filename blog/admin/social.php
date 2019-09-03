<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
<?php
    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        $fb = $_POST['facebook'];
        $tw = $_POST['twitter'];
        $ln = $_POST['linkedin'];
        $gp = $_POST['googleplus'];
        $yt = $_POST['youtube'];
        if (empty($fb) || empty($tw) || empty($ln) || empty($gp) || empty($yt)) {
            echo "<span style = 'color : red; font-size : 18px; ' >Your field is empty</span>";
        }
        else{
            $qry = "UPDATE `social`
                    SET `fb` = '$fb',
                        `tw` = '$tw',
                        `ln` = '$ln',
                        `gp` = '$gp',
                        `youtube` = '$yt'
                 WHERE  `id` = '1'";
            $result = $db->update($qry);
            if($result){
                  echo "<span style = 'color: green; font-size: 18px; font-family: arial;'>Updated successfully</span>";
            }
            else{
                 echo "<span style = 'color : red; font-size : 18px; ' > Data is not Updated successfully</span>";
            }
        }
    }
?>
<link rel="stylesheet" type="text/css" href="action.css">
     <div class="grid_10">
      <div class="box round first grid">
                <h2>Update Social Media</h2>
                <div class="block">          
                 <?php 
                        $qry = "SELECT * 
                                FROM `social`";
                     $result = $db->select($qry);
                        if($result){
                            while ($row = $result->fetch_assoc()) {

             ?>     
                 <form action="" method="POST">
                    <table class="form">					
                        <tr>
                            <td>
                                <label>Facebook</label>
                            </td>
                            <td>
                                <input type="text" name="facebook" value="<?php echo $row['fb']; ?>" class="medium" />
                            </td>
                        </tr>
						 <tr>
                            <td>
                                <label>Twitter</label>
                            </td>
                            <td>
                                <input type="text" name="twitter" value="<?php echo $row['tw']; ?>" class="medium" />
                            </td>
                        </tr>
						
						 <tr>
                            <td>
                                <label>LinkedIn</label>
                            </td>
                            <td>
                                <input type="text" name="linkedin" value="<?php echo $row['ln']; ?>" class="medium" />
                            </td>
                        </tr>
						
						 <tr>
                            <td>
                                <label>Google Plus</label>
                            </td>
                            <td>
                                <input type="text" name="googleplus" value="<?php echo $row['gp']; ?>" class="medium" />
                            </td>
                        </tr>
						
                        <tr>
                            <td>
                                <label>youtube</label>
                            </td>
                            <td>
                                <input type="text" name="youtube" value="<?php echo $row['gp']; ?>" class="medium" />
                            </td>
                        </tr>

						 <tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Update" />
                            </td>
                        </tr>
                    </table>
                    </form>
                    <?php } } ?>
                </div>
            </div>
        </div>
  <?php include "inc/footer.php"; ?>