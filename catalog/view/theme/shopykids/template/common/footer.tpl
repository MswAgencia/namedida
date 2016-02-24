</div>
<footer>
  <div class="container">
    <div class="row footer-area">



  <?php  
    global $config; $lang = (int)$config->get('config_language_id'); 
$shopyfooter_contact = $config->get('shopyfooter_contact');
$shopyfooter_about = $config->get('shopyfooter_about');
$shopyfooter_about_details = $config->get('shopyfooter_about_details');

?>
  <!-- Custom Column for Footer Start-->
  <?php if($config->get('shopyfooter_custom_column_footer_status')== 1) {
    $shopyfooter_custom_column_footer = $config->get('shopyfooter_custom_column_footer');       
    
  if((isset($shopyfooter_custom_column_footer[$lang]) && $shopyfooter_custom_column_footer[$lang] != '')) { ?>
<div class="custom-text col-sm-12"> 
  <?php if((isset($shopyfooter_custom_column_footer[$lang]) && $shopyfooter_custom_column_footer[$lang] != '')) { ?>
      <?php echo html_entity_decode($shopyfooter_custom_column_footer[$lang], ENT_QUOTES, 'UTF-8'); ?>
    <?php } ?>
</div>
  <?php } ?>
  <?php } ?>
  <!-- Custom Column for Footer End-->
  <div class="about_details column col-lg-4 col-md-4 col-sm-12 col-xs-12">
  <?php if(isset($shopyfooter_about[$lang]) && $shopyfooter_about[$lang] != '') { ?>
  <h5><?php echo $shopyfooter_about[$lang]; ?></h5>
  <?php } ?>
  <p>
  <?php  if((isset($shopyfooter_about[$lang]) && $shopyfooter_about[$lang] != '') || (isset($shopyfooter_about_details[$lang]) && $shopyfooter_about_details[$lang] != '')) {  
  $shopyfooter_about_details = $config->get('shopyfooter_about_details'); if(isset($shopyfooter_about_details[$lang])){echo html_entity_decode($shopyfooter_about_details[$lang], ENT_QUOTES, 'UTF-8');} } ?>
 </p>
  <?php

// If shopyfooter module is enabled
  
