


<?php get_header(); ?>

<img src=<?php echo get_template_directory_uri() . "/assets/images/Fd_Tibexav_Sun.png" ?> class="fullCover"/>


<div id="titre" class="titleOnPosts">
    <a href="<?php echo home_url() . '?r=f' ;?>">l'atelier nature</a>
    
</div>
	
<div id="dv_reals_Tibexav">

	<!--<h1 class="entry-title"><?php //the_title(); ?></h1> <!-- Page Title -->
	
		<?php 
		$temp_query = $wp_query;
		
		$args = array(
		'post_type'	=> 'post',
		'order' => ASC,
		'paged' => $paged,
		'posts_per_page'    => 3,
		'cat' => '-6'
		
		);
	$wp_query = new WP_Query( $args );

		// TO SHOW THE PAGE CONTENTS
		if (have_posts() ) : while (have_posts() ) : the_post(); ?> 
			
			<a href="<?php echo the_permalink(); ?>">
				<div class="photoReal"><?php 
					if ( has_post_thumbnail() ) // Vérifies qu'une miniature est associée à l'article.
					{	
						the_post_thumbnail(array(220,150));
					}?>
				</div>
			</a>
			<a href="<?php echo the_permalink(); ?>">
					<div class="cont_Tibexav"><?php the_excerpt(); ?></div>
			</a>		
			<?php endwhile;?>

			<div id="nav_Tibexav">
				<?php posts_nav_link('<img id="imgDot_Tibexav" src="'. get_template_directory_uri() . '/assets/images/dot_Tibexav.jpg" />', '<img src="'. get_template_directory_uri() . '/assets/images/before_Tibexav.png" />', '<img src="' .  get_template_directory_uri() . '/assets/images/after_Tibexav.png" />');
					
			echo "</div>";
			// on reset la query a son état originel
			$wp_query = $temp_query;			
		else:?>
		 "déso";
		<?php endif;?>

</div>
<?php get_footer(); ?>