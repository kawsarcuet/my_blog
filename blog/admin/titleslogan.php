<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>        
<?php
        if ($_SERVER['REQUEST_METHOD'] == "POST") {
                $title = $_POST['title'];
                $slogan = $_POST['slogan'];
                if (empty($title) || empty($slogan)) {
                    echo "<span style = 'color : red; font-size : 18px; ' >Your field is empty</span>";
                }
                else{
                    $qry = "UPDATE `title_slogan`
                            SET `title`  = '$title', `slogan` = '$slogan'
                            WHERE `id`   = '1'";
                 $result = $db->update($qry);
                 if($result){
                    echo "<span style = 'color: green; font-size: 18px; font-family: arial;'> Updated successfully</span>";
                }
                else{
                     echo "<span style = 'color : red; font-size : 18px; ' >Title Slogan is not Updated successfully</span>";
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
                <h2>Update Site Title and Description</h2>
                <?php 
                      $qry = "SELECT * 
                              FROM `title_slogan`
                              WHERE `id` = '1'";
                      $result = $db->select($qry);
                      if($result){
                            while($row = $result->fetch_assoc()){
                 ?>
                <div class="block sloginblock">  
                <div class="leftside">         
                 <form action="" method="POST">
                    <table class="form">					
                        <tr>
                            <td>
                                <label>Website Title</label>
                            </td>
                            <td>
                                <input type="text" value="<?php echo $row['title']; ?>"  name="title" class="medium" />
                            </td>
                        </tr>
						 <tr>
                            <td>
                                <label>Website Slogan</label>
                            </td>
                            <td>
                                <input type="text" value="<?php echo $row['slogan']; ?>" name="slogan" class="medium" />
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
                        <img src="<?php echo $row['logo']; ?>" alt="logo">
                    </div>
                </div>
                  <?php } } ?> 
            </div>
        </div>
<?php include "inc/footer.php"; ?>