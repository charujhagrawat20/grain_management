<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory - Grain Inventory Management</title>
    <link rel="stylesheet" href="style.css">
    <style>
    header{font-weight: bold;}
    footer {
            background-color: bisque;
            color: rgb(20, 19, 19);
            text-align: center;
            padding: 0;
            position: fixed;
            height: 5%;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>Grain Inventory Management System</h1>
        <nav>
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="inventory.php">Inventory</a></li>
                <li><a href="add_grain.php">Manage Grain</a></li>
                <li><a href="About.php">About Us</a></li>
                <li><a href="Contact.php">Contact us </a></li>
                
            </ul>
        </nav>
    </header>
    <main>
        <section>
            <h2>Inventory</h2>
            <table border=1>
                <tbody>
<?php
$filename = 'Grain.csv';  // Path to your CSV file

// Open the file for reading
if (($handle = fopen($filename, 'r')) !== FALSE) {
    // Read the first row as headers
    $header = fgetcsv($handle, 1000, ',');
    if ($header) {
        echo '<tr>';
        foreach ($header as $column) {
            echo '<th>' . htmlspecialchars($column) . '</th>';
        }
        echo '</tr>';
    }

    // Read each remaining row as data
    while (($row = fgetcsv($handle, 1000, ',')) !== FALSE) {
        echo '<tr>';
        foreach ($row as $cell) {
            echo '<td>' . htmlspecialchars($cell) . '</td>';
        }
        echo '</tr>';
    }

    // Close the file
    fclose($handle);
} else {
    echo 'Error opening the file.';
} 
?>
</tbody>
</table>
        </section>
    </main>
    <footer>
        <p>&copy; 2025 Grain Inventory Management System</p>
    </footer>
</body>
</html>
