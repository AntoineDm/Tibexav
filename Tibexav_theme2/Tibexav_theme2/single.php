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
    <a href="<?php echo home_url() . '?r=f' ;?>">l'atelier nature</a>    
</div>

	<div id="TibeXav_MainSingle">
		<div id="TibeXav_MainSingle_content">

		<img src=<?php echo get_template_directory_uri() . "/assets/images/libellule.png" ?> id="libellule" />

			<?php
			// Start the loop.
			while ( have_posts() ) : the_post();

				if ( get_post_gallery() ) :
					$gallery = get_post_gallery( get_the_ID(), false );?>
					<div class="gallery_Tibexav">
					<?php foreach( $gallery['src'] as $src ) : ?>
						<img src="<?php echo $src; ?>" class="imgIngallery_Tibexav" alt="Gallery image" />
						<?php
					endforeach;
					echo "</div>";
				endif;
				$content = strip_shortcode_gallery( get_the_content() );
				
				echo $content;
							

			// End the loop.
			endwhile;
			?>
			</div>
	</div><!-- .content-area -->

<?php get_footer(); ?>
