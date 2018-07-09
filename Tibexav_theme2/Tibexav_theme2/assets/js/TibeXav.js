
jQuery(document).ready(function ($) {

    var templateUrl = template_directory.templateUrl;

    // Au chargement initial   
    redimensionnement($);

    // En cas de redimensionnement de la fen�tre
    $(window).resize(function () {
        redimensionnement($);
    });


    setInterval(
        bugFly,6000);
    


    /////////////////////////////////////////////////////////////////////////////////////////la pluie
    if ($("#mainAccueil_Tibexav").length && getParameterByName('r') != 'f') {
        var vitesse = 2000;
        $("html").css("overflow", "hidden");
        i = 0;
        //son
        setTimeout(function () {
            $.playSound(templateUrl + '/assets/js/rain.mp3');
            $.playSound(templateUrl + '/assets/js/cuckoo.mp3');
        }, 2000);

        //pluie/////////////////

        //start pluie
        var fn_fallingRainAcceleration = setInterval(function () {
            if (vitesse > 240) vitesse = vitesse / 2;

            //$("#titre_Tibexav p").text(vitesse+ " " + i);
            fallingRain($, vitesse, templateUrl);
        }, 3000);

        // stop pluie
        setTimeout(function () {
            clearInterval(fn_fallingRainAcceleration);
        },6000);
    }

    //autre page
    else if ($("#dv_reals_Tibexav").length) {
        // setTimeout(function()
        // {
        // $.playSound(templateUrl+'/assets/js/cigalou.mp3');
        // },2000);
    }
});




function fallingRain($, vitS, templateUrl) {


    setInterval(function () {
        var nbTop = 0 + Math.floor(Math.random() * 100);
        var nbLeft = 0 + Math.floor(Math.random() * 100);
        var nbwidth = 10 + Math.floor(Math.random() * 30);
        var nbRotate = 0 + Math.floor(Math.random() * 270);
        i++;

        $("html").append("<img  src='" + templateUrl + "/assets/images/drop_Tibexav.png'  id='raindrop" + i + "' class='raindrop' style='left:" + nbLeft + "%;top:" + nbTop + "%;width:" + nbwidth + "px;transform:rotate(" + nbRotate + "deg);' />");
        $("#raindrop" + i).fadeTo(1500, 0.3)
        //quand il commence � y avoir trop de gouttes
        if (i > 100) {
            var nbId = i - 100;
            var thisDrop = '#raindrop' + nbId;
            $(thisDrop).fadeTo(1000, 0, function () {
                $(thisDrop).remove();
            });
        }

    }, vitS);

}



function bugFly()
{
   setTimeout(function () {

        const bug =  document.body.querySelector("#libellule")
        if (bug != null)
        {
            let currentState = 0;
            nbX=0;
            nby=0;

            
            randomXY();


            const states = [
                function(){  bug.style.transform = "translate("+nbX+"px, "+nbY+"px)";randomXY()},
                function(){  bug.style.transform = "translate("+nbX+"px, "+nbY+"px)";randomXY()},
                function(){  bug.style.transform = "translate(-5000px, -300px)";}
            ]
            
            const animateToNextState = () => {
                if (currentState < 2)
                {
                    requestAnimationFrame(() => {
                    states[++currentState % states.length]()
                    })
                }
            }
            
            bug.addEventListener("transitionend", () => animateToNextState())
            animateToNextState()
        }





    }, 2000);



}

function redimensionnement($) {

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






function randomXY()
{
    nbX = -500 + Math.floor(Math.random() * 0);
    nbY = 0+ Math.floor(Math.random() * 500);
}




function getParameterByName(name, url) {
    if (!url) {
        url = window.location.href;
    }
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

