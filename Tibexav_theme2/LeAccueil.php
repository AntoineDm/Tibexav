<?php /* Template Name: TibeXavAccueil */ ?>
<?php get_header(); ?>
<div id="mainAccueil_Tibexav">
<img src=<?php echo get_template_directory_uri() . "/assets/images/Fd_Tibexav.png" ?> class="fullCover"/>



<div id="titre_Tibexav" class="titleOnHome">
    <a href="<?php echo home_url();?>">l'atelier nature</a>    
</div>


<?php
wp_nav_menu( array( 
    'theme_location' => 'MenuPpal_TibeXav', 
    'container_class' => 'Tibexav_menuClass' ) ); 
?>



	<div id="social_Tibexav">
		<?php echo do_shortcode('[Sassy_Social_Share]') ?>
	</div>
</div>
<?php get_footer(); ?>
