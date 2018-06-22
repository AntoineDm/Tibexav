<?php /* Template Name: TibeXavAccueil */ ?>
<?php get_header(); ?>
<img src=<?php echo get_template_directory_uri() . "/assets/images/grandFond.jpg" ?> class="fullCover"/>
<div id="titre" class="titleOnHome">
    <a href="<?php echo home_url();?>">l'atelier nature</a>
    
</div>


<?php
wp_nav_menu( array( 
    'theme_location' => 'MenuPpal_TibeXav', 
    'container_class' => 'Tibexav_menuClass' ) ); 
?>






<?php get_footer(); ?>
