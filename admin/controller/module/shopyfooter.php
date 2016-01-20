<?php
class ControllerModuleShopyfooter extends Controller {
    private $error = array(); 
    
    public function index() {   
	
		$language = $this->load->language('module/shopyfooter');
        $data = array_merge($language);
		

        $this->document->setTitle($this->language->get('heading_title'));
 
        
        $this->load->model('setting/setting');
        
        $this->load->model('tool/image');  
        
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->model_setting_setting->editSetting('shopyfooter', $this->request->post); 
            if (isset($this->request->post['continue']) && $this->request->post['continue'] == '1') {
				$this->session->data['success'] = $this->language->get('text_success');	
				 $this->response->redirect($this->url->link('module/shopyfooter', 'token=' . $this->session->data['token'], 'SSL')); 
			}  

            $this->session->data['success'] = $this->language->get('text_success');
        
            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }
		
            $data['text_image_manager'] = 'Image manager';
           // $data['token'] = $this->session->data['token'];       
        
        $text_strings = array(
                'heading_title',
                'text_enabled',
                'text_disabled',
                'text_content_top',
                'text_content_bottom',
                'text_column_left',
                'text_column_right',
                'entry_status',
                'entry_sort_order',
                'button_save',
                'button_cancel',
                'button_continue'
				
        );
        
        foreach ($text_strings as $text) {
            $data[$text] = $this->language->get($text);
        }
        

        // store config data
        
        $config_data = array(

       
		
		//Footer
        'shopyfooter_footer_heading_text_color',
        'shopyfooter_sub_link_text_color',
        'shopyfooter_powerd_by_text_color',
		
		'shopyfooter_footer_bg_color',
		'shopyfooter_footer_titles_color',
		'shopyfooter_footer_text_color',
		'shopyfooter_footer_link_color',
		'shopyfooter_footer_link_hover_color',
		
		'shopyfooter_contact_icon_color',
		
		'shopyfooter_footer_second_bg_color',
		'shopyfooter_footer_second_text_color',
		'shopyfooter_footer_second_link_color',
		'shopyfooter_footer_second_link_hover_color',
		'shopyfooter_footer_second_separator_size',
		'shopyfooter_footer_second_separator_color',
		'shopyfooter_footer_second_separator_style',
		
	 
		
		//Social Icon
		'shopyfooter_facebook_id',
        'shopyfooter_twitter_username',
        'shopyfooter_gplus_id',
		'shopyfooter_pint_id',
		'shopyfooter_rss',
		'shopyfooter_blogger',		
		'shopyfooter_myspace',
		'shopyfooter_linkedin',
		'shopyfooter_evernote',
		'shopyfooter_dopplr',
		'shopyfooter_ember',
		'shopyfooter_flickr',
		'shopyfooter_picasa_web',
		'shopyfooter_youtube',
		'shopyfooter_technorati',
		'shopyfooter_grooveshark',
		'shopyfooter_vimeo',
		'shopyfooter_sharethis',
		'shopyfooter_yahoobuzz',
		'shopyfooter_viddler',
		'shopyfooter_skype',
		'shopyfooter_google_googletalk',
		'shopyfooter_digg',
		'shopyfooter_reddit',
		'shopyfooter_delicious',
		'shopyfooter_stumbleupon',
		'shopyfooter_friendfeed',
		'shopyfooter_tumblr',
		'shopyfooter_yelp',
		'shopyfooter_posterous',
		'shopyfooter_bebo',
		'shopyfooter_virb',
		'shopyfooter_last_fm',
		'shopyfooter_pandora',
		'shopyfooter_mixx',
		'shopyfooter_newsvine',
		'shopyfooter_openid',
		'shopyfooter_readernaut',
		'shopyfooter_xing_me',
		'shopyfooter_instagram',
		'shopyfooter_spotify',
		'shopyfooter_forrst',
		'shopyfooter_viadeo',
		'shopyfooter_vk_com',
 
		
		'shopyfooter_footer_titles_font',
		'shopyfooter_footer_titles_font_weight',
		'shopyfooter_footer_titles_font_uppercase',
		'shopyfooter_footer_titles_font_size',
		'shopyfooter_footer_backtotop_bg_color',
		
		
		//Socia Fun Box
		'shopyfooter_facebook_id_box',		
        'twitter_username',

		'shopyfooter_custom_column',
		'shopyfooter_widget_id',		
		'shopyfooter_powered',
		
		'shopyfooter_custom_column_footer_status',
		'shopyfooter_custom_column_footer',
		

		//Contact Details
		'shopyfooter_contact',
		'shopyfooter_about',
		'shopyfooter_address',
		'shopyfooter_mobile',
		'shopyfooter_mobile1',
		'shopyfooter_email',
		
		'shopyfooter_contact_status',
		'shopyfooter_about_status',
		'shopyfooter_address_status',
		'shopyfooter_mobile_status',
		'shopyfooter_mobile1_status',
		'shopyfooter_email_status',
		'shopyfooter_about_contact_details',
		'shopyfooter_about_details',
		
		//Payment Methods Image
		'shopyfooter_custom_payment_image_status',
		'shopyfooter_custom_payment_image_url',
		'shopyfooter_custom_payment_image',
		'shopyfooter_custom_payment_image_preview',
		'shopyfooter_paypal',
		'shopyfooter_paypal_url',
		'shopyfooter_american',
		'shopyfooter_american_url',
		'shopyfooter_2checkout',
		'shopyfooter_2checkout_url',
		'shopyfooter_discover',
		'shopyfooter_discover_url',
		'shopyfooter_maestro',
		'shopyfooter_maestro_url',
		'shopyfooter_mastercard',
		'shopyfooter_mastercard_url',
		'shopyfooter_visa',
		'shopyfooter_visa_url',
		'shopyfooter_sagepay',
		'shopyfooter_sagepay_url',
		'shopyfooter_moneybookers',
		'shopyfooter_moneybookers_url',
		'shopyfooter_cirrus',
		'shopyfooter_cirrus_url',
		'shopyfooter_delta',
		'shopyfooter_delta_url',
		'shopyfooter_direct',
		'shopyfooter_direct_url',
		'shopyfooter_google',
		'shopyfooter_google_url',
		'shopyfooter_solo',
		'shopyfooter_solo_url',
		'shopyfooter_switch',
		'shopyfooter_switch_url',
		'shopyfooter_western_union',
		'shopyfooter_western_union_url',
		'shopyfooter_ebay',
		'shopyfooter_ebay_url',
		
		 
	 
	 
	  
	  
		
        );
        
