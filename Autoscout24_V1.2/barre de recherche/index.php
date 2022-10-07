<?php
$bdd = new PDO('mysql:host=localhost;dbname=autoscout24;', 'root', '');
$allvoitures = $bdd->query('SELECT * FROM voitures ORDER BY ID_voitures DESC');
if(isset($_GET['s']) AND !empty($_GET['s'])){
    $recherche = htmlspecialchars($_GET['s']);
    $allvoitures = $bdd->query('SELECT marque, carburant FROM voitures WHERE marque LIKE "%' .$recherche. '%" ORDER BY ID_voitures DESC');
}
?>

<!doctype html>
<html lang="fr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Rechercher</title>
</head>
<body>

<form method="GET">
    <input type="search" name="s" placeholder="Rechercher une marque">
    <input type="submit" name="envoyer">
</form>

<section class="afficher_marque">
<?php
    if($allvoitures->rowCount() > 0){
        while($marque = $allvoitures->fetch()){
            ?>
            <p><?= $marque['marque']; ?>
               <?= $marque['carburant']; ?></p>
            <?php
        }

    }else{
        ?>
        <p>aucune marque trouvée</p>
        <?php
    }
?>
</section>
</body>
</html>