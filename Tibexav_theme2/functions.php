<?php

function TibexavScripts()
{
	// wp_deregister_script('jquery');
	wp_enqueue_script('TibeXav', get_template_directory_uri() . '/assets/js/TibeXav.js', array( 'jquery' ), null, false);
	wp_enqueue_style( 'normalize', get_template_directory_uri().'/assets/css/normalize.css');
	
}

function register_my_menu() {
  register_nav_menu('MenuPpal_TibeXav',__( 'Menu Principal Tibexav' ));
 }


add_action( 'init', 'register_my_menu' );
add_action('wp_enqueue_scripts','TibexavScripts');
add_filter('show_admin_bar', '__return_false');

if ( function_exists( 'add_theme_support' ) ) {
  add_theme_support( 'post-thumbnails' );
}
			
            



?>