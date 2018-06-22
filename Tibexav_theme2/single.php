<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package WordPress
 * @subpackage Tiebxav
 */

 
 
 
get_header(); ?>
<img src=<?php echo get_template_directory_uri() . "/assets/images/grandFondJustTop.jpg" ?> class="fullCoverTop"/>

<div id="titre" class="titleOnPosts">
    <a href="<?php echo home_url();?>">l'atelier nature</a>
	<hr/>
	<hr/>
    
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
