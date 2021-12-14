<?php

include("db.php");

if(isset($_GET['id'])) {
  $id = $_GET['id'];
  $query = "DELETE FROM agenda_digital WHERE id = $id";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Query Failed.");
  }

  $_SESSION['message'] = 'Eliminado con éxito';
  $_SESSION['message_type'] = 'danger';
  header('Location: agenda_digital.php');
}

?>
