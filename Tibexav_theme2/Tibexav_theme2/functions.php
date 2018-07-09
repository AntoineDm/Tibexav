<?php

function TibexavScripts()
{
	// wp_deregister_script('jquery');
	wp_enqueue_script('TibeXav', get_template_directory_uri() . '/assets/js/TibeXav.js', array( 'jquery' ), null, false);

    wp_enqueue_script('playSound', get_template_directory_uri() .'/assets/js/playSound.js');    
    
    //pour loacliser l'emplcaement du js dans le template
	$translation_array = array( 'templateUrl' => get_stylesheet_directory_uri() );
	//after wp_enqueue_script
	wp_localize_script( 'TibeXav', 'template_directory', $translation_array );

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


function strip_shortcode_gallery( $content ) {
    preg_match_all( '/' . get_shortcode_regex() . '/s', $content, $matches, PREG_SET_ORDER );

    if ( ! empty( $matches ) ) {
        foreach ( $matches as $shortcode ) {
            if ( 'gallery' === $shortcode[2] ) {
                $pos = strpos( $content, $shortcode[0] );
                if( false !== $pos ) {
                    return substr_replace( $content, '', $pos, strlen( $shortcode[0] ) );
                }
            }
        }
    }

    return $content;
}



?>