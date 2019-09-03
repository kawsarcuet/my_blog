<?php ob_start(); ?>
<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
<?php
	  if (!isset($_GET['postid']) || $_GET['postid'] == NULL ) {
	  	 header("Location: postlist.php");
	  }
	  else{
	  	 $postid = $_GET['postid'];
	  }
	  		
	  		
?>
<link rel="stylesheet" type="text/css" href="action.css">
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Post List</h2>
                <div class="block">  
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
						   	<th width="5%">No.</th>
						    <th width="10%">Name</th>
							<th width="15%">Tag</th>
							<th width="20%">E-mail</th>
							<th width="30%">Comment</th>
							<th width="10%">Date</th>
							<th width="10%">Action</th>
						</tr>
					</thead>
					<tbody>
					<?php 
						  $qry = "SELECT * 
	  							  FROM `dbl_comment`
	  						   	  WHERE `postid` = '$postid'
	  						   	  ORDER BY `id` DESC";
	  				  $result  = $db->select($qry);
	  			if ($result) {
	  					$i=0;
	  					while ($row = $result->fetch_assoc()) {
	  						$i++;
				    ?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $row['name'] ; ?></td>
							<td><?php echo $row['tag'] ; ?></td>
							<td><?php echo $row['email'] ; ?></td>
							<td><?php echo $fm->textshorten($row['comment'],100) ; ?></td>
							<td><?php echo $fm->formatdate($row['date']) ; ?></td>
							<td><a id="view" href="viewcomment.php?commentid=<?php echo $row['id'] ; ?>">view</a>
							    <a id="contact" href="#">Contact</a></td>
						</tr>
						<?php } } ?>
					</tbody>
				</table>
               </div>
            </div>
        </div>

	<script type="text/javascript">
        $(document).ready(function () {
            setupLeftMenu();
            $('.datatable').dataTable();
			setSidebarHeight();
        });
    </script>
<?php include "inc/footer.php"; ?>
<?php ob_end_flush(); ?>