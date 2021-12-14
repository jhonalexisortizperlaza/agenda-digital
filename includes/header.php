<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <title>Agenda Digital - ava</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <!-- BOOTSTRAP 4 -->
    <link rel="stylesheet" href="https://bootswatch.com/4/yeti/bootstrap.min.css">
    <!-- FONT AWESOEM -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

    <style>
      .contenedor {
        border-bottom: 1px solid #eee;
        box-shadow: 1px 1px 10px #00b894;
        padding: 0 130px;
        width: 100%;
        height: 90px;
      }

      .nav {
        display: flex;
        justify-content: space-between;
        align-items: center;
      }

      .logo {
        width: 90px;
        position: relative;
        z-index: -1;
      }

      .cerrar {
        font-weight: bold;
        font-size: 18px;
        color: #00b894;

     
      }
    </style>
  </head>
  <body>

    <nav class="contenedor">
      <div class="nav">
        <a href="agenda_digital.php"><img src="images/logo.jpeg" alt="logo" class="logo"></a>
        <div class="cerrar">   
          <a href="cerrar-sesion.php" class="close-sesion cerrar">Cerrar Sesión</a>
        </div>
      </div>
    </nav>
