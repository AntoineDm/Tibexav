
jQuery(document).ready(function($){

    // Au chargement initial   
    redimensionnement($);
     
    // En cas de redimensionnement de la fenêtre
    $(window).resize(function(){ 
        redimensionnement($); 
    }); 
	
	$('.Tibexav_menuClass').click(
		function()
		{	
		$('#mainAccueil_Tibexav').animate(
		{'font-size':'600%'},2500, function()
			{
				//lorsque l'anim est finie
				window.location.replace($(this).find('a').attr('href'));
			})
			
		});
 
}); 


// function animFoufou()
// {
	// jQuery("#div_IdRech").animate(
		// {'width' : '-=7000px','height' : '-=210px', 'left' : '+=25%'}, 600, function()
			// {
				// //lorsque l'anim est finie
				// jQuery("#div_IdRech").toggleClass("div_IdRech_Fixed div_IdRech_PasFixed" );
			// });
// }



function redimensionnement($){ 
 
    var $image = $('img.fullCover');
    var image_width = $image.width(); 
    var image_height = $image.height();     
     
    var over = image_width / image_height; 
    var under = image_height / image_width; 
     
    var body_width = $(window).width(); 
    var body_height = $(window).height(); 
     
    if (body_width / body_height >= over) { 
      $image.css({ 
        'width': body_width + 'px', 
        'height': Math.ceil(under * body_width) + 'px', 
        'left': '0px', 
        'top': Math.abs((under * body_width) - body_height) / -2 + 'px' 
      }); 
    }  
     
    else { 
      $image.css({ 
        'width': Math.ceil(over * body_height) + 'px', 
        'height': body_height + 'px', 
        'top': '0px', 
        'left': Math.abs((over * body_height) - body_width) / -2 + 'px' 
      }); 
    } 
} 
      
