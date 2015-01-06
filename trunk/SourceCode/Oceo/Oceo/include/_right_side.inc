<?php
include_once('class/model_advertising.php');
$objAdvertising = new Model_Advertising($objConnection);
//$_parentCatID get from parent page
$condition = global_mapping::AdTypeID.'=\'1\' and '. global_mapping::ArticleTypeID.' ='.$_parentCatID;
$allAds = $objAdvertising->getAllAdvertising(0,'',$condition,'');

?>	
<?php 
echo  '<script>
		jQuery(document).ready(function ($) {
			slide.init("slider'.$_parentCatID.'_container");
		});
		</script>';
?>
 
<div id="right-slider" >
	<!-- Jssor Slider Begin -->
		<!-- You can move inline styles to css file or css block. -->
		<div id="slider<?php echo $_parentCatID?>_container" style="position: relative; top: 0px; left: 0px; width: 600px; height: 240px; overflow: hidden; ">

			<!-- Loading Screen -->
			<div u="loading" style="position: absolute; top: 0px; left: 0px;">
				<div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
					background-color: #000000; top: 0px; left: 0px;width: 100%;height:100%;">
				</div>
				<div style="position: absolute; display: block; background: url(../images/jssor/loading.gif) no-repeat center center;
					top: 0px; left: 0px;width: 100%;height:100%;">
				</div>
			</div>

			<!-- Slides Container -->
			<div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 600px; height: 240px; overflow: hidden;">
				<?php

				foreach($allAds as $item)
				{
					echo '<div>';
	echo '	<a href="'.$item[global_mapping::PreferLink].'" target="_self"><img  u="image" src="'.$item[global_mapping::ImageLink].'" /></a>';
					echo '</div>';
				}
				?>
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
                background: url(../images/jssor/b05.png) no-repeat;
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
			<!-- Bullet Navigator Skin Begin -->
			<!-- bullet navigator container -->
			<div u="navigator" class="jssorb05" style="position: absolute; bottom: 16px; right: 6px;">
				<!-- bullet navigator item prototype -->
				<div u="prototype" style="POSITION: absolute; WIDTH: 16px; HEIGHT: 16px;"></div>
			</div>
			<!-- Bullet Navigator Skin End -->
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
                background: url(../images/jssor/a12.png) no-repeat;
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
			<!-- Arrow Navigator Skin Begin -->
			
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
