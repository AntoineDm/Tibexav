<?php /* Template Name: TibeXavContact
// * Template Post Type: post, page, product
*/ ?>


<?php get_header(); ?>
<div id="titre" class="titleOnPosts">
    <a href="<?php echo home_url();?>">l'atelier nature</a>
    
</div>



<!--<h1 class="entry-title"><?php //the_title(); ?></h1> <!-- Page Title -->
    <?php
    // TO SHOW THE PAGE CONTENTS
    while ( have_posts() ) : the_post(); ?> <!--Because the_content() works only inside a WP Loop -->
        <div class="entry-content-page">
            <?php the_content(); ?> <!-- Page Content -->
        </div><!-- .entry-content-page -->

    <?php
    endwhile; //resetting the page loop
    wp_reset_query(); //resetting the page query
    ?>


<?php get_footer(); ?>