<?php

include('db.php');

if (isset($_POST['save_agenda_digital'])) {
  $titulo = $_POST['titulo'];
  $descripcion = $_POST['descripcion'];
  $query = "INSERT INTO agenda_digital(titulo, descripcion) VALUES ('$titulo', '$descripcion')";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Query Failed.");
  }

  $_SESSION['message'] = 'Guardado exitosamente';
  $_SESSION['message_type'] = 'success';
  header('Location: agenda_digital.php');

}

?>
