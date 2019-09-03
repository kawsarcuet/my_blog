<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>        
<?php
        if ($_SERVER['REQUEST_METHOD'] == "POST") {
                $information = mysqli_real_escape_string($db->link,$_POST['credit']);
                     $file_name = $_FILES['profile']['name'];
                     $file_size = $_FILES['profile']['size'];
                     $file_temp = $_FILES['profile']['tmp_name'];

                     $uploaded_image = "upload/".$file_name;

                if (empty($information)) {
                    echo "<span style = 'color : red; font-size : 18px; ' >Your field is empty</span>";
                }
                else{
                    move_uploaded_file($file_temp, $uploaded_image);
                    $qry = "UPDATE `credit`
                            SET 
                            `image`  = '$uploaded_image', 
                            `information` = '$information'
                            WHERE `id`   = '1'";
                 $result = $db->update($qry);
                 if($result){
                    echo "<span style = 'color: green; font-size: 18px; font-family: arial;'> Updated successfully</span>";
                }
                else{
                    echo "<span style = 'color : red; font-size : 18px; ' >Description is not Updated successfully</span>";
                }
                }
        }
?>
<link rel="stylesheet" type="text/css" href="action.css">
<style type="text/css">
    .leftside{
        float: left;
        width: 70%;
    }
    .rightside{
        float: right;
        width: 20%;
    }
    .rightside img{
        height: 160px;
        width: 160px;
    }
</style>
<div class="grid_10">
            <div class="box round first grid">
                <h2>Update Our Information</h2>
                <?php 
                      $qry = "SELECT * 
                              FROM `credit`
                              WHERE `id` = '1'";
                      $result = $db->select($qry);
                      if($result){
                            while($row = $result->fetch_assoc()){
                 ?>
                <div class="block sloginblock">  
                <div class="leftside">         
                 <form action="" method="POST" enctype="multipart/form-data">
                    <table class="form">					
                        <tr>
                            <td>
                                <label>Profile Picture</label>
                            </td>
                            <td>
                               <input type="file" class="medium" name="profile" />
                            </td>
                        </tr>
						 <tr>
                            <td>
                                <label>About Us</label>
                            </td>
                            <td>
                                <textarea name="credit" style='height: 240px; width: 550px; font-size: 18px;' ><?php echo $row['information']; ?></textarea>
                            </td>
                        </tr>
						 
			
						 <tr>
                            <td>
                            </td>
                            <td>
                                <input type="submit" name="submit" Value="Update" />
                            </td>
                        </tr>
                    </table>
                    </form>
                    </div>   
                    <div class="rightside">
                        <img src="<?php echo $row['image']; ?>" alt="logo">
                    </div>
                </div>
                  <?php } } ?> 
            </div>
        </div>
<?php include "inc/footer.php"; ?>