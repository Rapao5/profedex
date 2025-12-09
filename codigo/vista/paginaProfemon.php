<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="vista/estilo.css">
        <title><?php echo $nombre ?></title>
    </head>
    <body>
        <?php include("header.php") ?>
        
        <main class="pagina_profemon">
            <div>
                <h1><?php echo $nombre ?></h1>
            </div>

            <div class="div_imagen1">
                <img src="<?php echo $portada["evolucion"] ?>" alt="<?php echo $portada["nombre"] ?>">
            </div>

            <div class="descripcion_profemon">
                <p><?php echo $descripcion ?></p>
            </div>
            
            <hr>
            
            <div>
                <h1>Biologia</h1>
            </div>

            <div>
                <p><?php echo $biologia ?></p>
            </div>

            <div class="evoluciones_titulo">
                <h1>Evoluciones</h1>
            </div>

            <div class="evoluciones">
                <?php foreach ($evoluciones as $evo) {?>
                    <div class="<?php echo $evo["numero"] ?>">
                        <img src="<?php echo $evo["evolucion"] ?>" alt="<?php echo $evo['nombre'] ?>">
                        <p><?php echo $evo['nombre'] ?></p>
                    </div>
                <?php } ?>
            </div>
        </main>

        <?php include("footer.php") ?>
    </body>
</html>