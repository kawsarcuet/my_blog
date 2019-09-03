<div class="clear">
        </div>
    </div>
    <div class="clear">
    </div>
    <div id="site_info">
   
         <?php 
                        $qry = "SELECT * 
                                FROM `copyright`";
                        $result = $db->select($qry);
                        if($result){
                            while ($row = $result->fetch_assoc()) {

             ?>
         <p>
         &copy; Copyright <a href="http://CoderKnight.com"><?php echo $row['text']; echo "2016-".date('Y'); ?></a>. All Rights Reserved.
        </p>
        <?php } } ?>
    </div>
</body>
</html>
