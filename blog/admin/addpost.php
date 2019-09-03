<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
<link rel="stylesheet" type="text/css" href="action.css">
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Add New Post</h2>
                <?php 
                       if ($_SERVER['REQUEST_METHOD'] == "POST") {


                           $title   = mysqli_real_escape_string($db->link,$_POST['title']);
                           $cat     = mysqli_real_escape_string($db->link,$_POST['cat']);
                           $body    = mysqli_real_escape_string($db->link,$_POST['body']);
                           $tags    = mysqli_real_escape_string($db->link,$_POST['tags']);
                           $author  = mysqli_real_escape_string($db->link,$_POST['author']);
                           $email   = mysqli_real_escape_string($db->link,$_POST['email']);

                          $permited  = array('jpg', 'jpeg', 'png', 'gif','pdf','mp4','flv','avi');
                          $file_name = $_FILES['image']['name'];
                          $file_size = $_FILES['image']['size'];
                          $file_temp = $_FILES['image']['tmp_name'];

                         $div            = explode('.', $file_name);
                         $file_ext       = strtolower(end($div));
                         $unique_image   = substr(md5(time()), 0, 10).'.'.$file_ext;
                         $uploaded_image = "upload/".$unique_image;

    if ($title == "" || $cat == "" || $author == "" || $body == "") {
         echo "<span style = 'color : red; font-size : 18px; ' >Your field is empty</span>";
    }
    elseif ($file_size >104856700) {
     echo "<span class='error'>Image Size should be less then 100MB!
     </span>";
    }
/*
    elseif (in_array($file_ext, $permited) === true) {
     
     echo "<span class='error'>You can upload only:-"
     .implode(', ', $permited)."</span>";
     

    } 
*/
    else{
     move_uploaded_file($file_temp, $uploaded_image);
    $query = "INSERT INTO dbl_post(cat,title,body,image,author,email,tags) 
              VALUES('$cat','$title','$body','$uploaded_image','$author','$email','$tags')";
    $inserted_rows = $db->insert($query);
    if ($inserted_rows) {
     echo "<span class='success'>Data Inserted Successfully.
     </span>";
    }
     else {
     echo "<span class='error'>Data Not Inserted !</span>";
    }
 }
}
?>
                <div class="block">               
                 <form action="" method="POST" enctype="multipart/form-data">
                    <table class="form">
                       
                        <tr>
                            <td>
                                <label>Title</label>
                            </td>
                            <td>
                                <input type="text" name="title" placeholder="Enter Post Title..." class="medium" />
                            </td>
                        </tr>
                     
                        <tr>
                            <td>
                                <label>Category</label>
                            </td>
                            <td>
                                <select id="select" name="cat">
                                    <option>Select Category</option>
                                    <?php 
                                          $qry = "SELECT *
                                                  FROM `dbl_category`";
                                      $result  = $db->select($qry);
                                      if($result){
                                            while ($row = $result->fetch_assoc()) {
                                     ?>
                                    <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                                   <?php } } ?>
                                </select>
                            </td>
                        </tr>
                   
                    
                        
                        <tr>
                            <td>
                                <label>Upload Image or screen shoot (if necessary) : </label>
                            </td>
                            <td>
                                <input type="file"  name="image" />
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding-top: 9px;">
                                <label>Content</label>
                            </td>
                            <td>
                                <textarea name="body" class="tinymce"></textarea>
                            </td>
                        </tr>


                        <tr>
                            <td>
                                <label>Tags</label>
                            </td>
                            <td>
                                <input type="text" name="tags" placeholder="Enter Tags..." class="medium" />
                            </td>
                        </tr>
                     

                        <tr>
                            <td>
                                <label>Author</label>
                            </td>
                            <td>
                                <input type="text" name="author" placeholder="Enter Author name..." class="medium" />
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <label>E-mail</label>
                            </td>
                            <td>
                                <input type="text" name="email" value="<?php echo "from admin panel"; ?>" class="medium" />
                            </td>
                        </tr>
                     
						<tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Save" />
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
<!...load tiny MCE...>
    <script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            setupTinyMCE();
            setDatePicker('date-picker');
            $('input[type="checkbox"]').fancybutton();
            $('input[type="radio"]').fancybutton();
        });
    </script>
 <!...load tiny MCE...>
<?php include "inc/footer.php"; ?>
