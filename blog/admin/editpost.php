<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
<?php 
      if (!isset($_GET['editid']) || $_GET['editid'] ==NULL ) {
         header("Location: postlist.php");
      }
      else{
        $postid = $_GET['editid'];
      }

?>
<link rel="stylesheet" type="text/css" href="action.css">
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Edit Post</h2>
                <?php 
                       if ($_SERVER['REQUEST_METHOD'] == "POST") {
                           $title = mysqli_real_escape_string($db->link,$_POST['title']);
                           $cat = mysqli_real_escape_string($db->link,$_POST['cat']);
                           $body = mysqli_real_escape_string($db->link,$_POST['body']);
                           $tags = mysqli_real_escape_string($db->link,$_POST['tags']);
                           $author = mysqli_real_escape_string($db->link,$_POST['author']);

    $permited  = array('jpg', 'jpeg', 'png', 'gif');
    $file_name = $_FILES['image']['name'];
    $file_size = $_FILES['image']['size'];
    $file_temp = $_FILES['image']['tmp_name'];

    $div = explode('.', $file_name);
    $file_ext = strtolower(end($div));
    $unique_image = substr(md5(time()), 0, 10).'.'.$file_ext;
    $uploaded_image = "upload/".$unique_image;

    if ($title == "" || $cat == "" || $author == "" || $body == "") {
         echo "<span style = 'color : red; font-size : 18px; ' >Your field is empty</span>";
    }
    else{
    if (!empty($file_name)) {
    
    if ($file_size >1048567) {
                echo "<span class='error'>Image Size should be less then 1MB!
                     </span>";
    } 
    elseif (in_array($file_ext, $permited) === false) {
                echo "<span class='error'>You can upload only:-"
                .implode(', ', $permited)."</span>";
    } 
    else{
        move_uploaded_file($file_temp, $uploaded_image);
        $qry   = "UPDATE `dbl_post`
                  SET
                  `cat` = '$cat',
                `title` = '$title',
                `body`  = '$body',
                `image` = '$uploaded_image',
                `author`= '$author',
                `tags`  = '$tags'
              WHERE `id`= '$postid' ";
           $updated_row = $db->update($qry);
    if ($updated_row) {
                echo "<span class='success'>Data Updated Successfully.
                      </span>";
    }
    else {
                echo "<span class='error'>Data Not Updated !</span>";
    }
 }
}
    else{
                $qry   = "UPDATE `dbl_post`
                  SET
                  `cat` = '$cat',
                `title` = '$title',
                `body`  = '$body',
                `author`= '$author',
                `tags`  = '$tags'
              WHERE `id`= '$postid' ";
           $updated_row = $db->update($qry);
    if ($updated_row) {
                echo "<span class='success'>Data Updated Successfully.
                      </span>";
    }
    else {
                echo "<span class='error'>Data Not Updated !</span>";
    }

    }
}
}
?>
                <div class="block"> 
                <?php 
                        $qry = "SELECT *
                                FROM `dbl_post`
                                WHERE `id` = '$postid'
                                ORDER BY `id` DESC";
                 $postresult = $db->select($qry);
                     if($postresult){
                        while ($postrow = $postresult->fetch_assoc()) {
                                
                 ?>              
                 <form action="" method="POST" enctype="multipart/form-data">
                    <table class="form">
                       
                        <tr>
                            <td>
                                <label>Title</label>
                            </td>
                            <td>
                                <input type="text" name="title" value="<?php echo $postrow['title']; ?>" class="medium" />
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
                                   <option
                                  <?php 
                                        if($postrow['cat'] == $row['id'] ){ ?>
                                            selected="selected"
                                        <?php } ?>
                                  value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                                   <?php } } ?>
                                </select>
                            </td>
                        </tr>
                   
                    
                        
                        <tr>
                            <td>
                                <label>Upload Image</label>
                            </td>
                            <td>
                                <img src="<?php echo $postrow['image']; ?>" height="200px" weight="200px" /><br/>
                                <input type="file" name="image" />
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding-top: 9px;">
                                <label>Content</label>
                            </td>
                            <td>
                                <textarea name="body" class="tinymce"><?php echo $postrow['body']; ?></textarea>
                            </td>
                        </tr>


                        <tr>
                            <td>
                                <label>Tags</label>
                            </td>
                            <td>
                                <input type="text" name="tags" value="<?php echo $postrow['tags']; ?>"  class="medium" />
                            </td>
                        </tr>
                     

                        <tr>
                            <td>
                                <label>Author</label>
                            </td>
                            <td>
                                <input type="text" name="author" value="<?php echo $postrow['author']; ?>"  class="medium" />
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
                    <?php } } ?>
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
