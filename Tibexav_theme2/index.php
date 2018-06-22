


<?php get_header(); ?>

<img src=<?php echo get_template_directory_uri() . "/assets/images/grandFond.jpg" ?> class="fullCover"/>


<div id="titre" class="titleOnPosts">
    <a href="<?php echo home_url();?>">l'atelier Nature</a>
    
</div>
	
<div id="dv_reals_Tibexav">
		<!-- On display tous les postes qui ne sont pas dans la requete par défaut de WP -->

		<!--<h1 class="entry-title"><?php //the_title(); ?></h1> <!-- Page Title -->
			<?php 
			$args = array(
			'post_type'         => 'post',
			'posts_per_page'    => 10,
			'cat' => '-6'
			
			);
		$the_query = new WP_Query( $args );

			// TO SHOW THE PAGE CONTENTS
			if ( $the_query->have_posts() ) : while ($the_query-> have_posts() ) : $the_query->the_post(); ?> 
				
			<div class="photoReal">photo</div><div class="cont_Tibexav"><?php the_content(); ?></div>
					

			<?php
			endwhile; //resetting the page loop
			else :
			//wp_reset_query(); //resetting the page query
			?>
			déso
			<?php endif;
wp_reset_postdata()	?>

</div>

<?php get_footer(); ?>