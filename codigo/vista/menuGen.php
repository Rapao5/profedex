<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="vista/estilo.css">
        <title><?php echo $generacion ?></title>
    </head>
    <body>
        <?php include("header.php") ?>

        <main>
            <h1><?php echo $generacion ?></h1>
            <?php for ($i = 0; $i < count($lista) ; $i++) { ?>
                <a href="index.php?a=pagProf&g=<?php echo $lista[$i]['id'] ?>">
                    <div class="profemon">
                        <img src="<?php echo $portada[$i]["evolucion"] ?>" alt="<?php $portada[$i]["nombre"] ?>">
                        <p><?php $portada[$i]["nombre"] ?></p>
                    </div>
                </a>
            <?php } ?>
        </main>
        
        <?php include("footer.php") ?>
    </body>
</html>