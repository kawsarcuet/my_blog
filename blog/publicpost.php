<!DOCTYPE html>
<html>
<head>
	<title>CoderKnight</title>
	<link rel="stylesheet" href="fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php include "inc/header.php"; ?>
<?php
 	  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
 	  		    $title  	= $_POST['title'];
 	  		    $category   = $_POST['category'];
 	  		    $article    = $_POST['article'];
 	  			
 	  		   	$tags   	= $_POST['tags'];
 	  			$author     = $_POST['author'];
 	  			$email 		= $_POST['email'];

 	  			
 	  			 $title 	 = $fm->validation($title);
 	  			 $category   = $fm->validation($category);
 	  			 $article 	 = $fm->validation($article);
 	  			 
 	  			 $tags       = $fm->validation($tags);
 	  			 $author     = $fm->validation($author);
 	  			 $email      = $fm->validation($email);

 	  			 
 	  			 $title       = mysqli_real_escape_string($db->link,$title);
 	  			 $category    = mysqli_real_escape_string($db->link,$category);
 	  			 $article  	  = mysqli_real_escape_string($db->link,$article);
 	  			
 	  			 $tags        = mysqli_real_escape_string($db->link,$tags);
 	  			 $author      = mysqli_real_escape_string($db->link,$author);
 	  			 $email       = mysqli_real_escape_string($db->link,$email);


  			       $permited  = array('jpg', 'jpeg', 'png', 'gif','pdf','mp4','avi','flv');
  			       $file_name = $_FILES['file']['name'];
                   $file_size = $_FILES['file']['size'];
   			       $file_temp = $_FILES['file']['tmp_name'];

 			   $div 	       = explode('.', $file_name);
 			   $file_ext       = strtolower(end($div));
  			   $unique_image   = substr(md5(time()), 0, 10).'.'.$file_ext;
 			   $uploaded_image = "upload/".$unique_image;


 	  			 	$error = "";
 	  			 if (empty($title)) {
 	  			 	$error = "Title field is empty...!";
 	  			 }
 	  			 elseif (empty($category)) {
 	  			 	$error = "Category field is empty...!";
 	  			 }
 	  			 elseif (empty($article)) {
 	  			 	$error = "Article field is empty ...!";
 	  			 }
 	  			 elseif (empty($author)) {
 	  			 	$error = "Author field is empty ...!";
 	  			 }
 	  			 elseif (!filter_var($email,FILTER_VALIDATE_EMAIL)) {
 	  			 	$error = "Invalid E-mail address ...!";
 	  			 }
 	  			 elseif ($file_size >104856700) {
  				    echo "<span class='error'>Image Size should be less then 100MB!</span>";
   				 } 
   /*
    			 elseif (in_array($file_ext, $permited) === false) {
     				echo "<span class='error'>You can upload only:-".implode(', ', $permited)."</span>";
   				 }

   	*/
   				 else{
 				    move_uploaded_file($file_temp, "admin/".$uploaded_image);
 	  			 	$qry = "INSERT INTO `post_queue`(`cat`,`title`,`body`,`image`,`author`,`tags`,`email`)
 	  			 			VALUES('$category','$title','$article','$uploaded_image','$author','$tags','$email')";
 	  			 $result = $db->insert($qry);
 	  			 if($result){
 	  			 	$msg = "Your article posted successfully";
 	  			 }
 	  			 else{
 	  			    $error  = "article is not posted";
 	  			 }
 	  	}	  			
 }
?>

	<div class="contentsection templete clear">
		<div class="maincontent clear">
	 		<div class="about">
			<h2>Leave a post</h2>
			<?php 
					if (isset($error)) {
						echo "<span style='color: red;font-size:18px;font-weight: bold;'>$error</span>";
					}
					if (isset($msg)) {
						echo "<span style='color: green;font-size:18px;font-weight: bold;'>$msg</span>";
					}
			 ?>
			<form action="" method="POST" enctype="multipart/form-data" >
			<table>
				<tr>
					<td>Post Title : </td>
					<td><input type="text" name="title" placeholder="Enter Your post title"></td>
				</tr>
                       <tr>
                            <td>
                                <label>Category</label>
                            </td>
                            <td>
                                <select  name="category">
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
					<td>Article : </td>
					<td>
					<textarea name="article"></textarea>
					</td>
				</tr>
				<tr>
					<td>Screen Shoot (if necessary) : </td>
					<td><input type="file" name="file" /></td>
				</tr>
				<tr>
					<td>Tags (if necessary) : </td>
					<td><input type="text" name="tags" placeholder="Tags "></td>
				</tr>
				<tr>
					<td>Author : </td>
					<td><input type="text" name="author" placeholder="Enter Your  Name"></td>
				</tr>
				<tr>
					<td>E-mail : </td>
					<td><input type="email" name="email" placeholder="Enter Your  E-mail address"></td>
				</tr>
				<tr>
				<td></td>
					<td><input type="submit" name="submit" value=" Post "></td>
				</tr>
			</table>
			</form>
			</div>
		</div>
	<?php include "inc/sidebar.php"; ?>
	<?php include "inc/footer.php"; ?>
	<?php include "inc/social.php"; ?>
	<script type="text/javascript" src="js/scrolltop.js"></script>
</body>
</html>