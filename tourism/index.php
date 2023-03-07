<!DOCTYPE HTML>
<html>
<?php include "config.php"; ?>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Turism - Chivu Razvan</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../style.css">
</head>


<body>
<div class="container">
        <button class="btn btn-primary my-5"><a href="index.php" class="text-light">Muzeu</a>
        </button>
        <button class="btn btn-primary my-5"><a href="galerie.php" class="text-light">Galerie</a>
        </button>
        <button class="btn btn-primary my-5"><a href="expozitie.php" class="text-light">Expozitie</a>
        </button>
        <button class="btn btn-primary my-5"><a href="obiect.php" class="text-light">Obiect</a>
        </button>
        <button class="btn btn-primary my-5"><a href="artist.php" class="text-light">Artist</a>
        </button>
        <button class="btn btn-primary my-5"><a href="adresa.php" class="text-light">Adrese</a>
        </button>

        <table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">id Adresa</th>
      <th scope="col">Nume Muzeu</th>
      <th scope="col">Descriere</th>
    </tr>
  </thead>
  <tbody>

  
  <div id="site_content">


	<div  class="container">
	<div id="logo">
	
        <div id="logo_text">

                  <h1><a href="index.php">Lista <span class="logo_colour">MUZEU</span></a></h1>

		</div>
      </div>
	  



<?php

include "config.php"; 
$records = mysqli_query($conn,"select * FROM muzeu ORDER BY id_Muzeu ASC"); 

while($data = mysqli_fetch_array($records))
{
?>
  <tr>
    <td><?php echo $data['id_muzeu']; ?></td>
    <td><?php echo $data['id_adresa']; ?></td>
    <td><?php echo $data['nume_muzeu']; ?></td>
    <td><?php echo $data['descriere']; ?></td>
	


  </tr>	
<?php
}
?>
</table>
<br><br><br><br><br>
</div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
          </div>
  </div>
</body>
</html>
