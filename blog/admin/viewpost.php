<?php ob_start(); ?>
<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
<?php 
        if (!isset($_GET['postid']) || $_GET['postid'] == NULL) {
            header("Location: postqueue.php");
        }
        else{
            $pid = $_GET['postid'];
        }
 ?>
<link rel="stylesheet" type="text/css" href="action.css">
 <style type="text/css">
    #accept{
        background: #006600;
        display: block;
        color: #fff;
        padding: 5px;
        border-radius: 5px;
        text-align: center;
    }
    #accept:hover{
        background: #00E600;
        color: #006600;
    }
    #reject{
        background: #FF0000;
        display: block;
        text-align: center;
        color: #fff;
        padding: 5px;
        border-radius: 5px;

    }
    #reject:hover{
        background: #FF8080;
        color: #FF0000;
    }
 </style>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>View Post</h2>
               
                <div class="block">               
                <?php 
                        $qry = "SELECT *
                                FROM `post_queue`
                                WHERE `id` = '$pid'
                                ORDER BY `id` DESC";
                 $postresult = $db->select($qry);
                     if($postresult){
                        while ($postrow = $postresult->fetch_assoc()) {
                                
                 ?>              
                 <form action="" method="" >
                    <table class="form">
                       
                        <tr>
                            <td>
                                <label>Title</label>
                            </td>
                            <td>
                                <input type="text" class="medium" readonly name="title" value="<?php echo $postrow['title']; ?>"  />
                            </td>
                        </tr>
                     
                        <tr>
                            <td>
                                <label>Category</label>
                            </td>
                            <td>
                                <select id="select" readonly name="cat">
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
                                <label>Uploaded Image</label>
                            </td>
                            <td>
                                <img height="200px" weight="200px" alt="uploaded image" src="<?php echo $postrow['image']; ?>"  /><br/>
                                
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding-top: 10px;">
                                <label>Content</label>
                            </td>
                            <td>
                                <textarea name="body" readonly style="height: 400px; width: 800px;"><?php echo $postrow['body']; ?></textarea>
                            </td>
                        </tr>


                        <tr>
                            <td>
                                <label>Tags</label>
                            </td>
                            <td>
                                <input type="text" class="medium" name="tags" readonly value="<?php echo $postrow['tags']; ?>"   />
                            </td>
                        </tr>              
                        <tr>
                            <td>
                                <label>Author</label>
                            </td>
                            <td>
                                <input type="text" class="medium" name="author" readonly value="<?php echo $postrow['author']; ?>"   />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>E-mail</label>
                            </td>
                            <td>
                                <input type="text" class="medium" name="author" readonly value="<?php echo $postrow['email']; ?>"   />
                            </td>
                        </tr>
                           
                        <tr>
                            <td> <a id="accept" href="acceptpost.php?aid=<?php echo $postrow['id']; ?>">Accept</a></td>
                            <td><a id="reject" onclick="return confirm('Do you want to rject this article ?');" href="rejectpost.php?did=<?php echo $postrow['id']; ?>">Reject</a></td>
                        </tr>
                    </table>
                    </form>
                    <?php } } ?>
                </div>
            </div>
        </div>
<?php include "inc/footer.php"; ?>
<?php ob_end_flush();  ?>