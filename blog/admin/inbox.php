<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
<?php 
		if (isset($_GET['seenid'])) {
			$sid = $_GET['seenid'];

			$qry = "UPDATE `dbl_contact`
					SET `status` = '1'
					WHERE `id` = $sid";
		$result = $db->update($qry);
		if($result){
                     echo "<span style = 'color: green; font-size: 18px; font-family: arial;'>Message moved to seen box successfully</span>";
                }
                else{
                     echo "<span style = 'color : red; font-size : 18px; ' >Something went wrong</span>";
                }
		}
		if (isset($_GET['delid'])) {
			$delid = $_GET['delid'];

			$sql = "DELETE FROM `dbl_contact`
					WHERE `id` = $delid";
	   $delreslt = $db->delete($sql);
	   if ($delreslt) {
	   		 echo "<span style = 'color: green; font-size: 18px; font-family: arial;'>Message deleted successfully</span>";
	   }
	   else{
	   		echo "<span style = 'color : red; font-size : 18px; ' >Message is not deleted successfully</span>";
	   }
		}
 ?>
 <link rel="stylesheet" type="text/css" href="action.css">
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Inbox</h2>
                <div class="block">        
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>Serial No.</th>
							<th>First Name</th>
							<th>Last name</th>
							<th>E-mail</th>
							<th>Message</th>
							<th>Date</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
					<?php 
						  $qry = "SELECT * 
						  		  FROM `dbl_contact`
						  		  WHERE `status` = '0'
						  		  ORDER BY `id` DESC";
					 $result   = $db->select($qry);
					 if($result){
					 	$i = 0;
					 	while ($row = $result->fetch_assoc()) {
					 		$i++;
					?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $row['firstname']; ?></td>
							<td><?php echo $row['lastname']; ?></td>
							<td><?php echo $row['email']; ?></td>
							<td><?php echo $row['message']; ?></td>
							<td><?php echo $fm->formatdate($row['date']); ?></td>
							<td>
							<a href="viewmsg.php?msgid=<?php echo $row['id']; ?>">View </a>||
							<a href="replymsg.php?replyid=<?php echo $row['id']; ?>"> Reply</a>||
							<a onclick="return confirm('Do you want to move this to seen box ?');" href="?seenid=<?php echo $row['id']; ?>">Seen</a>
							</td>
						</tr>
						<?php } } ?>
					</tbody>
				</table>
               </div>
            </div>
            <div class="box round first grid">
                <h2>Seen Messages</h2>
                <div class="block">        
                     <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>Serial No.</th>
							<th>First Name</th>
							<th>Last name</th>
							<th>E-mail</th>
							<th>Message</th>
							<th>Date</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
					<?php 
						  $qry = "SELECT * 
						  		  FROM `dbl_contact`
						  		  WHERE `status` = '1'
						  		  ORDER BY `id` DESC";
					 $result   = $db->select($qry);
					 if($result){
					 	$i = 0;
					 	while ($row = $result->fetch_assoc()) {
					 		$i++;
					?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $row['firstname']; ?></td>
							<td><?php echo $row['lastname']; ?></td>
							<td><?php echo $row['email']; ?></td>
							<td><?php echo $row['message']; ?></td>
							<td><?php echo $fm->formatdate($row['date']); ?></td>
							<td>
							<a href="viewmsg.php?msgid=<?php echo $row['id']; ?>">View </a>||
							<a href="replymsg.php?replyid=<?php echo $row['id']; ?>"> Reply</a>||
							<a onclick="return confirm('Do you want to delete this ?');" href="?delid=<?php echo $row['id']; ?>">Delete</a>
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