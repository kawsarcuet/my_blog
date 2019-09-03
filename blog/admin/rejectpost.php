<?php ob_start(); ?>
<?php include "../lib/Database.php"; ?>
<?php include "../helpers/format.php"; ?>
<?php 
    $db = new Database();
    $fm = new format();
?>
 <?php
      if (!isset($_GET['did']) || $_GET['did'] ==NULL ) {
             header("Location: postqueue.php");
      }
      else{
          $delid = $_GET['did'];
            $qry = "SELECT * 
                    FROM `post_queue`
                    WHERE `id` = '$delid'";
        $result  = $db->select($qry);
        if ($result) {
            while ($row = $result->fetch_assoc()) {
                $delimg = $row['image'];
                if ($delimg) {
                    unlink($delimg);
                }
            }
        }
    
        $sql = "DELETE FROM `post_queue`
                WHERE `id` = '$delid'";
        $result = $db->delete($sql);
        if ($result) {
            echo "<script>alert('Data rejected  successfully');</script>";
            header("Location: postqueue.php");
        }
        else{
            echo "<script>alert('Data is not rejected  successfully');</script>";
            header("Location: postqueue.php");
        }
      }
     
?>
<?php ob_end_flush(); ?>