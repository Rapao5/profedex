<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="vista/estilo.css">
        <link rel="icon" type="image/x-icon" href="../modelo/imagenes/logo.png">
        <script src="vista/script.js"></script>
        <title>Profedex</title>
    </head>
    <body>
        <?php include("header.php") ?>
        <main>
            <div class="botones_gen">
                <a href="index.php?a=menugen&g=1">
                    <div class="boton_gen1"></div>
                </a>

                <a href="index.php?a=menugen&g=2">
                    <div class="boton_gen2"></div>
                </a>
            </div>

            <div class="botones_all">
                <a href="index.php?a=menuall">
                    <div class="boton_all"></div>
                </a>
            </div>
        </main>
        <?php include("footer.php") ?>
    </body>
</html>