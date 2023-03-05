<?php
// Replace the values in the $db_connection_string variable with your PostgreSQL database connection details
$db_connection_string = "host=localhost port=5432 dbname=mydatabase user=myuser password=mypassword";

// Connect to the PostgreSQL database
$conn = pg_connect($db_connection_string);

// Check if the connection is successful
if (!$conn) {
  echo "Error: Unable to connect to PostgreSQL database." . PHP_EOL;
  exit;
}

// Query the student_identity table
$query = "SELECT * FROM student_identity";
$result = pg_query($conn, $query);

// Check if the query is successful
if (!$result) {
  echo "Error: Unable to query the student_identity table." . PHP_EOL;
  exit;
}

// Display the table as an HTML table
echo "<table>";
echo "<tr><th>ID</th><th>Name</th><th>Email</th><th>Date of Birth</th><th>Gender</th><th>Address</th><th>Phone Number</th></tr>";

while ($row = pg_fetch_assoc($result)) {
  echo "<tr>";
  echo "<td>" . $row["id"] . "</td>";
  echo "<td>" . $row["name"] . "</td>";
  echo "<td>" . $row["email"] . "</td>";
  echo "<td>" . $row["date_of_birth"] . "</td>";
  echo "<td>" . $row["gender"] . "</td>";
  echo "<td>" . $row["address"] . "</td>";
  echo "<td>" . $row["phone_number"] . "</td>";
  echo "</tr>";
}

echo "</table>";

// Close the PostgreSQL database connection
pg_close($conn);
?>