if($config->get('shopyfooter_facebook_id') != '' || $config->get('shopyfooter_twitter_username') != '' || $config->get('shopyfooter_gplus_id') != '' || $config->get('shopyfooter_pint_id') != '' || $config->get('shopyfooter_rss') != '' || $config->get('shopyfooter_blogger') != '' || $config->get('shopyfooter_myspace') != '' || $config->get('shopyfooter_linkedin') != '' || $config->get('shopyfooter_evernote') != '' || $config->get('shopyfooter_dopplr') != '' || $config->get('shopyfooter_ember') != '' || $config->get('shopyfooter_flickr') != '' || $config->get('shopyfooter_picasa_web') != '' || $config->get('shopyfooter_youtube') != '' || $config->get('shopyfooter_technorati') != '' || $config->get('shopyfooter_grooveshark') != '' || $config->get('shopyfooter_vimeo') != '' || $config->get('shopyfooter_sharethis') != '' || $config->get('shopyfooter_yahoobuzz') != '' || $config->get('shopyfooter_viddler') != '' || $config->get('shopyfooter_skype') != '' || $config->get('shopyfooter_google_googletalk') != '' || $config->get('shopyfooter_digg') != '' || $config->get('shopyfooter_reddit') != '' || $config->get('shopyfooter_delicious') != '' || $config->get('shopyfooter_stumbleupon') != '' || $config->get('shopyfooter_friendfeed') != '' || $config->get('shopyfooter_tumblr') != '' || $config->get('shopyfooter_yelp') != '' || $config->get('shopyfooter_posterous') != '' || $config->get('shopyfooter_bebo') != '' || $config->get('shopyfooter_virb') != '' || $config->get('shopyfooter_last_fm') != '' || $config->get('shopyfooter_pandora') != '' || $config->get('shopyfooter_mixx') != '' || $config->get('shopyfooter_newsvine') != '' || $config->get('shopyfooter_openid') != '' || $config->get('shopyfooter_readernaut') != '' || $config->get('shopyfooter_xing_me') != '' || $config->get('shopyfooter_instagram') != '' || $config->get('shopyfooter_spotify') != '' || $config->get('shopyfooter_forrst') != '' || $config->get('shopyfooter_viadeo') != '' || $config->get('shopyfooter_vk_com') != '') { ?>
    <div class="social pull-left flip">
    <?php if($config->get('shopyfooter_facebook_id') != '') { ?>
        <a href="<?php echo $config->get('shopyfooter_facebook_id'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/facebook.png" alt="Facebook" title="Facebook"></a>
        <?php } ?>
<?php if($config->get('shopyfooter_twitter_username') != '') { ?>
<a href="<?php echo $config->get('shopyfooter_twitter_username'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/twitter.png" alt="Twitter" title="Twitter"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_gplus_id') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_gplus_id'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/google_plus.png" alt="Google+" title="Google+"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_pint_id') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_pint_id'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/pinterest.png" alt="Pinterest" title="Pinterest"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_rss') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_rss'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/rss.png" alt="RSS" title="RSS"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_blogger') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_blogger'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/blogger.png" alt="Blogger" title="Blogger"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_myspace') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_myspace'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/myspace.png" alt="myspace" title="MySpace"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_linkedin') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_linkedin'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/linkedin.png" alt="linkedin" title="LinkedIn"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_evernote') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_evernote'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/evernote.png" alt="evernote" title="evernote"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_dopplr') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_dopplr'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/dopplr.png" alt="dopplr" title="dopplr"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_ember') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_ember'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/ember.png" alt="ember" title="ember"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_flickr') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_flickr'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/flickr.png" alt="flickr" title="Flickr"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_picasa_web') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_picasa_web'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/picasa.png" alt="picasa" title="Picasa"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_youtube') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_youtube'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/youtube.png" alt="YouTube" title="YouTube"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_technorati') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_technorati'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/technorati.png" alt="technorati" title="technorati"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_grooveshark') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_grooveshark'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/grooveshark.png" alt="grooveshark" title="grooveshark"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_vimeo') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_vimeo'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/vimeo.png" alt="Vimeo" title="Vimeo"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_sharethis') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_sharethis'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/sharethis.png" alt="sharethis" title="ShareThis"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_yahoobuzz') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_yahoobuzz'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/yahoobuzz.png" alt="yahoobuzz" title="yahoobuzz"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_viddler') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_viddler'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/viddler.png" alt="viddler" title="viddler"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_skype') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_skype'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/skype.png" alt="skype" title="Skype"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_google_googletalk') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_google_googletalk'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/googletalk.png" alt="googletalk" title="Google googletalk"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_digg') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_digg'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/digg.png" alt="digg" title="Digg"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_reddit') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_reddit'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/reddit.png" alt="reddit" title="Reddit"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_delicious') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_delicious'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/delicious.png" alt="delicious" title="Delicious"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_stumbleupon') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_stumbleupon'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/stumbleupon.png" alt="stumbleupon" title="StumbleUpon"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_friendfeed') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_friendfeed'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/friendfeed.png" alt="friendfeed" title="FriendFeed"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_tumblr') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_tumblr'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/tumblr.png" alt="tumblr" title="Tumblr"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_yelp') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_yelp'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/yelp.png" alt="yelp" title="Yelp"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_posterous') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_posterous'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/posterous.png" alt="posterous" title="posterous"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_bebo') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_bebo'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/bebo.png" alt="bebo" title="Bebo"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_virb') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_virb'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/virb.png" alt="virb" title="virb"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_last_fm') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_last_fm'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/lastfm.png" alt="lastfm" title="Last.fm"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_pandora') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_pandora'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/pandora.png" alt="pandora" title="pandora"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_mixx') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_mixx'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/mixx.png" alt="mixx" title="mixx"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_newsvine') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_newsvine'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/newsvine.png" alt="newsvine" title="Newsvine"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_openid') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_openid'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/openid.png" alt="openid" title="openid"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_readernaut') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_readernaut'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/readernaut.png" alt="readernaut" title="readernaut"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_xing_me') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_xing_me'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/xing.png" alt="xing" title="xing.me"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_instagram') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_instagram'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/instagram.png" alt="instagram" title="Instagram"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_spotify') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_spotify'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/spotify.png" alt="spotify" title="Spotify"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_forrst') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_forrst'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/forrst.png" alt="forrst" title="Forrst"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_viadeo') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_viadeo'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/viadeo.png" alt="viadeo" title="Viadeo"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_vk_com') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_vk_com'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/vk.png" alt="vk" title="VK.com"> </a>
      <?php } ?>
 
    </div>
    <?php } ?>
 

  </div>

  

      <?php if ($informations) { ?>
      <div class=" col-lg-2 col-md-2 col-sm-3 col-xs-12">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $information['title']; ?></a></li>
          <?php } ?>
            <li><a href="<?php echo $contact; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_contact; ?></a></li>
        </ul>
      </div>
      <?php } ?>
      
      <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_special; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_newsletter; ?></a></li>
           <li><a href="<?php echo $return; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_return; ?></a></li>
        </ul>
      </div>
        <?php  
   
