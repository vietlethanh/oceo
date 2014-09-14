<?php
  /* 
   * Paging
   */

  //var_dump($_POST["selected"]);


  $iTotalRecords = 2349;
  $iDisplayLength = intval($_REQUEST['iDisplayLength']);
  $iDisplayLength = $iDisplayLength < 0 ? $iTotalRecords : $iDisplayLength; 
  $iDisplayStart = intval($_REQUEST['iDisplayStart']);
  $sEcho = intval($_REQUEST['sEcho']);
  
  $records = array();
  $records["aaData"] = array(); 

  $end = $iDisplayStart + $iDisplayLength;
  $end = $end > $iTotalRecords ? $iTotalRecords : $end;

  $status_list = array(
    array("success" => "Publushed"),
    array("info" => "Not Published"),
    array("danger" => "Deleted")
  );

  for($i = $iDisplayStart; $i < $end; $i++) {
    $status = $status_list[rand(0, 2)];
    $id = ($i + 1);
    $records["aaData"][] = array(     
      'Test Product '.$id,
      'MR'.rand(1000,4000),
      'Product variant '.$id,      
       rand(5,4000),
	   rand(5,4000),
      '<a href="ecommerce_products_edit.html" class="btn btn-xs green btn-editable">Select</a>'
    );
  }

  if (isset($_REQUEST["sAction"]) && $_REQUEST["sAction"] == "group_action") {
    $records["sStatus"] = "OK"; // pass custom message(useful for getting status of group actions)
    $records["sMessage"] = "Group action successfully has been completed. Well done!"; // pass custom message(useful for getting status of group actions)
  }

  $records["sEcho"] = $sEcho;
  $records["iTotalRecords"] = $iTotalRecords;
  $records["iTotalDisplayRecords"] = $iTotalRecords;
  
  echo json_encode($records);
?>