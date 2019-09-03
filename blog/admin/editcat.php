<?php ob_start(); ?>
<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
<?php 
      if (!isset($_GET['catid']) || $_GET['catid'] ==NULL ) {
         header("Location: catlist.php");
      }
      else{
        $id = $_GET['catid'];
      }

?>
<link rel="stylesheet" type="text/css" href="action.css">
        <div class="grid_10">
		
            <div class="box round first grid">
                <h2>Edit Category</h2>
               <div class="block copyblock">
 <?php  
        if ($_SERVER['REQUEST_METHOD'] == 'POST' ) {
            $name = $_POST['name'];
            $name = mysqli_real_escape_string($db->link,$name);
            if (empty($name)) {
                echo "<span style = 'color : red; font-size : 18px; ' >Your field is empty</span>";
            }
            else{
                $qry = "UPDATE `dbl_category`
                        SET `name` = '$name'
                        WHERE `id` = '$id'";
                $result = $db->update($qry);
                if($result){
                    echo "<span style = 'color: green; font-size: 18px; font-family: arial;'>Category Updated successfully</span>";
                }
                else{
                     echo "<span style = 'color : red; font-size : 18px; ' >Category is not Updated successfully</span>";
                }

            }
        }
?>
<?php 
        $qry = "SELECT *
                FROM `dbl_category`
                WHERE `id` = '$id'
                ORDER BY `id` DESC";
        $result = $db->select($qry);
     
          while($row = $result->fetch_assoc()){
              
           
        
 ?>
                 <form action="" method="POST">
                    <table class="form">					
                        <tr>
                            <td>
                                <input type="text" name="name"  value="<?php echo $row['name']; ?>" class="medium" />
                            </td>
                        </tr>
						<tr> 
                            <td>
                                <input type="submit" name="submit" Value="Save" />
                            </td>
                        </tr>
                    </table>
                    </form>
          
<?php  } ?>

                </div>
            </div>
        </div>
 <?php include "inc/footer.php"; ?>
<?php ob_end_flush(); ?>