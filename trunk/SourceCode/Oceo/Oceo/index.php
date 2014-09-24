<?php 
require('config/globalconfig.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href = "images/logo.png" rel="icon" type="image/png">
<title>oCEO</title>

<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('jquery-1.10.1.min.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('jquery-migrate-1.2.1.min.js');?>"></script>

<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('jquery-ui/jquery-ui-1.10.3.custom.min.css');?>">
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('jquery-ui/jquery-ui-1.10.3.custom.min.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('jquery-ui/components/jquery.ui.core.min.js');?>"></script>


<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('bootstrap/css/bootstrap.css');?>"/>
<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('font-awesome/css/font-awesome.min.css');?>"/>
<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('bootstrap/css/bootstrap-responsive.min.css');?>"/>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('bootstrap/js/bootstrap.min.js');?>"></script>

<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('modernizr.custom.24574.js');?>"></script>

<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('bootstrap-datepicker/js/bootstrap-datepicker.js');?>"></script>
<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('bootstrap-datepicker/css/datepicker.css');?>"/>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('bootstrap-daterangepicker/daterangepicker.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('bootstrap-daterangepicker/date.js');?>"></script>
<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('bootstrap-daterangepicker/daterangepicker.css');?>"/>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js');?>"></script>
<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('bootstrap-datetimepicker/css/datetimepicker.css');?>"/>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('bootstrap-timepicker/js/bootstrap-timepicker.js');?>"></script>
<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('bootstrap-timepicker/compiled/timepicker.css');?>"/>

<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('jquery-inputmask/jquery.inputmask.bundle.min.js');?>"></script>

<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('jquery-multi-select/css/multi-select-metro.css');?>"/>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('jquery-multi-select/js/jquery.multi-select.js');?>"></script>

<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('chosen-bootstrap/chosen/chosen.css');?>"/>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('chosen-bootstrap/chosen/chosen.jquery.min.js');?>"></script>

<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('bootstrap-fileupload/bootstrap-fileupload.css');?>"/>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('bootstrap-fileupload/bootstrap-fileupload.js');?>"></script>

<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('bootstrap-fileupload/bootstrap-fileupload.css');?>"/>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('bootstrap-fileupload/bootstrap-fileupload.js');?>"></script>

<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('data-tables/DT_bootstrap.css');?>"/>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('data-tables/jquery.dataTables.min.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('data-tables/DT_bootstrap.js');?>"></script>

<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('FlexSlider/flexslider.css');?>">
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('FlexSlider/jquery.flexslider-min.js');?>"></script>


<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('bootstrap-modal/css/bootstrap-modal.css');?>">
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('bootstrap-modal/js/bootstrap-modal.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('bootstrap-modal/js/bootstrap-modalmanager.js');?>"></script>

<!--script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyD99k32UTA3js7a2aaSbAmJxwwO2K5QIpk&sensor=true"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('gmaps/gmaps.js');?>"></script-->

<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('Jssor.Slider/jssor.core.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('Jssor.Slider/jssor.utils.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('Jssor.Slider/jssor.slider.js');?>"></script>

<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('theme/css/style.css');?>">

<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateCss('style.css');?>">

<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateCss('ChromeSafariFix.css');?>">


<script type="text/javascript" src="<?php echo $_objSystem->locateJs('ajax.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('global_config.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('global_core.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('app.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('form-components.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_user.js');?>"></script>


<script>
		jQuery(document).ready(function() {
			// initiate layout and plugins
			App.init();
			FormComponents.init();
		});
	</script>
</head>
<?php
/* TODO: Add code here */
include_once('class/model_user.php');
/* TODO: Add code here */
include_once('class/model_articletype.php');
include_once('class/model_article.php');
include_once('class/model_advertising.php');
$objAdvertising = new Model_Advertising($objConnection);
$objArticleType = new model_ArticleType($objConnection);
$arrCategories =  $objArticleType->getAllArticleType(0,null,'`ParentID`=0','Level');

?>

<body >


<div id="main" class="home-page">
    <!--div id="subcontent" -->
    <div id="header" >
		<div id="header-menu">
			<ul class="nav nav-tabs">
			<li>
				<a href="index.php"><img class="m-logo" src="images/logo.png"></img></a>
			</li>
<?php
$default='active';
foreach($arrCategories as $item)
{
	echo '	<li class="'.$default.'">';
	echo '		<a href="#tab'.$item[global_mapping::ArticleTypeID].'" data-toggle="tab">'.str_replace('-',' ',$item[global_mapping::ArticleTypeName]).'</a>';	
	echo '	</li>';
	$default='';
}
	?>
			</ul>
		</div>
		 <div id="div-login" align="right" style=""  class="navbar navbar-inverse navbar-fixed-top">
			<ul class="nav pull-right">		
<?php 

if (global_common::isCLogin())
{
	//print_r($_SESSION[global_common::SES_C_USERINFO]);
				?>
				<!-- BEGIN USER LOGIN DROPDOWN -->
				<li class="dropdown user">
					
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<img class="avatar" src="<?php echo $_SESSION[global_common::SES_C_USERINFO][global_mapping::Avatar] ?>" alt="">
						<span class="username"><?php echo $_SESSION[global_common::SES_C_USERINFO][global_mapping::FullName] ?></span>
						<i class="icon-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="profile.php"><i class="icon-user"></i> Thông tin cá nhân</a></li>
						<li><a href="profile_article.php"><i class="icon-reorder"></i> Quản lý khuyến mãi</a></li>
						<li class="divider"></li>
						<li><a href="javascript:user.logout();"><i class="icon-signout"></i> Đăng xuất</a></li>
					</ul>
				</li>
				<!-- END USER LOGIN DROPDOWN -->
				<!-- END  DROPDOWN -->	
				
	<?php
}
else{
				?>
				
				<!-- BEGIN USER LOGIN ACTIONS -->
				<li>
					<a href="login.php" class="btn btn-mini inline">
						Đăng nhập
					</a>	
					<a href="register.php" class="btn btn-mini inline">
						Đăng ký
					</a>				
				</li>
	<?php
}
				?>
				<!-- END USER LOGIN DROPDOWN -->
				</ul>
		 </div>
		<p></p>
    </div>
	<div class="wrapper">
		
		
	<div class="tab-content">      
	 <?php
$default = 'active';
foreach($arrCategories as $parentCat)
{
	?>
			<div id="tab<?php echo $parentCat[global_mapping::ArticleTypeID] ?>" class="tab-pane <?php echo $default ?>" >
					<div id="left-sider">
							<ul>
	<?php 
	$allCats = $objArticleType->getAllArticleType(0,null,'ParentID='.$parentCat[global_mapping::ArticleTypeID],null);
	$link = 'article_list.php?cid='.$parentCat[global_mapping::ArticleTypeID];
	echo '<a href="'.$link.'">	'.$parentCat[global_mapping::ArticleTypeName].'</a>';
	foreach($allCats as $item)
	{
		
		$link = 'article_list.php?cid='.$item[global_mapping::ArticleTypeID];
		echo '<li class="">';
		echo '	<a href="'.$link.'">	'.$item[global_mapping::ArticleTypeName].'</a>';
		echo '</li>';
	}
									?>
							</ul>
							
					</div>
					<div id="right-slider"  >
							<!-- Jssor Slider Begin -->
    <!-- You can move inline styles to css file or css block. -->
    <div id="slider<?php echo $parentCat[global_mapping::ArticleTypeID]?>_container" style="position: relative; top: 0px; left: 0px; width: 600px; height: 300px; overflow: hidden; ">

        <!-- Loading Screen -->
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
                background-color: #000000; top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
            <div style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center;
                top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
        </div>

        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 600px; height: 300px; overflow: hidden;">
            <div>
                <img u="image" src="../img/landscape/02.jpg" />
            </div>
            <div>
                <img u="image" src="../img/landscape/03.jpg" />
            </div>
            <div>
                <img u="image" src="../img/landscape/04.jpg" />
            </div>
            <div>
                <img u="image" src="../img/landscape/05.jpg" />
            </div>
            <div>
                <img u="image" src="../img/landscape/06.jpg" />
            </div>
            <div>
                <img u="image" src="../img/landscape/07.jpg" />
            </div>
            <div>
                <img u="image" src="../img/landscape/08.jpg" />
            </div>
            <div>
                <img u="image" src="../img/landscape/09.jpg" />
            </div>
            <div>
                <img u="image" src="../img/landscape/10.jpg" />
            </div>
            <div>
                <img u="image" src="../img/landscape/11.jpg" />
            </div>
        </div>

        <!-- Bullet Navigator Skin Begin -->
        <style>
            /* jssor slider bullet navigator skin 05 css */
            /*
            .jssorb05 div           (normal)
            .jssorb05 div:hover     (normal mouseover)
            .jssorb05 .av           (active)
            .jssorb05 .av:hover     (active mouseover)
            .jssorb05 .dn           (mousedown)
            */
            .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
                background: url(../img/b05.png) no-repeat;
                overflow: hidden;
                cursor: pointer;
            }

            .jssorb05 div {
                background-position: -7px -7px;
            }

                .jssorb05 div:hover, .jssorb05 .av:hover {
                    background-position: -37px -7px;
                }

            .jssorb05 .av {
                background-position: -67px -7px;
            }

            .jssorb05 .dn, .jssorb05 .dn:hover {
                background-position: -97px -7px;
            }
        </style>
        <!-- bullet navigator container -->
        <div u="navigator" class="jssorb05" style="position: absolute; bottom: 16px; right: 6px;">
            <!-- bullet navigator item prototype -->
            <div u="prototype" style="POSITION: absolute; WIDTH: 16px; HEIGHT: 16px;"></div>
        </div>
        <!-- Bullet Navigator Skin End -->
        <!-- Arrow Navigator Skin Begin -->
        <style>
            /* jssor slider arrow navigator skin 12 css */
            /*
            .jssora12l              (normal)
            .jssora12r              (normal)
            .jssora12l:hover        (normal mouseover)
            .jssora12r:hover        (normal mouseover)
            .jssora12ldn            (mousedown)
            .jssora12rdn            (mousedown)
            */
            .jssora12l, .jssora12r, .jssora12ldn, .jssora12rdn {
                position: absolute;
                cursor: pointer;
                display: block;
                background: url(../img/a12.png) no-repeat;
                overflow: hidden;
            }

            .jssora12l {
                background-position: -16px -37px;
            }

            .jssora12r {
                background-position: -75px -37px;
            }

            .jssora12l:hover {
                background-position: -136px -37px;
            }

            .jssora12r:hover {
                background-position: -195px -37px;
            }

            .jssora12ldn {
                background-position: -256px -37px;
            }

            .jssora12rdn {
                background-position: -315px -37px;
            }
        </style>
        <!-- Arrow Left -->
        <span u="arrowleft" class="jssora12l" style="width: 30px; height: 46px; top: 123px; left: 0px;">
        </span>
        <!-- Arrow Right -->
        <span u="arrowright" class="jssora12r" style="width: 30px; height: 46px; top: 123px; right: 0px">
        </span>
        <!-- Arrow Navigator Skin End -->
        <a style="display: none" href="http://www.jssor.com">jquery content slider</a>
    </div>
    <!-- Jssor Slider End -->
					</div>
			</div>
			<?php 
	$default='';
			}?>
	</div>
</div>

<script type="text/javascript">
$('.nav-tabs > li > a').hover( function(){
      $(this).tab('show');
   });
$(function() {
    
  });

</script>
  <script>

        jQuery(document).ready(function ($) {

            var _SlideshowTransitions = [
            //Fade
            { $Duration: 1200, $Opacity: 2 }
            ];

            var options = {
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $AutoPlaySteps: 1,                                  //[Optional] Steps to go for each navigation request (this options applys only when slideshow disabled), the default value is 1
                $AutoPlayInterval: 3000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $PauseOnHover: 1,                               //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, default value is 1

                $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                $SlideDuration: 500,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
                //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
                //$SlideHeight: 300,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
                $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
                $DisplayPieces: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                $ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
                $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
                $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
                $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

                $SlideshowOptions: {                                //[Optional] Options to specify and enable slideshow or not
                    $Class: $JssorSlideshowRunner$,                 //[Required] Class to create instance of slideshow
                    $Transitions: _SlideshowTransitions,            //[Required] An array of slideshow transitions to play slideshow
                    $TransitionsOrder: 1,                           //[Optional] The way to choose transition to play slide, 1 Sequence, 0 Random
                    $ShowLink: true                                    //[Optional] Whether to bring slide link on top of the slider when slideshow is running, default value is false
                },

                $BulletNavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorBulletNavigator$,                       //[Required] Class to create navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 1,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
                    $Lanes: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
                    $SpacingX: 10,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                    $SpacingY: 10,                                   //[Optional] Vertical space between each item in pixel, default value is 0
                    $Orientation: 1                                 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
                },

                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
                }
            };
          

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider(elem) {
                var parentWidth = elem.$Elmt.parentNode.clientWidth;
                if (parentWidth)
                    elem.$SetScaleWidth(Math.min(parentWidth, 600));
                else
                    window.setTimeout(ScaleSlider(elem), 30);
            }
			
			var jssor_slider1 = new $JssorSlider$("slider1_container", options);
			var jssor_slider2 = new $JssorSlider$("slider2_container", options);
			var jssor_slider3 = new $JssorSlider$("slider3_container", options);
			var jssor_slider4 = new $JssorSlider$("slider4_container", options);
			var jssor_slider5 = new $JssorSlider$("slider5_container", options);
			var jssor_slider6 = new $JssorSlider$("slider6_container", options);
            ScaleSlider(jssor_slider1 );
            ScaleSlider(jssor_slider2 );
            ScaleSlider(jssor_slider3 );
            ScaleSlider(jssor_slider4 );
            ScaleSlider(jssor_slider5 );
            ScaleSlider(jssor_slider6 );

            if (!navigator.userAgent.match(/(iPhone|iPod|iPad|BlackBerry|IEMobile)/)) {
                $(window).bind('resize', ScaleSlider);
            }


            //if (navigator.userAgent.match(/(iPhone|iPod|iPad)/)) {
            //    $(window).bind("orientationchange", ScaleSlider);
            //}
            //responsive code end
        });
    </script>
    
<?php 
//footer
include_once('include/_footer.inc');
?>
