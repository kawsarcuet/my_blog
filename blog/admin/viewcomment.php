<?php ob_start(); ?>
<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
<?php 
        if (!isset($_GET['commentid']) || $_GET['commentid'] == NULL) {
            header("Location: commentlist.php");
        }
        else{
            $commentid = $_GET['commentid'];
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
                                FROM `dbl_comment`
                                WHERE `id` = '$commentid'";
                 $postresult = $db->select($qry);
                     if($postresult){
                        while ($postrow = $postresult->fetch_assoc()) {
                                
                 ?>              
                 <form action="" method="" >
                    <table class="form">
                        <tr>
                            <td>
                                <label>Name</label>
                            </td>
                            <td>
                                <input type="text" class="medium" readonly name="title" value="<?php echo $postrow['name']; ?>"  />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Tag</label>
                            </td>
                            <td>
                                <input type="text" class="medium" name="tags" readonly value="<?php echo $postrow['tag']; ?>"   />
                            </td>
                        </tr>  
                        <tr>
                            <td style="vertical-align: top; padding-top: 10px;">
                                <label>Comment</label>
                            </td>
                            <td>
                                <textarea name="body" readonly style="height: 400px; width: 800px;"><?php echo $postrow['comment']; ?></textarea>
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
                            <td> <a id="accept" href="postlist.php">Ok</a></td>
                            <td><a id="reject" onclick="return confirm('Do you want to rject this article ?');" href="rejectcomment.php?rejectid=<?php echo $postrow['id']; ?>">Reject</a></td>
                        </tr>
                    </table>
                    </form>
                    <?php } } ?>
                </div>
            </div>
        </div>
<?php include "inc/footer.php"; ?>
<?php ob_end_flush();  ?>