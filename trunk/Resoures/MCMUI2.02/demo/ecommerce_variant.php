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
    array("green" => "10"),
    array("yellow" => "5"),
    array("red" => "0")	
  );

  for($i = $iDisplayStart; $i < $end; $i++) {
    $status = $status_list[rand(0, 2)];
    $id = ($i + 1);
	$stock =  rand(30, 100);
	$cost = rand(1, 40);
    $records["aaData"][] = array(
      //'<input type="checkbox" name="id[]" value="'.$id.'">',
      'Test product '.rand(1, 100),
	  'KLS'.rand(4000, 5000),
      'Test variant '.rand(1, 100),
		$stock,
      rand(1, 50).'$',
	  rand(1, 50).'$',
	  $cost.'$',
	  $stock*$cost.'$',
	  'pack of '.rand(10,100),        
      rand(5,20),         
	  '<a href="#" class="btn mini '.(key($status)).' tooltips" data-container="body" data-placement="right" data-html="true" data-original-title="'.(current($status)).' days">'.(current($status)).'</a>',
      '<a href="http://aredstore1.mcmhq.com/MCommerce/AdminProduct/Edit/220" class="btn btn-xs default btn-editable"><i class="fa fa-pencil"></i> Edit</a>
	   <a class="btn btn-xs default" href="ui_modals_ajax_inventory.html" data-target="#modal-variant" data-toggle="modal"><i class="fa fa-plus"></i> Add</a>',
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