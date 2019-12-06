<?php
$vardas = $_GET['name'];
$pastas = $_GET['email'];
$kodas = rand(10000, 99999);
$a = "";

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "nuolaidos";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT Vardas, Pastas, Kodas FROM pastai WHERE Pastas = '$pastas'";

$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);

if ($row['Pastas'] === $pastas) {
  if ($row['Vardas'] === $vardas) {
    $a = "1";
    $b = "" . $row['Kodas'];
  }
  else $a = "0";
}
else {
  $sql = "INSERT INTO pastai (Vardas, Pastas, Kodas)
  VALUES ('$vardas', '$pastas', '$kodas')";
  if ($conn->query($sql) === TRUE) {

  } else {
      echo "Klaida: " . $sql . "<br>" . $conn->error;
  }
  $a = "2";
  $b = "" . $kodas;
}


$conn->close();

header('Location: http://localhost/sql.php?a=' . $a . '&kodas=' . $b);
?>