        foreach ($config_data as $conf) {
            if (isset($this->request->post[$conf])) {
                $data[$conf] = $this->request->post[$conf];
            } else {
                $data[$conf] = $this->config->get($conf);
            }
        }
    
        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }
        if (isset($this->session->data['success'])) {
					$data['success'] = $this->session->data['success'];
					unset($this->session->data['success']);
				} else {
					$data['success'] = '';
		}

        
        $data['breadcrumbs'] = array();
		
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_module'),
            'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
        );
        
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('module/shopyfooter', 'token=' . $this->session->data['token'], 'SSL')
        );
        
        $data['action'] = $this->url->link('module/shopyfooter', 'token=' . $this->session->data['token'], 'SSL');
        
        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

    
        //This code handles the situation where you have multiple instances of this module, for different layouts.
        if (isset($this->request->post['shopyfooter_module'])) {
            $modules = explode(',', $this->request->post['shopyfooter_module']);
        } elseif ($this->config->get('shopyfooter_module') != '') {
            $modules = explode(',', $this->config->get('shopyfooter_module'));
        } else {
            $modules = array();
        }           
                
        
		if (isset($this->request->post['shopyfooter_status'])) {
			$data['shopyfooter_status'] = $this->request->post['shopyfooter_status'];
		} else {
			$data['shopyfooter_status'] = $this->config->get('shopyfooter_status');
		}
		
		$this->load->model('localisation/language');
		
		$data['languages'] = $this->model_localisation_language->getLanguages();

		$this->load->model('design/layout');
		
		$data['layouts'] = $this->model_design_layout->getLayouts();
		
        
        //$data['modules'] = $modules;
        
        if (isset($this->request->post['shopyfooter_module'])) {
            $data['shopyfooter_module'] = $this->request->post['shopyfooter_module'];
        } else {
            $data['shopyfooter_module'] = $this->config->get('shopyfooter_module');

		}
		
		$data['shopyfooter_modules'] = array();
 
		if (isset($this->request->post['shopyfooter_custom_payment_image']) && is_file(DIR_IMAGE . $this->request->post['shopyfooter_custom_payment_image'])) {
			$data['shopyfooter_custom_payment_image_preview'] = $this->model_tool_image->resize($this->request->post['shopyfooter_custom_payment_image'], 100, 100);
		} elseif ($this->config->get('shopyfooter_custom_payment_image') && is_file(DIR_IMAGE . $this->config->get('shopyfooter_custom_payment_image'))) {
			$data['shopyfooter_custom_payment_image_preview'] = $this->model_tool_image->resize($this->config->get('shopyfooter_custom_payment_image'), 100, 100);
		} else {
			$data['shopyfooter_custom_payment_image_preview'] = $this->model_tool_image->resize('no_image.png', 100, 100);;
		}

		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/shopyfooter.tpl', $data));

    }
    
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/shopyfooter')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}
 