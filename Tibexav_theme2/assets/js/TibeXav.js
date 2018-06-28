
jQuery(document).ready(function($){

    var templateUrl = template_directory.templateUrl;
    
    // Au chargement initial   
    redimensionnement($);
     
    // En cas de redimensionnement de la fenêtre
    $(window).resize(function(){ 
        redimensionnement($); 
    }); 
	
	$('.Tibexav_menuClass').click(
		function()
		{	
			// $('#mainAccueil_Tibexav').animate(
			// {'font-size':'800%'},1800, function()
			// 	{
                // event.preventDefault() ;
                // $('#imgToZoom2').addClass('zoomed');
                // $("#imgToZoom2").bind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", function(){

					//lorsque l'anim est finie
				 // window.location.replace($(this).find('a').attr('href'));
                 // });
				// })
			// $('#imgToZoom').animate(
			// {'width':'90%', 'height':'90%', 'top':'10%', 'left':'10%'},1800)

			
		});


    if ($("#mainAccueil_Tibexav").length)
    {
        var vitesse = 2000;
		$("html").css("overflow","hidden");
		i = 0;
        //$.playSound(templateUrl+'/assets/js/rain.mp3');

        setInterval(function()
            {
				if (vitesse > 240) vitesse = vitesse/2;
				
				//$("#titre_Tibexav p").text(vitesse+ " " + i);
				fallingRain($,vitesse, templateUrl);
            },3000);
    }
}); 




function fallingRain($,vitS, templateUrl){
	
	
    setInterval(function() {
        var nbTop = 0 + Math.floor(Math.random() * 100);
        var nbLeft = 0 + Math.floor(Math.random() * 100);
        var nbwidth = 10 + Math.floor(Math.random() * 60);
		var nbRotate = 0 +Math.floor(Math.random() * 270);
        i++;
        
        $("html").append("<img  src='" + templateUrl + "/assets/images/drop_Tibexav.png'  id='raindrop" + i + "' class='raindrop' style='left:" + nbLeft +"%;top:" + nbTop +"%;width:" + nbwidth +"px;transform:rotate("+nbRotate+"deg);' />");
		
		//quand il commence à y avoir trop de gouttes
		if (i > 200)
		{		
				var nbId = i-200;
				var truc = '#raindrop'+ nbId;
				$(truc).fadeTo(750,0,function()
				{
					$(truc).remove();
				});
		}

        },vitS);

}



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
      
