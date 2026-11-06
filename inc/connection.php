<?php

$con = mysqli_connect(
    getenv('DB_HOST') ?: 'localhost',
    getenv('DB_USER') ?: 'root',
    getenv('DB_PASSWORD') ?: '',
    getenv('DB_NAME') ?: 'roroferry',
    (int) (getenv('DB_PORT') ?: 3306)
);
mysqli_set_charset($con, 'utf8mb4');
