<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package WordPress
 * @subpackage Tibexav
 */ 
 
get_header(); ?>

<div id="div_imgCropTop">
	<img src=<?php echo get_template_directory_uri() . "/assets/images/Fd_Tibexav_cropTop.png" ?> class="fullCoverTop"/>
</div>

<div id="titre" class="titleOnPosts">
    <a href="<?php echo home_url();?>">l'atelier nature</a>    
</div>

	<div id="TibeXav_MainSingle">

		<?php
		// Start the loop.
		while ( have_posts() ) : the_post();

			/*
			 * Include the post format-specific template for the content. If you want to
			 * use this in a child theme, then include a file called content-___.php
			 * (where ___ is the post format) and that will be used instead.
			 */
			get_template_part( 'content', get_post_format() );
			the_content();

						

		// End the loop.
		endwhile;
		?>
	</div><!-- .content-area -->

<?php get_footer(); ?>
