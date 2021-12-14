<?php
include("db.php");
$titulo = '';
$descripcion= '';

if  (isset($_GET['id'])) {
  $id = $_GET['id'];
  $query = "SELECT * FROM agenda_digital WHERE id=$id";
  $result = mysqli_query($conn, $query);
  if (mysqli_num_rows($result) == 1) {
    $row = mysqli_fetch_array($result);
    $titulo = $row['titulo'];
    $descripcion = $row['descripcion'];
  }
}

if (isset($_POST['update'])) {
  $id = $_GET['id'];
  $titulo= $_POST['titulo'];
  $descripcion = $_POST['descripcion'];

  $query = "UPDATE agenda_digital set titulo = '$titulo', descripcion = '$descripcion' WHERE id=$id";
  mysqli_query($conn, $query);
  $_SESSION['message'] = 'Actualizado con éxito';
  $_SESSION['message_type'] = 'warning';
  header('Location: agenda_digital.php');
}

?>
<?php include('includes/header.php'); ?>
<div class="container p-4">
  <div class="row">
    <div class="col-md-4 mx-auto">
      <div class="card card-body">
      <form action="edit.php?id=<?php echo $_GET['id']; ?>" method="POST">
        <div class="form-group">
          <input name="titulo" type="text" class="form-control" value="<?php echo $titulo; ?>" placeholder="Actualizar Titulo">
        </div>
        <div class="form-group">
        <textarea name="descripcion" class="form-control" cols="30" rows="10" placeholder="Actualizar descripcion"><?php echo $descripcion;?></textarea>
        </div>
        <button class="btn btn-success" name="update">
          Actualizar
        </button>
      </form>
      </div>
    </div>
  </div>
</div>
<?php include('includes/footer.php'); ?>
