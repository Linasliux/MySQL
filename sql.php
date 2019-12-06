<html>
<head>

</head>
<body>
  <h1>Sql kurimas</h1>
  <form action="sql2.php">
    <div class="container">
      <label><b>Vardas</b></label>
  	  <br>
      <div name="a" value=""></div>
      <div name="b" value=""></div>
      <input type="text" placeholder="Vardas" name="name" required>
  	  <br>
  	<label><b>Pastas</b></label>
  	<br>
      <input type="text" placeholder="Pastas" name="email" required>
  	<br>
     <button type="submit" class="post">Submiting blet</button>
    </div>
  </form>
<?php
  $a = "";
  $a = $_GET['a'];
  $b = $_GET['kodas'];
  if($a == '0'){
    echo "Sis pastas jau gavo prizo koda.";
  }
  if($a == '1'){
    echo "Toks pastas jau yra jusu prizo kodas yra " . $b . ".";
  }
  if($a == '2'){
    echo "Jusu prizo kodas yra " . $b . ".";
  }
?>
</body>
</html>
