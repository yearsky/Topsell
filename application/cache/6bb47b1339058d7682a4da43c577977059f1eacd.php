<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="format-detection" content="telephone=no" /> <!-- disable auto telephone linking in iOS -->
	<title><?php echo $__env->yieldContent('title'); ?></title>
	<style type="text/css">
		/* RESET STYLES */
		html { background-color:#E1E1E1; margin:0; padding:0; }
		body, #bodyTable, #bodyCell, #bodyCell{height:100% !important; margin:0; padding:0; width:100% !important;font-family:Helvetica, Arial, "Lucida Grande", sans-serif;}
		table{border-collapse:collapse;}
		table[id=bodyTable] {width:100%!important;margin:auto;max-width:500px!important;color:#7A7A7A;font-weight:normal;}
		img, a img{border:0; outline:none; text-decoration:none;height:auto; line-height:100%;}
		a {text-decoration:none !important;border-bottom: 1px solid;}
		h1, h2, h3, h4, h5, h6{color:#5F5F5F; font-weight:normal; font-family:Helvetica; font-size:20px; line-height:125%; text-align:Left; letter-spacing:normal;margin-top:0;margin-right:0;margin-bottom:10px;margin-left:0;padding-top:0;padding-bottom:0;padding-left:0;padding-right:0;}

		/* CLIENT-SPECIFIC STYLES */
		.ReadMsgBody{width:100%;} .ExternalClass{width:100%;} /* Force Hotmail/Outlook.com to display emails at full width. */
		.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div{line-height:100%;} /* Force Hotmail/Outlook.com to display line heights normally. */
		table, td{mso-table-lspace:0pt; mso-table-rspace:0pt;} /* Remove spacing between tables in Outlook 2007 and up. */
		#outlook a{padding:0;} /* Force Outlook 2007 and up to provide a "view in browser" message. */
		img{-ms-interpolation-mode: bicubic;display:block;outline:none; text-decoration:none;} /* Force IE to smoothly render resized images. */
		body, table, td, p, a, li, blockquote{-ms-text-size-adjust:100%; -webkit-text-size-adjust:100%; font-weight:normal!important;} /* Prevent Windows- and Webkit-based mobile platforms from changing declared text sizes. */
		.ExternalClass td[class="ecxflexibleContainerBox"] h3 {padding-top: 10px !important;} /* Force hotmail to push 2-grid sub headers down */

		/* /\/\/\/\/\/\/\/\/ TEMPLATE STYLES /\/\/\/\/\/\/\/\/ */

		/* ========== Page Styles ========== */
		h1{display:block;font-size:26px;font-style:normal;font-weight:normal;line-height:100%;}
		h2{display:block;font-size:20px;font-style:normal;font-weight:normal;line-height:120%;}
		h3{display:block;font-size:17px;font-style:normal;font-weight:normal;line-height:110%;}
		h4{display:block;font-size:18px;font-style:italic;font-weight:normal;line-height:100%;}
		.flexibleImage{height:auto;}
		.linkRemoveBorder{border-bottom:0 !important;}
		table[class=flexibleContainerCellDivider] {padding-bottom:0 !important;padding-top:0 !important;}

		body, #bodyTable{background-color:#E1E1E1;}
		#emailHeader{background-color:#E1E1E1;}
		#emailBody{background-color:#FFFFFF;}
		#emailFooter{background-color:#E1E1E1;}
		.nestedContainer{background-color:#F8F8F8; border:1px solid #CCCCCC;}
		.emailButton{background-color:#205478; border-collapse:separate;}
		.buttonContent{color:#FFFFFF; font-family:Helvetica; font-size:18px; font-weight:bold; line-height:100%; padding:15px; text-align:center;}
		.buttonContent a{color:#FFFFFF; display:block; text-decoration:none!important; border:0!important;}
		.emailCalendar{background-color:#FFFFFF; border:1px solid #CCCCCC;}
		.emailCalendarMonth{background-color:#205478; color:#FFFFFF; font-family:Helvetica, Arial, sans-serif; font-size:16px; font-weight:bold; padding-top:10px; padding-bottom:10px; text-align:center;}
		.emailCalendarDay{color:#205478; font-family:Helvetica, Arial, sans-serif; font-size:60px; font-weight:bold; line-height:100%; padding-top:20px; padding-bottom:20px; text-align:center;}
		.imageContentText {margin-top: 10px;line-height:0;}
		.imageContentText a {line-height:0;}
		#invisibleIntroduction {display:none !important;} 
		span[class=ios-color-hack] a {color:#275100!important;text-decoration:none!important;} 
		span[class=ios-color-hack2] a {color:#205478!important;text-decoration:none!important;}
		span[class=ios-color-hack3] a {color:#8B8B8B!important;text-decoration:none!important;}

		.a[href^="tel"], a[href^="sms"] {text-decoration:none!important;color:#606060!important;pointer-events:none!important;cursor:default!important;}
		.mobile_link a[href^="tel"], .mobile_link a[href^="sms"] {text-decoration:none!important;color:#606060!important;pointer-events:auto!important;cursor:default!important;}
		@media  only screen and (max-width: 480px){
			body{width:100% !important; min-width:100% !important;} 
			table[id="emailHeader"],
			table[id="emailBody"],
			table[id="emailFooter"],
			table[class="flexibleContainer"],
			td[class="flexibleContainerCell"] {width:100% !important;}
			td[class="flexibleContainerBox"], td[class="flexibleContainerBox"] table {display: block;width: 100%;text-align: left;}
			td[class="imageContent"] img {height:auto !important; width:100% !important; max-width:100% !important; }
			img[class="flexibleImage"]{height:auto !important; width:100% !important;max-width:100% !important;}
			img[class="flexibleImageSmall"]{height:auto !important; width:auto !important;}
			table[class="flexibleContainerBoxNext"]{padding-top: 10px !important;}
			table[class="emailButton"]{width:100% !important;}
			td[class="buttonContent"]{padding:0 !important;}
			td[class="buttonContent"] a{padding:15px !important;}

		}

		@media  only screen and (-webkit-device-pixel-ratio:.75){
		}

		@media  only screen and (-webkit-device-pixel-ratio:1){
			
		}

		@media  only screen and (-webkit-device-pixel-ratio:1.5){
			/* Put CSS for high density (hdpi) Android layouts in here */
		}
		=====================================================*/
		@media  only screen and (min-device-width : 320px) and (max-device-width:568px) {

		}
		/* end IOS targeting */
	</style>
</head>
<body bgcolor="#E1E1E1" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">

	<center style="background-color:#E1E1E1;">
		<table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" id="bodyTable" style="table-layout: fixed;max-width:100% !important;width: 100% !important;min-width: 100% !important;">
			<tr>
				<td align="center" valign="top" id="bodyCell">
					<table bgcolor="#E1E1E1" border="0" cellpadding="0" cellspacing="0" width="500" id="emailHeader">

						<!-- HEADER ROW // -->
						<tr>
							<td align="center" valign="top">
								<!-- CENTERING TABLE // -->
								<table border="0" cellpadding="0" cellspacing="0" width="100%">
									<tr>
										<td align="center" valign="top">
											<!-- FLEXIBLE CONTAINER // -->
											<table border="0" cellpadding="10" cellspacing="0" width="500" class="flexibleContainer">
												<tr>
													<td valign="top" width="500" class="flexibleContainerCell">

														<!-- CONTENT TABLE // -->
														<table align="left" border="0" cellpadding="0" cellspacing="0" width="100%">
															<tr>
																<td align="left" valign="middle" id="invisibleIntroduction" class="flexibleContainerBox" style="display:none !important; mso-hide:all;">
																	<table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width:100%;">
																		<tr>
																			<td align="left" class="textContent">
																				<div style="font-family:Helvetica,Arial,sans-serif;font-size:13px;color:#828282;text-align:center;line-height:120%;">
																					<?php echo $__env->yieldContent('description'); ?>
																				</div>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
											<!-- // FLEXIBLE CONTAINER -->
										</td>
									</tr>
								</table>
								<!-- // CENTERING TABLE -->
							</td>
						</tr>
						<!-- // END -->

					</table>
				
					<table bgcolor="#FFFFFF"  border="0" cellpadding="0" cellspacing="0" width="500" id="emailBody">
						<tr>
							<td align="center" valign="top">
								<!-- CENTERING TABLE // -->
								<!--
									The centering table keeps the content
									tables centered in the emailBody table,
									in case its width is set to 100%.
								-->
								<table border="0" cellpadding="0" cellspacing="0" width="100%" style="color:#FFFFFF;" bgcolor="#fff">
									<tr>
										<td align="center" valign="top">
											<table border="0" cellpadding="0" cellspacing="0" width="500" class="flexibleContainer">
												<tr>
													<td align="center" valign="top" width="500" class="flexibleContainerCell">
														<table border="0" cellpadding="30" cellspacing="0" width="100%">
															<tr>
																<td align="center" valign="top" class="textContent">
																	<h1 style="color:#FFFFFF;line-height:100%;font-family:Helvetica,Arial,sans-serif;font-size:35px;font-weight:normal;margin-bottom:0;text-align:center;">
																		<img src="<?php echo e($config->logodir); ?>" style="width:300px;margin-left:auto;margin-right:auto">
																	</h1>
																</td>
															</tr>
														</table>
														<!-- // CONTENT TABLE -->

													</td>
												</tr>
											</table>
											<!-- // FLEXIBLE CONTAINER -->
										</td>
									</tr>
								</table>
								<!-- // CENTERING TABLE -->
							</td>
						</tr>
						<tr mc:hideable>
								<td align="center" valign="top">
									<!-- CENTERING TABLE // -->
									<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#EA1E63">
										<tr>
											<td align="center" valign="top">
												<!-- FLEXIBLE CONTAINER // -->
												<table border="0" cellspacing="0" width="500" class="flexibleContainer">
													<tr>
														<td valign="top" width="500" class="flexibleContainerCell"  style="padding:8px 30px 8px 30px;">

															<!-- CONTENT TABLE // -->
															<table align="left" border="0" cellpadding="0" cellspacing="0" width="100%">
																<tr>
																	<td align="center" valign="top" class="flexibleContainerBox">
																		<table border="0" cellpadding="0" cellspacing="0" style="max-width: 100%;">
																			<tr>
																				<td align="center" class="textContent">
																					<h3 style="color:#fff;margin-top:10px;"><?php echo $__env->yieldContent('header'); ?></h3>
																				</td>
																			</tr>
																		</table>
																	</td>
																</tr>
															</table>
															<!-- // CONTENT TABLE -->

														</td>
													</tr>
												</table>
												<!-- // FLEXIBLE CONTAINER -->
											</td>
										</tr>
									</table>
									<!-- // CENTERING TABLE -->
								</td>
							</tr>						
						<?php echo $__env->yieldContent('content'); ?>
						<!-- MODULE ROW // -->
						<!-- MODULE ROW // -->
						<tr>
							<td align="center" valign="top">
								<!-- CENTERING TABLE // -->
								<table border="0" cellpadding="0" cellspacing="0" width="100%">
									<tr>
										<td align="center" valign="top">
											<!-- FLEXIBLE CONTAINER // -->
											<table border="0" cellpadding="0" cellspacing="0" width="500" class="flexibleContainer">
												<tr>
													<td valign="top" width="500" class="flexibleContainerCell">

														<!-- CONTENT TABLE // -->
														<table align="left" border="0" cellpadding="0" cellspacing="0" width="100%">
															<tr>
																<td align="left" valign="top" class="flexibleContainerBox" style="background-color:#4f4f4f;">
																	<table border="0" cellpadding="30" cellspacing="0" width="100%" style="max-width:100%;">
																		<tr>
																			<td align="center" class="textContent" style="vertical-align:middle">
																				<img src="<?php echo e($config->icondir); ?>" style="width:80px;margin-top:8px;">
																			</td>
																		</tr>
																	</table>
																</td>
																<td align="right" valign="top" class="flexibleContainerBox" style="background-color:#5F5F5F;">
																	<table class="flexibleContainerBoxNext" border="0" cellpadding="30" cellspacing="0" width="100%" style="max-width:100%;">
																		<tr>
																			<td align="left" class="textContent">
																				<h3 style="color:#FA5D92;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:15px;font-weight:bold;margin-top:0;margin-bottom:3px;text-align:left;"><?php echo e($config->name); ?></h3>
																				<div style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:12px;margin-bottom:0;color:#ddd;line-height:135%;">
																					<?php echo e($config->email); ?><br>
																					<?php echo e($config->phone); ?><br><br>
																					<?php echo e($config->address); ?><br>
																				</div>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
														<!-- // CONTENT TABLE -->

													</td>
												</tr>
											</table>
											<!-- // FLEXIBLE CONTAINER -->
										</td>
									</tr>
								</table>
								<!-- // CENTERING TABLE -->
							</td>
						</tr>
						<!-- // MODULE ROW -->



					</table>
				
					<table bgcolor="#E1E1E1" border="0" cellpadding="0" cellspacing="0" width="500" id="emailFooter">
						<tr>
							<td align="center" valign="top">
								<!-- CENTERING TABLE // -->
								<table border="0" cellpadding="0" cellspacing="0" width="100%">
									<tr>
										<td align="center" valign="top">
											&nbsp;
											<!-- // FLEXIBLE CONTAINER -->
										</td>
									</tr>
								</table>
								<!-- // CENTERING TABLE -->
							</td>
						</tr>

					</table>
					<!-- // END -->

				</td>
			</tr>
		</table>
	</center>
</body>
</html>