$shopyfooter_contact = $config->get('shopyfooter_contact');
$shopyfooter_address = $config->get('shopyfooter_address');
$shopyfooter_mobile = $config->get('shopyfooter_mobile');
$shopyfooter_mobile1 = $config->get('shopyfooter_mobile1');
$shopyfooter_email = $config->get('shopyfooter_email');

if((isset($shopyfooter_address[$lang]) && $shopyfooter_address[$lang] != '') || (isset($shopyfooter_contact[$lang]) && $shopyfooter_contact[$lang] != '') || (isset($shopyfooter_mobile[$lang]) && $shopyfooter_mobile[$lang] != '') || (isset($shopyfooter_mobile1[$lang]) && $shopyfooter_mobile1[$lang] != '') || (isset($shopyfooter_email[$lang]) && $shopyfooter_email[$lang] != '')) { ?>
<div class="contact col-lg-2 col-md-2 col-sm-3 col-xs-12">
      <?php if($config->get('shopyfooter_contact_status')== 1) { if(isset($shopyfooter_contact[$lang]) && $shopyfooter_contact[$lang] != '') { ?>
    <h5><?php echo $shopyfooter_contact[$lang]; ?></h5>
    <?php } ?><?php } ?>
    
    <?php if($config->get('shopyfooter_address_status') == 1 || $config->get('shopyfooter_mobile_status') == 1 || $config->get('shopyfooter_email_status') == 1) { ?>
    <ul class="column-contacts">
      <?php if($config->get('shopyfooter_address_status')== 1) { if(isset($shopyfooter_address[$lang]) && $shopyfooter_address[$lang] != '') { ?>
      <li class="address"><i class="fa fa-map-marker"></i><?php echo $shopyfooter_address[$lang]; ?></li>
      <?php } ?><?php } ?>
      <?php if($config->get('shopyfooter_mobile_status')== 1) { if(isset($shopyfooter_mobile[$lang]) && $shopyfooter_mobile[$lang] != '') { ?>
      <li class="mobile"><i class="fa fa-phone"></i><?php echo $shopyfooter_mobile[$lang]; ?>
    </li>
          <?php } ?><?php } ?>
     <li class="mobile">
          <?php if($config->get('shopyfooter_mobile1_status')== 1) { if(isset($shopyfooter_mobile1[$lang]) && $shopyfooter_mobile1[$lang] != '') { ?>
      <?php echo $shopyfooter_mobile1[$lang]; ?>  <?php } ?><?php } ?>
    </li>

      <?php if($config->get('shopyfooter_email_status')== 1) { if(isset($shopyfooter_email[$lang]) && $shopyfooter_email[$lang] != '') { ?>
      <li class="email"><i class="fa fa-envelope"></i><?php echo $shopyfooter_email[$lang]; ?>  
      <?php } ?><?php } ?>
    </ul><?php } ?>    
  </div>
  <?php } ?>
    </div> 

    <!-- Begin footer mobile //-->
  <div id="footer-mobile">
      <?php  
