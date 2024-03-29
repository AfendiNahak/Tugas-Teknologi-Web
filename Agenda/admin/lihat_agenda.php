<?php

$connect = new PDO("mysql:host=localhost;dbname=rfk_agenda", "root", "");

$query = "SELECT * FROM agenda ORDER BY id ASC";
$statement = $connect->prepare($query);
$statement->execute();
$result = $statement->fetchAll();

?>

<html>
    <head>
        <title>Agenda Saya</title>
        <script src="js/jquery.js"></script>
        <script src="js/timeline.min.js"></script>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/timeline.min.css" />
		<link rel="stylesheet" href="css/style.css" />
		
    </head>
    <body>
	
        <div class="container">
			<br />
			<h3 align="center"><a href="">Agenda Saya</a></h3><br />
			<div class="panel panel-default">
				<div class="panel-heading">
                    <h3 class="panel-title">My Timeline</h3>
                </div>
                <div class="panel-body">
                	<div class="timeline">
                        <div class="timeline__wrap">
                            <div class="timeline__items">
                            <?php
                            foreach($result as $row)
                            {
                            ?>
                            	<div class="timeline__item">
                                    <div class="timeline__content">
                                    	<h2><?php echo $row["tempat"]; ?></h2>
                                    	<p><?php echo $row["acara"]; ?></p>
										<p><?php echo $row["tanggal"]; ?></p>
										<p><?php echo $row["waktu"]; ?></p>
                                    </div>
                                </div>
                            <?php
                            }
                            ?>
                            </div>
                        </div>
                    </div>
                </div>
			</div>
		</div>
    </body>
	</html>
<script>
$(document).ready(function(){
	/*timeline(document.querySelectorAll('.timeline'), {
        mode: 'horizontal',
	    visibleItems: 4,
	    forceVerticalWidth: 800
    });*/
    //jQuery('.timeline').timeline();
    jQuery('.timeline').timeline({
	    mode: 'vertical',
	    visibleItems: 4,
	    //forceVerticalWidth: 300
	});
});
</script>
