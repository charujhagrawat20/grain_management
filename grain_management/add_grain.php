<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Grain</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        header {
            background-color: #6f4e37;
            color: white;
            position: sticky;
            top: 0;
            margin: 0;
            padding: 1em;
            width: 100%;
            text-align: center;
            font-weight: bold;
        }

        nav {
            background-color: beige;
            overflow: hidden;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            float: left;
        }

        nav ul li a {
            display: block;
            color: rgb(19, 16, 16);
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }

        main {
            padding: 20px;
        }

        section {
            margin-bottom: 20px;
            text-align: center;
        }

        form {
            background-color: #f0f0f0;
            padding: 20px;
            border-radius: 10px;
            width: 100%;
            max-width: 400px;
            margin: 0 auto;
        }

        form label {
            display: flex;
            margin-bottom: 5px;
            font-weight: bold;
        }

        form input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        form button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        form button:hover {
            background-color: #0056b3;
        }

        .box1 {
            align-items: center;
            text-align: center;
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        footer {
            background-color: bisque;
            color: rgb(20, 19, 19);
            text-align: center;
            padding: 0;
            position: absolute;
            height: 5%;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>Manage Grain</h1>
        <nav>
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="inventory.php">Inventory</a></li>
                <li><a href="add_grain.php">Manage Grain</a></li>
                <li><a href="About.php">About Us</a></li>
                <li><a href="Contact.php">Contact us</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section>
            <h2>Enter Grain Details</h2>
            <div class="box1">
                <form method="POST">
                <label for="grainID" class="title">Grain ID:</label>
                <input type="number" id="grainID" name="grainID" min="0" required><br>
                    <label for="grainType" class="title">Grain Type:</label>
                    <select id="grainType" name="grainType" required>
            <option value="" disabled selected>-- Select Grain Type --</option>
            <option value="quinoa">Quinoa</option>
            <option value="rice">Rice</option>
            <option value="barley">Barley</option>
            <option value="sorghum">Sorghum</option>
            <option value="oats">Oats</option>
            <option value="millet">Millet</option>
            <option value="rye">Rye</option>
            <option value="wheat">Wheat</option>
            <option value="buckwheat">Buckwheat</option>
            <option value="corn">Corn</option>
        </select><br>
                    <label for="batchNumber" class="title">Batch Number:</label>
                    <input type="string" id="batchNumber" name="batchNumber" required><br>
                    <label for="supplierName" class="title">Supplier Name:</label>
                    <input type="text" id="supplierName" name="supplierName" required><br>
                    <label for="wareHouse" class="title">Warehouse Name:</label>
                    <select id="wareHouse" name="wareHouse" required><br>
                    <option value="" disabled selected>-- Select Warehouse Name --</option>
                    <option value="warehouseA">Warehouse A</option>
                    <option value="warehouseB">Warehouse B</option>
                    <option value="warehouseC">Warehouse C</option>
    </select><br>
                    <label for="reorderLevel" class="title">Reorder Level:</label>
                    <input type="number" id="reorderLevel" name="reorderLevel" min="0"><br>
                    <label for="DateofOrder" class="title">Date of Order:</label>
                    <input type="text" id="DateofOrder" name="DateofOrder" placeholder="dd-mm-yyyy" required onfocus="(this.type='date')" onblur="(this.type='text')">
                    <label for="quantity" class="title">Quantity:</label>
                    <input type="number" id="quantity" name="quantity" min="0" required><br>
                    <label for="price" class="title">Price per Kg:</label>
                    <input type="number" id="price" name="price" min="0" required><br>
                    <button type="submit" name="action" value="add">Add Grain</button>
                </form>
            </div>
            
        </section>
        <section>
            <h2>Remove Grain Details</h2>
            <div class="box1">
                <form method="POST">
                    <label for="removeID" class="title">Grain ID to Remove:</label>
                    <input type="number" id="removeID" name="removeID" min="0" required><br>
                    <button type="submit" name="action" value="remove">Remove Grain</button>
                </form>
            </div>
            <?php
                // Specify the CSV file
                $file = 'Grain.csv';

                if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                    // Check the action (add or remove)
                    if ($_POST['action'] === 'add') {
                        // Retrieve form data for adding grain
                        $grainID = $_POST['grainID'];
                        $grainname = $_POST['grainname'];
                        $description = $_POST['description'];
                        $quantity = $_POST['quantity'];
                        $price = $_POST['price'];

                        // Open the file in append mode
                        $handle = fopen($file, 'a');

                        // Add the form data as a new row
                        if ($handle) {
                            fputcsv($handle, [$grainID, $grainname, $description, $quantity, $price]);
                            fclose($handle);
                            echo "Data saved successfully!";
                        } else {
                            echo "Error saving data.";
                        }
                    } elseif ($_POST['action'] === 'remove') {
                        // Retrieve form data for removing grain
                        $removeID = $_POST['removeID'];

                        // Read the current contents of the CSV file
                        $rows = array_map('str_getcsv', file($file));
                        $header = array_shift($rows);

                        // Filter out the row with the specified Grain ID
                        $rows = array_filter($rows, function($row) use ($removeID) {
                            return $row[0] != $removeID;
                        });

                        // Write the remaining rows back to the CSV file
                        $handle = fopen($file, 'w');

                        if ($handle) {
                            fputcsv($handle, $header);
                            foreach ($rows as $row) {
                                fputcsv($handle, $row);
                            }
                            fclose($handle);
                            echo "Data removed successfully!";
                        } else {
                            echo "Error removing data.";
                        }
                    }
                }
            ?>
        </section>
    </main>
    <footer>
        <p>&copy; 2025 Grain Inventory Management System</p>
    </footer>
</body>
</html>