if((isset($shopyfooter_contact[$lang]) && $shopyfooter_contact[$lang] != '') || (isset($shopyfooter_about_details[$lang]) && $shopyfooter_about_details[$lang] != '')) { ?>
  <div class="column-aboutus footer-menu-mobile  col-lg-4 col-md-4 col-sm-12 col-xs-12">
  <?php if(isset($shopyfooter_contact[$lang]) && $shopyfooter_contact[$lang] != '') { ?>
  <h5><?php echo $shopyfooter_contact[$lang]; ?></h5>
  <?php } ?>
   <div class="footer-menu-mobile-nav">
    <p>
  <?php $shopyfooter_about_details = $config->get('shopyfooter_about_details'); if(isset($shopyfooter_about_details[$lang])){echo html_entity_decode($shopyfooter_about_details[$lang], ENT_QUOTES, 'UTF-8');} ?>
    </p>
      <?php

// If shopyfooter module is enabled
  
if($config->get('shopyfooter_facebook_id') != '' || $config->get('shopyfooter_twitter_username') != '' || $config->get('shopyfooter_gplus_id') != '' || $config->get('shopyfooter_pint_id') != '' || $config->get('shopyfooter_rss') != '' || $config->get('shopyfooter_blogger') != '' || $config->get('shopyfooter_myspace') != '' || $config->get('shopyfooter_linkedin') != '' || $config->get('shopyfooter_evernote') != '' || $config->get('shopyfooter_dopplr') != '' || $config->get('shopyfooter_ember') != '' || $config->get('shopyfooter_flickr') != '' || $config->get('shopyfooter_picasa_web') != '' || $config->get('shopyfooter_youtube') != '' || $config->get('shopyfooter_technorati') != '' || $config->get('shopyfooter_grooveshark') != '' || $config->get('shopyfooter_vimeo') != '' || $config->get('shopyfooter_sharethis') != '' || $config->get('shopyfooter_yahoobuzz') != '' || $config->get('shopyfooter_viddler') != '' || $config->get('shopyfooter_skype') != '' || $config->get('shopyfooter_google_googletalk') != '' || $config->get('shopyfooter_digg') != '' || $config->get('shopyfooter_reddit') != '' || $config->get('shopyfooter_delicious') != '' || $config->get('shopyfooter_stumbleupon') != '' || $config->get('shopyfooter_friendfeed') != '' || $config->get('shopyfooter_tumblr') != '' || $config->get('shopyfooter_yelp') != '' || $config->get('shopyfooter_posterous') != '' || $config->get('shopyfooter_bebo') != '' || $config->get('shopyfooter_virb') != '' || $config->get('shopyfooter_last_fm') != '' || $config->get('shopyfooter_pandora') != '' || $config->get('shopyfooter_mixx') != '' || $config->get('shopyfooter_newsvine') != '' || $config->get('shopyfooter_openid') != '' || $config->get('shopyfooter_readernaut') != '' || $config->get('shopyfooter_xing_me') != '' || $config->get('shopyfooter_instagram') != '' || $config->get('shopyfooter_spotify') != '' || $config->get('shopyfooter_forrst') != '' || $config->get('shopyfooter_viadeo') != '' || $config->get('shopyfooter_vk_com') != '') { ?>
    <div class="social pull-left flip">
    <?php if($config->get('shopyfooter_facebook_id') != '') { ?>
        <a href="<?php echo $config->get('shopyfooter_facebook_id'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/facebook.png" alt="Facebook" title="Facebook"></a>
        <?php } ?>
<?php if($config->get('shopyfooter_twitter_username') != '') { ?>
<a href="<?php echo $config->get('shopyfooter_twitter_username'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/twitter.png" alt="Twitter" title="Twitter"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_gplus_id') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_gplus_id'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/google_plus.png" alt="Google+" title="Google+"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_pint_id') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_pint_id'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/pinterest.png" alt="Pinterest" title="Pinterest"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_rss') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_rss'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/rss.png" alt="RSS" title="RSS"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_blogger') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_blogger'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/blogger.png" alt="Blogger" title="Blogger"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_myspace') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_myspace'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/myspace.png" alt="myspace" title="MySpace"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_linkedin') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_linkedin'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/linkedin.png" alt="linkedin" title="LinkedIn"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_evernote') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_evernote'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/evernote.png" alt="evernote" title="evernote"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_dopplr') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_dopplr'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/dopplr.png" alt="dopplr" title="dopplr"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_ember') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_ember'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/ember.png" alt="ember" title="ember"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_flickr') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_flickr'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/flickr.png" alt="flickr" title="Flickr"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_picasa_web') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_picasa_web'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/picasa.png" alt="picasa" title="Picasa"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_youtube') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_youtube'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/youtube.png" alt="YouTube" title="YouTube"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_technorati') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_technorati'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/technorati.png" alt="technorati" title="technorati"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_grooveshark') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_grooveshark'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/grooveshark.png" alt="grooveshark" title="grooveshark"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_vimeo') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_vimeo'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/vimeo.png" alt="Vimeo" title="Vimeo"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_sharethis') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_sharethis'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/sharethis.png" alt="sharethis" title="ShareThis"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_yahoobuzz') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_yahoobuzz'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/yahoobuzz.png" alt="yahoobuzz" title="yahoobuzz"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_viddler') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_viddler'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/viddler.png" alt="viddler" title="viddler"> </a>
      <?php } ?>
      <?php if($config->get('shopyfooter_skype') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_skype'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/skype.png" alt="skype" title="Skype"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_google_googletalk') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_google_googletalk'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/googletalk.png" alt="googletalk" title="Google googletalk"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_digg') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_digg'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/digg.png" alt="digg" title="Digg"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_reddit') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_reddit'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/reddit.png" alt="reddit" title="Reddit"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_delicious') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_delicious'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/delicious.png" alt="delicious" title="Delicious"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_stumbleupon') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_stumbleupon'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/stumbleupon.png" alt="stumbleupon" title="StumbleUpon"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_friendfeed') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_friendfeed'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/friendfeed.png" alt="friendfeed" title="FriendFeed"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_tumblr') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_tumblr'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/tumblr.png" alt="tumblr" title="Tumblr"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_yelp') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_yelp'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/yelp.png" alt="yelp" title="Yelp"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_posterous') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_posterous'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/posterous.png" alt="posterous" title="posterous"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_bebo') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_bebo'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/bebo.png" alt="bebo" title="Bebo"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_virb') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_virb'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/virb.png" alt="virb" title="virb"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_last_fm') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_last_fm'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/lastfm.png" alt="lastfm" title="Last.fm"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_pandora') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_pandora'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/pandora.png" alt="pandora" title="pandora"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_mixx') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_mixx'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/mixx.png" alt="mixx" title="mixx"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_newsvine') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_newsvine'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/newsvine.png" alt="newsvine" title="Newsvine"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_openid') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_openid'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/openid.png" alt="openid" title="openid"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_readernaut') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_readernaut'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/readernaut.png" alt="readernaut" title="readernaut"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_xing_me') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_xing_me'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/xing.png" alt="xing" title="xing.me"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_instagram') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_instagram'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/instagram.png" alt="instagram" title="Instagram"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_spotify') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_spotify'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/spotify.png" alt="spotify" title="Spotify"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_forrst') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_forrst'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/forrst.png" alt="forrst" title="Forrst"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_viadeo') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_viadeo'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/viadeo.png" alt="viadeo" title="Viadeo"> </a>
      <?php } ?>
      
      <?php if($config->get('shopyfooter_vk_com') != '') { ?>
      <a href="<?php echo $config->get('shopyfooter_vk_com'); ?>" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/vk.png" alt="vk" title="VK.com"> </a>
      <?php } ?>
 
    </div>
    <?php } ?>
   </div>
  </div>
 <?php } ?> 
    
      <?php if ($informations) { ?>
      <div class="footer-menu-mobile">
        <h5><?php echo $text_information; ?></h5>
        <div class="footer-menu-mobile-nav">
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        </ul>
      </div>
      </div>
      <?php } ?>
       <div class="footer-menu-mobile">
        <h5><?php echo $text_extra; ?></h5>
        <div class="footer-menu-mobile-nav">
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
        </div>
      </div>
     <div class="footer-menu-mobile">
        <h5><?php echo $text_account; ?></h5>
         <div class="footer-menu-mobile-nav">
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
           <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        </ul>
      </div>
      </div>
      

          <?php  
 

