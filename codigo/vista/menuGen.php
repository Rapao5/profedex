<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="vista/estilo.css">
        <script src="vista/script.js"></script>
        <title><?php echo $generacion ?></title>
    </head>
    <body>
        <?php include("header.php") ?>

        <main class="main_profemon">
            
            <h1><?php echo $generacion ?></h1>
            <div class="div_profemon">
            <?php for ($i = 0; $i < count($lista) ; $i++) { ?>
                <a href="index.php?a=pagProf&g=<?php echo $lista[$i]['id'] ?>">
                    <div class="profemon">
                        <img class="img_profemon" src="<?php echo $portada[$i]["evolucion"] ?>" alt="<?php echo $portada[$i]["nombre"] ?>">
                        <p class="nom_profemon"><?php echo $portada[$i]["nombre"] ?></p>
                    </div>
                </a>
            <?php } ?>
            <div>
        </main>
        
        <?php include("footer.php") ?>
    </body>
</html>