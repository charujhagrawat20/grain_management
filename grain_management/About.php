<?php
$companyName = "Grain Inventory Management System";
$mission = "Revolutionizing the way agricultural resources are managed and monitored by providing efficient, transparent, and user-friendly solutions.";
$vision = "Empowering farmers, traders, and storage facilities with cutting-edge tools to optimize grain inventory for a sustainable agricultural ecosystem.";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            margin: 0;
        }

        .background {
            background-image: url('grain_back.jpg'); 
            background-size: cover; 
            background-repeat: no-repeat; 
            background-position: center; 
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1; 
            opacity: 55%;
        }
        footer{
            position: relative;
        }
    </style>
</head>
<body>
    <div class="background"></div>
    <header>
        <h1>About Us</h1>
        <nav>
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="inventory.php">Inventory</a></li>
                <li><a href="add_grain.php">Manage Grain</a></li>
                <li><a href="About.php">About Us</a></li>
                <li><a href="Contact.php">Contact Us</a></li>
            </ul>
        </nav>
    </header>
    
    <section>
    <h2>Welcome to <?php echo $companyName; ?></h2>
        <p>
            At <?php echo $companyName; ?>, we are committed to revolutionizing the agricultural sector by introducing innovative and user-centric tools that make grain inventory management a seamless and efficient process.
        </p>
        <h2>Our Mission</h2>
        <p>
            <?php echo $mission; ?>
        </p>
        <h2>Our Vision</h2>
        <p>
            <?php echo $vision; ?>
        </p>
        <h2>What We Offer</h2>
        <ul type="none">
            <li><b>Real-Time Monitoring:</b> Stay updated on inventory levels, storage conditions, and grain quality.</li>
            <li><b>Efficient Record Management:</b> Organize and access grain transaction data effortlessly.</li>
            <li><b>Comprehensive Reporting:</b> Generate insights to drive smarter decisions.</li>
            <li><b>Seamless Integration:</b> Connect with tools like Excel, Power BI, and more.</li>
            <li><b>User-Friendly Interface:</b> Enjoy an intuitive platform tailored for all users.</li>
        </ul>
        <h2>Why Choose Us?</h2>
        <p>
            Our platform stands out for its reliability, customization, expert support, and continuous innovation. We work closely with our clients to ensure that our solutions meet their unique needs and help them thrive in a competitive agricultural market.
        </p>
    </section>
    
    <footer>
        <p>&copy; 2025 Grain Inventory Management System</p>
    </footer>
</body>
</html>