if((isset($shopyfooter_address[$lang]) && $shopyfooter_address[$lang] != '') || (isset($shopyfooter_contact[$lang]) && $shopyfooter_contact[$lang] != '') || (isset($shopyfooter_mobile[$lang]) && $shopyfooter_mobile[$lang] != '') || (isset($shopyfooter_email[$lang]) && $shopyfooter_email[$lang] != '')) { ?>
<div class="column-contacts footer-menu-mobile col-lg-2 col-md-4 col-sm-12 col-xs-12">
      <?php if($config->get('shopyfooter_contact_status')== 1) { if(isset($shopyfooter_contact[$lang]) && $shopyfooter_contact[$lang] != '') { ?>
    <h5><?php echo $shopyfooter_contact[$lang]; ?></h5>
    <?php } ?><?php } ?>
     <div class="footer-menu-mobile-nav">
    <?php if($config->get('shopyfooter_address_status') == 1 || $config->get('shopyfooter_mobile_status') == 1 || $config->get('shopyfooter_email_status') == 1) { ?>
    <ul class="column-contacts">
      <?php if($config->get('shopyfooter_address_status')== 1) { if(isset($shopyfooter_address[$lang]) && $shopyfooter_address[$lang] != '') { ?>
      <li class="address"><i class="fa fa-map-marker"></i><?php echo $shopyfooter_address[$lang]; ?></li>
      <?php } ?><?php } ?>
      <?php if($config->get('shopyfooter_mobile_status')== 1) { if(isset($shopyfooter_mobile[$lang]) && $shopyfooter_mobile[$lang] != '') { ?>
      <li class="mobile"><i class="fa fa-phone"></i><?php echo $shopyfooter_mobile[$lang]; ?>
       </li>
      <?php } ?><?php } ?>

          <?php if($config->get('shopyfooter_mobile1_status')== 1) { if(isset($shopyfooter_mobile1[$lang]) && $shopyfooter_mobile1[$lang] != '') { ?>
      <li class="mobile"> <?php echo $shopyfooter_mobile1[$lang]; ?>    </li>   <?php } ?><?php } ?>

      <?php if($config->get('shopyfooter_email_status')== 1) { if(isset($shopyfooter_email[$lang]) && $shopyfooter_email[$lang] != '') { ?>
      <li class="email"><i class="fa fa-envelope"></i><?php echo $shopyfooter_email[$lang]; ?> <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
      <?php } ?><?php } ?>
    </ul><?php } ?>  
    </div>  
  </div>
  <?php } ?>
  </div> <!-- End mobile //-->

  </div>
  
   <div id="powered"><div class="container">
    <div class="power left"> <?php $shopyfooter_powered = $config->get('shopyfooter_powered'); if(isset($shopyfooter_powered[$lang])){echo html_entity_decode($shopyfooter_powered[$lang], ENT_QUOTES, 'UTF-8');} else {echo $powered; } ?> </div>
    <div class="payments right">
      <?php
