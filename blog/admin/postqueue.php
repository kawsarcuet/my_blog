<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>


<link rel="stylesheet" type="text/css" href="action.css">

        <div class="grid_10">
            <div class="box round first grid">
                <h2>Post Queue</h2>
                <div class="block">  
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
						   	<th width="5%">No.</th>
						    <th width="10%">Category</th>
							<th width="15%">Post Title</th>
							<th width="15%">Description</th>
							<th width="10%">Author</th>
							<th width="10%">Tags</th>
							<th width="10%">E-mail</th>
							<th width="10%">Date</th>
							<th width="10%">Action</th>
						</tr>
					</thead>
					<tbody>
					<?php 
						  $qry  =   "SELECT post_queue.*,dbl_category.name
						             FROM `post_queue` INNER JOIN dbl_category  
						             WHERE post_queue.cat = dbl_category.id
						             ORDER BY `id` DESC";
						$result = $db->select($qry);
						if ($result) {
							$i=0;
							while ($row = $result->fetch_assoc()) {
							$i++;
				    ?>
				    	
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $row['name'] ; ?></td>
							<td><?php echo $row['title'] ; ?></td>
							<td><?php echo $fm->textshorten($row['body'],150) ; ?></td>
							<td><?php echo $row['tags'] ; ?></td>
							<td><?php echo $row['author'] ; ?></td>
							<td><?php echo $row['email'] ; ?></td>
							<td><?php echo $fm->formatdate($row['date']) ; ?></td>
							<td><a id="view" href="viewpost.php?postid=<?php echo $row['id']; ?>">View</a>
							    <a id="contact" href="#">Contact</a>
							</td>
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
