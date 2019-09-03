<div class="sidebar clear">
		   <div class="samesidebar clear ">
		   	<h2>Latest Articles</h2>
		<ul>
<?php
	$qry = "SELECT *
			FROM `dbl_post`
		    ORDER BY id DESC
			LIMIT 5";
	$post = $db->select($qry);
	if ($post) {
		while ($result = $post->fetch_assoc()) {

 ?>
			<li><a href="post.php?id=<?php echo $result['id']; ?>"><?php echo $result['title']; ?></a></li>
<?php } } ?>			
		</ul>
		   </div>	
		    <div class="samesidebar clear ">
		   	<h2>Categories</h2>
		<ul>
<?php
	$qry = "SELECT *
			FROM `dbl_category`";
	$post = $db->select($qry);
	if ($post) {
		while ($result = $post->fetch_assoc()) {

 ?>
			<li><a href="posts.php?id=<?php echo $result['id']; ?>"><?php echo $result['name']; ?></a></li>
			
<?php } } ?>
		</ul>
		   </div>
		    <div class="samesidebar clear ">
		   	<h2>helpful links</h2>
		<ul>
			<li><a target="_blank" href="#">c-p books (Subeen.com) </a></li>
			<li><a target="_blank" href="#">stack overflow</a></li>
			<li><a target="_blank" href="#">dev skill</a></li>
			<li><a target="_blank" href="#">github</a></li>
			<li><a target="_blank" href="#">w3school</a></li>
		</ul>
		   </div>
		</div>
	</div>