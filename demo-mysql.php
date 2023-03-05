<?php
// Connect to the MySQL database
$servername = "localhost";
$username = "your_username";
$password = "your_password";
$dbname = "your_database_name";

$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Query the student_identity table
$sql = "SELECT * FROM student_identity";
$result = mysqli_query($conn, $sql);

// Check if any rows were returned
if (mysqli_num_rows($result) > 0) {
    // Output table header
    echo "<table>";
    echo "<tr><th>ID</th><th>First Name</th><th>Last Name</th><th>Date of Birth</th><th>Email</th><th>Phone Number</th><th>Address</th></tr>";

    // Output table rows
    while($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td>" . $row["id"] . "</td>";
        echo "<td>" . $row["first_name"] . "</td>";
        echo "<td>" . $row["last_name"] . "</td>";
        echo "<td>" . $row["date_of_birth"] . "</td>";
        echo "<td>" . $row["email"] . "</td>";
        echo "<td>" . $row["phone_number"] . "</td>";
        echo "<td>" . $row["address"] . "</td>";
        echo "</tr>";
    }

    // Output table footer
    echo "</table>";
} else {
    echo "0 results";
}

// Close the database connection
mysqli_close($conn);
?>
