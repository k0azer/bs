<?php
include 'dbconnect.php';
if(!empty($_POST["tipe_id"])){ 
  // Fetch state data based on the specific country 
  $query = "SELECT * FROM m_subtipe WHERE tipeID = ".$_POST['tipe_id']." ORDER BY id_sub ASC"; 
  $result = $db->query($query); 
   
  // Generate HTML of state options list 
  if($result->num_rows > 0){ 
    //   echo '<option value="">-Pilih Sub Tipe-</option>'; 
      while($row = $result->fetch_assoc()){  
          echo '<option value="'.$row['id_sub'].'">'.$row['nama_sub'].'</option>' . "\r"; 
      } 
  }else{ 
      echo '<option value="" disabled>--Tidak Ada Sub Tipe--</option>'; 
  } 
} 
?>