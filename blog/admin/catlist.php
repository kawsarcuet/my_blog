<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
<?php 
	  if (isset($_GET['delcat'])) {
	  		$delcat = $_GET['delcat'];
	  		$qry = "DELETE FROM `dbl_category` 
	  				WHERE id = '$delcat'";
	  		$result = $db->delete($qry);
	  		if ($result) {
	  			 echo "<span style = 'color: green; font-size: 18px; font-family: arial;'>Category Deleted successfully</span>";
	  		}
	  		else{
	  			echo "<span style = 'color : red; font-size : 18px; ' >Category is not Updated successfully</span>";
	  		}
	  }
?>
<link rel="stylesheet" type="text/css" href="action.css">
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Category List</h2>
                <div class="block">        
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>Serial No.</th>
							<th>Category Name</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
					<?php 
						$qry = "SELECT * 
								FROM `dbl_category`
								ORDER BY id DESC";
						$result = $db->select($qry);
						if($result){
							$i=0;
							while ($row = $result->fetch_assoc()) {
								$i++;
							
					 ?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $row['name']; ?></td>
							<td><a href="editcat.php?catid=<?php echo $row['id']; ?>">Edit</a> || <a onclick="return confirm('Do you want to permanently delete this ');"  href="?delcat=<?php echo $row['id']; ?>">Delete</a></td>
						</tr>
		<?php 
					}
				}
		 ?>
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


