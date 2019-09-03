	<div class="footersection templete clear">
		<div class="footermenu clear">
		<ul>
			<li><a href="index.php">Home</a></li>
			<li><a href="about.php">About</a></li>
			<li><a href="contact.php">Contact</a></li>
		</ul>
		</div>
		 <?php 
                        $qry = "SELECT * 
                                FROM `copyright`";
                        $result = $db->select($qry);
                        if($result){
                            while ($row = $result->fetch_assoc()) {

             ?>
		<p>&copy;<?php echo $row['text']; echo "2016-".date('Y');  ?></p>
		<?php } } ?>
	</div>