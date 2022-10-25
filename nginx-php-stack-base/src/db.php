<?php

$value = "Everybody";

$db = new PDO('mysql:host=mysql;dbname=dvwa;charset=utf8mb4', 'danzhu', '123456');

$databaseTest = ($db->query('SELECT * FROM users'))->fetchAll(PDO::FETCH_OBJ);

?>

<html>
    <body>
        <h1>Hello, <?= $value ?>!</h1>

        <?php foreach($databaseTest as $row): ?>
            <p><?= $row->user_id ?>, <?= $row->first_name ?> <?= $row->last_name ?> </p>
        <?php endforeach; ?>
    </body>
</html>