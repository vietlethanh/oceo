<?php
require('config/globalconfig.php');
//set_time_limit(10);

//require('config/globalconfig.php');


//$Cache = new Socket_Cache_Client('localhost', 9803);

//$Cache->set('test', 'This is a test');

//var_dump($Cache->dump());

?>
<html>
<head>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('jquery-1.10.1.min.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('jquery-migrate-1.2.1.min.js');?>"></script>

<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('jquery-ui/jquery-ui-1.10.3.custom.min.css');?>">
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('jquery-ui/jquery-ui-1.10.3.custom.min.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('selectize.js-master/dist/js/standalone/selectize.js"');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('selectize.js-master/dist/js/standalone/selectize.js"');?>"></script>
<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('selectize.js-master/dist/css/selectize.default.css');?>">
</head>
<body>

<select id="select-beast2" class="demo-default" placeholder="Select a person...">
	<option value="">Select a person...</option>
	<option value="4">Thomas Edison</option>
	<option value="1">Nikola</option>
	<option value="3">Nikola Tesla</option>
	<option value="5">Arnold Schwarzenegger</option>
</select>
</body>
</html>