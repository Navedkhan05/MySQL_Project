<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Nonna’s Restaurant Menu</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #fefefe;
      margin: 0;
      padding: 0;
    }

    header {
      background-color: #d62828;
      color: white;
      padding: 20px;
      text-align: center;
      font-size: 28px;
      font-weight: bold;
      letter-spacing: 1px;
    }

    .container {
      max-width: 900px;
      margin: 40px auto;
      padding: 20px;
      background-color: #fff;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
      border-radius: 10px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    th, td {
      text-align: left;
      padding: 12px 15px;
    }

    th {
      background-color: #003049;
      color: white;
    }

    tr:nth-child(even) {
      background-color: #f0f0f0;
    }

    tr:hover {
      background-color: #eaeaea;
    }

    .type-veg {
      color: green;
      font-weight: bold;
    }

    .type-non-veg {
      color: #b30000;
      font-weight: bold;
    }

    .type-vegan {
      color: #007f5f;
      font-weight: bold;
    }

    .type-jain {
      color: #6a4c93;
      font-weight: bold;
    }
  </style>
</head>
<body>

<header>
  Nonna’s Restaurant – Digital Menu
</header>

<div class="container">
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "nonnas_restaurant";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT name, category, description, price, type FROM menu_items ORDER BY category, name";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  echo "<table>
          <tr>
            <th>Item</th>
            <th>Category</th>
            <th>Description</th>
            <th>Price (₹)</th>
            <th>Type</th>
          </tr>";
  while($row = $result->fetch_assoc()) {
    $typeClass = "type-" . strtolower(str_replace(' ', '-', $row["type"]));
    echo "<tr>
            <td>{$row["name"]}</td>
            <td>{$row["category"]}</td>
            <td>{$row["description"]}</td>
            <td>{$row["price"]}</td>
            <td class='{$typeClass}'>" . ucfirst($row["type"]) . "</td>
          </tr>";
  }
  echo "</table>";
} else {
  echo "<p>No menu items available.</p>";
}

$conn->close();
?>
</div>

</body>
</html>