// If shopyfooter module is enabled
 

if($config->get('shopyfooter_paypal') != '' || $config->get('shopyfooter_american') != '' || $config->get('shopyfooter_2checkout') != '' || $config->get('shopyfooter_discover') != '' || $config->get('shopyfooter_maestro') != '' || $config->get('shopyfooter_mastercard') != '' || $config->get('shopyfooter_sagepay') != '' || $config->get('shopyfooter_visa') != '' || $config->get('shopyfooter_moneybooker') != '' || $config->get('shopyfooter_cirrus') != '' || $config->get('shopyfooter_delta') != '' || $config->get('shopyfooter_direct') != '' || $config->get('shopyfooter_google') != '' || $config->get('shopyfooter_western_union') != '' || $config->get('shopyfooter_ebay') != '' || $config->get('shopyfooter_solo') != '' || $config->get('shopyfooter_switch') != '') { ?>
 
    
    <?php if ($config->get('shopyfooter_custom_payment_image_status') != '') { ?>
        <?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
          $path_image = $config->get('config_ssl') . 'image/';
        } else {
          $path_image = $config->get('config_url') . 'image/';
        }
        if ($config->get('shopyfooter_custom_payment_image') != ''){ ?>   
        <?php if($config->get('shopyfooter_custom_payment_image_url') != ''): ?> 
    <a href="<?php echo $config->get('shopyfooter_custom_payment_image_url'); ?>" target="_blank">
      <img src="<?php echo $path_image . $config->get('shopyfooter_custom_payment_image') ?>" alt="Payment" title="Payment"></a>
        <?php else: ?>         
      <img src="<?php echo $path_image . $config->get('shopyfooter_custom_payment_image') ?>" alt="Payment" title="Payment">
        <?php endif; ?>
    <?php } ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_paypal') != '') { ?>
        <?php if($config->get('shopyfooter_paypal_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_paypal_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_paypal.png" alt="paypal" title="PayPal"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_paypal.png" alt="paypal" title="PayPal">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_american') != '') { ?>
        <?php if($config->get('shopyfooter_american_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_american_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_american.png" alt="american-express" title="American Express"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_american.png" alt="american-express" title="American Express">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_2checkout') != '') { ?>
        <?php if($config->get('shopyfooter_2checkout_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_2checkout_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_2checkout.png" alt="2checkout" title="2checkout"></a>

        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_2checkout.png" alt="2checkout" title="2checkout">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_maestro') != '') { ?>
        <?php if($config->get('shopyfooter_maestro_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_maestro_url'); ?>" target="_blank">
       <img data-toggle="tooltip" src="image/payments/payment_maestro.png" alt="maestro" title="Maestro"></a>
        <?php else: ?>
             <img data-toggle="tooltip" src="image/payments/payment_maestro.png" alt="maestro" title="Maestro">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_discover') != '') { ?>
        <?php if($config->get('shopyfooter_discover_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_discover_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_discover.png" alt="discover" title="Discover"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_discover.png" alt="discover" title="Discover">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_mastercard') != '') { ?>
        <?php if($config->get('shopyfooter_mastercard_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_mastercard_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_mastercard.png" alt="mastercard" title="MasterCard"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_mastercard.png" alt="mastercard" title="MasterCard">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_visa') != '') { ?>
        <?php if($config->get('shopyfooter_visa_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_visa_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_visa.png" alt="visa" title="Visa"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_visa.png" alt="visa" title="Visa">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_sagepay') != '') { ?>
        <?php if($config->get('shopyfooter_sagepay_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_sagepay_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_sagepay.png" alt="sagepay" title="sagepay"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_sagepay.png" alt="sagepay" title="sagepay">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_moneybookers') != '') { ?>
        <?php if($config->get('shopyfooter_moneybookers_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_moneybookers_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_moneybookers.png" alt="moneybookers" title="Moneybookers"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_moneybookers.png" alt="moneybookers" title="Moneybookers">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_cirrus') != '') { ?>
        <?php if($config->get('shopyfooter_cirrus_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_cirrus_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_cirrus.png" alt="cirrus" title="Cirrus"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_cirrus.png" alt="cirrus" title="Cirrus">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_delta') != '') { ?>
        <?php if($config->get('shopyfooter_delta_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_delta_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_delta.png" alt="delta" title="Delta"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_delta.png" alt="delta" title="Delta">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_direct') != '') { ?>
        <?php if($config->get('shopyfooter_direct_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_direct_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_direct.png" alt="direct" title="direct"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_direct.png" alt="direct" title="direct">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_google') != '') { ?>
        <?php if($config->get('shopyfooter_google_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_google_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_google.png" alt="google" title="google"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_google.png" alt="google" title="google">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_solo') != '') { ?>
        <?php if($config->get('shopyfooter_solo_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_solo_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_solo.png" alt="solo" title="solo"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_solo.png" alt="solo" title="solo">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_switch') != '') { ?>
        <?php if($config->get('shopyfooter_switch_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_switch_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_switch.png" alt="switch" title="switch"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_switch.png" alt="switch" title="switch">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_western_union') != '') { ?>
        <?php if($config->get('shopyfooter_western_union_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_western_union_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_western_union.png" alt="western_union" title="western union"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_western_union.png" alt="western_union" title="western union">
        <?php endif; ?>
    <?php } ?>
        
        <?php if ($config->get('shopyfooter_ebay') != '') { ?>
        <?php if($config->get('shopyfooter_ebay_url') != ''): ?>
      <a href="<?php echo $config->get('shopyfooter_ebay_url'); ?>" target="_blank">
      <img data-toggle="tooltip" src="image/payments/payment_ebay.png" alt="ebay" title="ebay"></a>
        <?php else: ?>
            <img data-toggle="tooltip" src="image/payments/payment_ebay.png" alt="ebay" title="ebay">
        <?php endif; ?>
    <?php } ?>
 
    <?php } ?>
 
  </div>
  </div> 
  </div>
<script type="text/javascript">
  // Menu mobile
  $("#menu-mobile-link").on("click", function(){
    $("#menu-mobile-nav").toggle();
    $(this).toggleClass("active");
  });


  // Footer menu mobile
  $('.footer-menu-mobile div').hide();  

  $('.footer-menu-mobile h5').click(function() {
  $(this).next('div').slideToggle('fast')
  .siblings('div:visible').slideUp('fast');
  });
</script>
</footer>
</body></html>