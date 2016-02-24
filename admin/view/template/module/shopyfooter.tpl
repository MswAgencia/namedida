<?php echo $header; ?><?php echo $column_left; ?>

<?php 
	
	 

foreach ($languages as $language) { 
 
    
    if(empty($shopyfooter_top_bar_contact[$language["language_id"]])){$shopyfooter_top_bar_contact[$language["language_id"]] ="+91 98989898";}
    if(empty($shopyfooter_top_bar_email[$language["language_id"]])){$shopyfooter_top_bar_email[$language["language_id"]] ="support@shopyfooter.com";}
      
    
    
}
?>

<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
      	    <button onclick="sav_con()" class="btn btn-info"><span><?php echo $button_continue; ?></span></button>  
        <button type="submit" form="form-shopyfooter" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
       
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
  

     <script language="javascript">
    function sav_con(){
        $('#form-shopyfooter').append('<input type="hidden" id="continue" name="continue" value="1"  />');
        $('#form-shopyfooter').submit();
   }
    </script>



 </div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> 
    	<?php echo $error_warning; ?>

      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
<?php } if ($success) {
				echo '<div class="alert alert-success"> <i class="fa fa-check-circle"></i>' . $success . '</div>';
			} ?>
 

    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-shopyfooter" class="form-horizontal">
      <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">

      <br />
 
 
          <div class="col-sm-10">
          
         	  <div class="tab-pane" id="tab_footer">
			        <ul   class="nav nav-tabs">
			        	 <li class="active"><a data-toggle="tab" href="#contact_details"><?php echo $entry_contact_details; ?></a></li>
                  <li><a data-toggle="tab" href="#about_details"><?php echo $entry_about_details; ?></a></li>
			              <li><a data-toggle="tab" href="#tab_follow"><?php echo $entry_follow_title; ?></a></li>
			              <li><a data-toggle="tab" href="#tab_powered"><?php echo $entry_powered; ?></a></li>
			              <li><a data-toggle="tab" href="#tab_custom_column_footer">Custom Column</a></li>
			              <li><a data-toggle="tab" href="#tab_payments"><?php echo $entry_payments_title; ?></a></li>
			               <li><a href="#tab_support" data-toggle="tab"><span class="fa fa-support"> Support</a></li>
			        </ul>
        			<div class="tab-content">

        		    <div id="contact_details" class="tab-pane active">
           <h3><?php echo $entry_contact_title; ?><a class="shopyfooter_help" target="_blank" href="../image/help/contact_help.png">?<img src="../image/help/contact_help.png" /></a></h3>
          
                <hr />
        		    	                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_title_label; ?></label>
                  <div class="col-sm-5">
                    <select class="form-control" name="shopyfooter_contact_status">
                      <option value="0"<?php if($shopyfooter_contact_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($shopyfooter_contact_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                  <div class="col-sm-5">
                    <?php foreach ($languages as $language) { ?>
                    <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                      <input class="form-control" type="text" name="shopyfooter_contact[<?php echo $language['language_id']; ?>]" value="<?php echo isset($shopyfooter_contact[$language['language_id']]) ? $shopyfooter_contact[$language['language_id']] : ''; ?>" />
                    </div>
                    <?php } ?>
                  </div>
                </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_address; ?></label>
                      <div class="col-sm-5">
                        <select class="form-control" name="shopyfooter_address_status">
                          <option value="0"<?php if($shopyfooter_address_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                          <option value="1"<?php if($shopyfooter_address_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        </select>
                      </div>
                      <div class="col-sm-5">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="shopyfooter_address[<?php echo $language['language_id']; ?>]" value="<?php echo isset($shopyfooter_address[$language['language_id']]) ? $shopyfooter_address[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_mobile; ?></label>
                      <div class="col-sm-5">
                        <select class="form-control" name="shopyfooter_mobile_status">
                          <option value="0"<?php if($shopyfooter_mobile_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                          <option value="1"<?php if($shopyfooter_mobile_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        </select>
                      </div>
                      <div class="col-sm-5">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="shopyfooter_mobile[<?php echo $language['language_id']; ?>]" value="<?php echo isset($shopyfooter_mobile[$language['language_id']]) ? $shopyfooter_mobile[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                     <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_mobile1; ?></label>
                      <div class="col-sm-5">
                        <select class="form-control" name="shopyfooter_mobile1_status">
                          <option value="0"<?php if($shopyfooter_mobile1_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                          <option value="1"<?php if($shopyfooter_mobile1_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        </select>
                      </div>
                      <div class="col-sm-5">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="shopyfooter_mobile1[<?php echo $language['language_id']; ?>]" value="<?php echo isset($shopyfooter_mobile1[$language['language_id']]) ? $shopyfooter_mobile1[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_email; ?></label>
                      <div class="col-sm-5">
                        <select class="form-control" name="shopyfooter_email_status">
                          <option value="0"<?php if($shopyfooter_email_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                          <option value="1"<?php if($shopyfooter_email_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                        </select>
                      </div>
                      <div class="col-sm-5">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input class="form-control" type="text" name="shopyfooter_email[<?php echo $language['language_id']; ?>]" value="<?php echo isset($shopyfooter_email[$language['language_id']]) ? $shopyfooter_email[$language['language_id']] : ''; ?>" />
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                  </div>
                  <div id="about_details" class="tab-pane">
                    <h3><?php echo $entry_about_title; ?><a class="shopyfooter_help" target="_blank" href="../image/help/about_help.png">?<img src="../image/help/about_help.png" /></a></h3>
          
                <hr />
                    	                                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_title_label; ?></label>
                  <div class="col-sm-5">
                    <select class="form-control" name="shopyfooter_about_status">
                      <option value="0"<?php if($shopyfooter_about_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($shopyfooter_about_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                  <div class="col-sm-5">
                    <?php foreach ($languages as $language) { ?>
                    <div class="input-group"><span class="input-group-addon"> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                      <input class="form-control" type="text" name="shopyfooter_about[<?php echo $language['language_id']; ?>]" value="<?php echo isset($shopyfooter_about[$language['language_id']]) ? $shopyfooter_about[$language['language_id']] : ''; ?>" />
                    </div>
                    <?php } ?>
                  </div>
                </div>
                      <ul id="language10" class="nav nav-tabs">
                        <?php foreach ($languages as $language) { ?>
                        <li><a data-toggle="tab" href="#tab10-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                        <?php } ?>
                      </ul>
                      <div class="tab-content">
                        <?php foreach ($languages as $language) { ?>
                        <div id="tab10-language-<?php echo $language['language_id']; ?>" class="tab-pane">
                          <div class="form-group">
                            <label class="col-sm-2 control-label" ><?php echo $entry_custom_column; ?></label>
                            <div class="col-sm-10">
                              <textarea id="input-description10<?php echo $language['language_id']; ?>" name="shopyfooter_about_details[<?php echo $language['language_id']; ?>]" cols="50" rows="8" ><?php echo isset($shopyfooter_about_details[$language['language_id']]) ? $shopyfooter_about_details[$language['language_id']] : ''; ?></textarea>
                            </div>
                          </div>
                        </div>
                        <?php } ?>
                      </div>
                  
                  </div>
              <div id="tab_contact" class="tab-pane active">
                
 


                <br>
                <br>
         
              
               
              
              </div>
              <div id="tab_follow" class="tab-pane"> <br />
                <h3><?php echo $entry_follow_title; ?><a class="shopyfooter_help" target="_blank" href="../image/help/socials_help.png">?<img src="../image/help/socials_help.png" /></a></h3>
                <div class="info-help" style="text-align: left;">Note: Don't forget http:// before link.</div>
                <hr />
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../image/socialicons/facebook.png" alt=""><?php echo $entry_facebook_url; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="shopyfooter_facebook_id" value="<?php echo $shopyfooter_facebook_id; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../image/socialicons/twitter.png" alt=""><?php echo $entry_twitter_username; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="shopyfooter_twitter_username" value="<?php echo $shopyfooter_twitter_username; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../image/socialicons/google_plus.png" alt=""><?php echo $entry_gplus_id; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="shopyfooter_gplus_id" value="<?php echo $shopyfooter_gplus_id; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../image/socialicons/pinterest.png" alt=""><?php echo $entry_pint_id; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="shopyfooter_pint_id" value="<?php echo $shopyfooter_pint_id; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../image/socialicons/rss.png" alt=""><?php echo $entry_RSS; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="shopyfooter_rss" value="<?php echo $shopyfooter_rss; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../image/socialicons/blogger.png" alt=""><?php echo $entry_blogger; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="shopyfooter_blogger" value="<?php echo $shopyfooter_blogger; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../image/socialicons/myspace.png" alt=""><?php echo $entry_myspace; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="shopyfooter_myspace" value="<?php echo $shopyfooter_myspace; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../image/socialicons/linkedin.png" alt=""><?php echo $entry_linkedin; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="shopyfooter_linkedin" value="<?php echo $shopyfooter_linkedin; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../image/socialicons/evernote.png" alt=""><?php echo $entry_evernote; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="shopyfooter_evernote" value="<?php echo $shopyfooter_evernote; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../image/socialicons/dopplr.png" alt=""><?php echo $entry_dopplr; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="shopyfooter_dopplr" value="<?php echo $shopyfooter_dopplr; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" ><img style="margin-left:10px; float:right; margin-top: -7px;" src="../image/socialicons/ember.png" alt=""><?php echo $entry_ember; ?></label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="shopyfooter_ember" value="<?php echo $shopyfooter_ember; ?>" />
                  </div>
                </div>
      
 
              </div>
              <div id="tab_powered" class="tab-pane">
                <h3><?php echo $entry_powered; ?><a class="shopyfooter_help" target="_blank" href="../image/help/power_help.png">?<img src="../image/help/power_help.png" /></a></h3>
                <hr>
                <ul id="language7" class="nav nav-tabs">
                  <?php foreach ($languages as $language) { ?>
                  <li><a data-toggle="tab" href="#tab7-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                  <?php } ?>
                </ul>
                <div class="tab-content">
                  <?php foreach ($languages as $language) { ?>
                  <div class="tab-pane" id="tab7-language-<?php echo $language['language_id']; ?>">
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_custom_column; ?></label>
                      <div class="col-sm-10">
                        <textarea class="form-control" id="input-description7<?php echo $language['language_id']; ?>" name="shopyfooter_powered[<?php echo $language['language_id']; ?>]" cols="50" rows="8" id="shopyfooter_powered[<?php echo $language['language_id']; ?>]">
                        <?php echo isset($shopyfooter_powered[$language['language_id']]) ? $shopyfooter_powered[$language['language_id']] : ''; ?>
                        </textarea>
                      </div>
                    </div>
                  </div>
                  <?php } ?>
                </div>
              </div>
              <div id="tab_custom_column_footer" class="tab-pane">
                <h3><?php echo $entry_custom_column_title; ?><a class="shopyfooter_help" target="_blank" href="../image/help/customhtml_help.png">?<img src="../image/help/customhtml_help.png" /></a></h3>
                <hr>
                <div class="form-group">
                  <label class="col-sm-2 control-label" ><?php echo $entry_status; ?></label>
                  <div class="col-sm-10">
                    <select class="form-control" name="shopyfooter_custom_column_footer_status">
                      <option value="0"<?php if($shopyfooter_custom_column_footer_status == '0') echo ' selected="selected"';?>><?php echo $text_disabled; ?></option>
                      <option value="1"<?php if($shopyfooter_custom_column_footer_status == '1') echo ' selected="selected"';?>><?php echo $text_enabled; ?></option>
                    </select>
                  </div>
                </div>
                <ul id="language3" class="nav nav-tabs">
                  <?php foreach ($languages as $language) { ?>
                  <li><a data-toggle="tab" href="#tab3-language-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                  <?php } ?>
                </ul>
                <div class="tab-content">
                  <?php foreach ($languages as $language) { ?>
                  <div class="tab-pane" id="tab3-language-<?php echo $language['language_id']; ?>">
                    <div class="form-group">
                      <label class="col-sm-2 control-label" ><?php echo $entry_custom_column; ?></label>
                      <div class="col-sm-10">
                        <textarea class="form-control" id="input-description3<?php echo $language['language_id']; ?>" name="shopyfooter_custom_column_footer[<?php echo $language['language_id']; ?>]" cols="50" rows="8"><?php echo isset($shopyfooter_custom_column_footer[$language['language_id']]) ? $shopyfooter_custom_column_footer[$language['language_id']] : ''; ?></textarea>
                      </div>
                    </div>
                  </div>
                  <?php } ?>
                </div>
              </div>
              <div id="tab_payments" class="tab-pane"> <br />
                <h3><?php echo $entry_payments_title; ?><a class="shopyfooter_help" target="_blank" href="../image/help/payment_help.png">?<img src="../image/help/payment_help.png" /></a></h3>
                <br />
                <div class="well">
                  <table class="table table-hover" style="margin-bottom:0px;">
                    <tr>
                      <td style="border:none;">Upload your Custom payment image:</td>
                      <td style="border:none;"><input class="form-control" type="checkbox" name="shopyfooter_custom_payment_image_status"<?php if ($shopyfooter_custom_payment_image_status) echo 'checked="checked"';?>></td>
                      <td style="border:none;"><a href="" id="payment-thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $shopyfooter_custom_payment_image_preview; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                        <input type="hidden" name="shopyfooter_custom_payment_image" value="<?php echo $shopyfooter_custom_payment_image; ?>" id="shopyfooter-custom-payment-input-image" /></td>
                      <td style="border:none;">URL:
                        <input class="form-control" type="text" name="shopyfooter_custom_payment_image_url" value="<?php echo $shopyfooter_custom_payment_image_url; ?>" /></td>
                    </tr>
                  </table>
                </div>
                <h3>shopyfooter Payment Images:</h3>
                <br />
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td><?php echo $entry_url; ?></td>
                    </tr>
                  </thead>
                  <tr>
                    <td style="width:25%;"><img style="margin-right:10px;" src="../image/payments/payment_paypal.png" alt="paypal" title="PayPal"><?php echo $entry_paypal; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_paypal"<?php if ($shopyfooter_paypal) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="shopyfooter_paypal_url" value="<?php echo $shopyfooter_paypal_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../image/payments/payment_american.png" alt="american-express" title="American Express"><?php echo $entry_american; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_american"<?php if ($shopyfooter_american) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="shopyfooter_american_url" value="<?php echo $shopyfooter_american_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../image/payments/payment_2checkout.png" alt="2checkout" title="2checkout"><?php echo $entry_2checkout; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_2checkout"<?php if ($shopyfooter_2checkout) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="shopyfooter_2checkout_url" value="<?php echo $shopyfooter_2checkout_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../image/payments/payment_maestro.png" alt="maestro" title="Maestro"><?php echo $entry_maestro; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_maestro"<?php if ($shopyfooter_maestro) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="shopyfooter_maestro_url" value="<?php echo $shopyfooter_maestro_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../image/payments/payment_discover.png" alt="discover" title="Discover"><?php echo $entry_discover; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_discover"<?php if ($shopyfooter_discover) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="shopyfooter_discover_url" value="<?php echo $shopyfooter_discover_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../image/payments/payment_mastercard.png" alt="mastercard" title="MasterCard"><?php echo $entry_mastercard; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_mastercard"<?php if ($shopyfooter_mastercard) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="shopyfooter_mastercard_url" value="<?php echo $shopyfooter_mastercard_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../image/payments/payment_visa.png" alt="visa" title="Visa"><?php echo $entry_visa; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_visa"<?php if ($shopyfooter_visa) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="shopyfooter_visa_url" value="<?php echo $shopyfooter_visa_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img  style="margin-right:10px;" src="../image/payments/payment_sagepay.png" alt="sagepay" title="sagepay"><?php echo $entry_sagepay; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_sagepay"<?php if ($shopyfooter_sagepay) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="shopyfooter_sagepay_url" value="<?php echo $shopyfooter_sagepay_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;"  src="../image/payments/payment_moneybookers.png" alt="moneybookers" title="Moneybookers"><?php echo $entry_moneybookers; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_moneybookers"<?php if ($shopyfooter_moneybookers) echo 'checked="checked"';?>>
                    <td><input class="form-control" type="text" name="shopyfooter_moneybookers_url" value="<?php echo $shopyfooter_moneybookers_url; ?>" /></td>
                    </td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../image/payments/payment_cirrus.png" alt="cirrus" title="Cirrus"><?php echo $entry_cirrus; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_cirrus"<?php if ($shopyfooter_cirrus) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="shopyfooter_cirrus_url" value="<?php echo $shopyfooter_cirrus_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../image/payments/payment_delta.png" alt="delta" title="Delta"><?php echo $entry_delta; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_delta"<?php if ($shopyfooter_delta) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="shopyfooter_delta_url" value="<?php echo $shopyfooter_delta_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../image/payments/payment_direct.png" alt="direct" title="direct"><?php echo $entry_direct; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_direct"<?php if ($shopyfooter_direct) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="shopyfooter_direct_url" value="<?php echo $shopyfooter_direct_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../image/payments/payment_google.png" alt="google" title="google"><?php echo $entry_google; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_google"<?php if ($shopyfooter_google) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="shopyfooter_google_url" value="<?php echo $shopyfooter_google_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../image/payments/payment_solo.png" alt="solo" title="solo"><?php echo $entry_solo; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_solo"<?php if ($shopyfooter_solo) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="shopyfooter_solo_url" value="<?php echo $shopyfooter_solo_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../image/payments/payment_switch.png" alt="switch" title="switch"><?php echo $entry_switch; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_switch"<?php if ($shopyfooter_switch) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="shopyfooter_switch_url" value="<?php echo $shopyfooter_switch_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../image/payments/payment_western_union.png" alt="western_union" title="western union"><?php echo $entry_western_union; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_western_union"<?php if ($shopyfooter_western_union) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="shopyfooter_western_union_url" value="<?php echo $shopyfooter_western_union_url; ?>" /></td>
                  </tr>
                  <tr>
                    <td><img style="margin-right:10px;" src="../image/payments/payment_ebay.png" alt="ebay" title="ebay"><?php echo $entry_ebay; ?></td>
                    <td><input class="form-control" type="checkbox" name="shopyfooter_ebay"<?php if ($shopyfooter_ebay) echo 'checked="checked"';?>></td>
                    <td><input class="form-control" type="text" name="shopyfooter_ebay_url" value="<?php echo $shopyfooter_ebay_url; ?>" /></td>
                  </tr>
                </table>
              </div>

		<div class="tab-pane" id="tab_support">
          <div class="col-sm-12">
          <div class="form-group">
            
            <div class="col-sm-10">
           
        
		 
          <p><strong>Thank you for buying our theme!</strong> </p>
<p>If you have any issue while using please keep contact us via: </p>  
<strong>Website: </strong><a target="_blank" href="http://focusthemes.com/content/request-installation">http://focusthemes.com</a><br/>
 <strong>Email: </strong><a href="mailto:focusthemes@gmail.com">focusthemes@gmail.com</a>	<br/><br/>
          <p>Dont forget to rate theme with stars in <a target="_blank" href="#"> here</a>. This little thing helps me to make new theme updates! Thank you!</p>
          <h4>Follow me on twitter and facebook to get noticed about all theme updates and news!</h4>
        <a href="https://twitter.com/focustheme"><img src="http://any-themes.com/images/followtwitter.png" /></a> <a href="http://www.facebook.com/pages/Focusthemes-Opencart-CLUB/101197836719690"><img src="http://any-themes.com/images/followfb.png" /></a></div><!-- and Support -->
            </div>
          </div>
         </div>
            		</div>
         	  </div>
 
          </div>
        </div>

 


 

      
 
     
    </form>
  </div>
</div>
</div>

 <script language="javascript">
 
//$('#tabs a').tabs(); 
//$('.mytabs a').tabs();
//$('#languages a').tabs();
//$('#tab-pages-layout a').tabs();
 $('#moduletabs a').click( function(){  
 	$.cookie("actived_tab", $(this).attr("href") );
 } );
/* 

*/ 
// $('#module li:first-child a').tab('show');

$( '.nav-tablangs').each( function(){
	$(this).find('li:first-child a').tab('show');
} );


if( $.cookie("actived_tab") !="undefined" ){ 
	$('#moduletabs a').each( function(){
		if( $(this).attr("href") ==  $.cookie("actived_tab") ){ 
			$(this).parent().tab('show');
	 		$("#tab-contents > .tab-pane").removeClass('active');
	 		$( $.cookie("actived_tab") ).addClass( 'active' );		
			return ;
		}
	} );
}

 
//--></script>
<style type="text/css">
.shopyfooter_help {
    width: 20px;
    height: 20px;
    line-height: 20px;
    border-radius: 50%;
    font-size: 13px;
    font-weight: bold;
        position: relative;
    background: #84E49B;
    display: inline-block;
    text-align: center;
    color: #FFF!important;
    text-decoration: none;
    margin-left: 8px;
}
a.shopyfooter_help img {
    box-shadow: 0 0px 12px rgba(0, 0, 0, 0.175);
    position: absolute;
    left: 20px;
    top: 0px;
    z-index: 9999;
    display: none;
}
a.shopyfooter_help:hover img{
  display: block;
}
</style>
<script type="text/javascript"> <!--

<?php foreach ($languages as $language) { ?>
$('#input-description8<?php echo $language['language_id']; ?>, #input-description9<?php echo $language['language_id']; ?>, #input-description2<?php echo $language['language_id']; ?>, #input-description4<?php echo $language['language_id']; ?>, #input-description5<?php echo $language['language_id']; ?>, #input-description10<?php echo $language['language_id']; ?>, #input-description7<?php echo $language['language_id']; ?>, #input-description3<?php echo $language['language_id']; ?>, #input-description11<?php echo $language['language_id']; ?>, #input-description6<?php echo $language['language_id']; ?>').summernote({height: 300});
<?php } ?>
//--></script>
<script type="text/javascript"><!--
$('#language8 a:first,#language9 a:first,#language2 a:first,#language4 a:first,#language5 a:first,#language10 a:first,#language7 a:first,#language3 a:first,#language11 a:first,#language6 a:first').tab('show');
//--></script>


</div>
<?php echo $footer; ?>