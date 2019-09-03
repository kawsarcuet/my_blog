<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
        <div class="grid_10">
		
            <div class="box round first grid">
                <h2>Add New Category</h2>
               <div class="block copyblock">
 <?php  
        if ($_SERVER['REQUEST_METHOD'] == 'POST' ) {
            $name = $_POST['name'];
            $name = mysqli_real_escape_string($db->link,$name);
            if (empty($name)) {
                echo "<span style = 'color : red; font-size : 18px; ' >Your field is empty</span>";
            }
            else{
                $qry = "INSERT INTO `dbl_category` (`name`) 
                        VALUES('$name')";
                $result = $db->insert($qry);
                if($result){
                    echo "<span style = 'color: green; font-size: 18px; font-family: arial;'>Category inserted successfully</span>";
                }
                else{
                     echo "<span style = 'color : red; font-size : 18px; ' >Category is not inserted successfully</span>";
                }

            }
        }
?>
                 <form action="" method="POST">
                    <table class="form">					
                        <tr>
                            <td>
                                <input type="text" name="name"  placeholder="Enter Category Name..." class="medium" />
                            </td>
                        </tr>
						<tr> 
                            <td>
                                <input type="submit" name="submit" Value="Save" />
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
        <?php include "inc/footer.php"; ?>