$( document ).ready(function() {
  console.log('ready to go');
    $('#nav-fixed').hide();
});

$(window).scroll(function (event) {
    var pos = 326;
    var scroll = $(window).scrollTop();
    var below = false;


    if(pos <= scroll){
      $('#nav-unfixed').hide();
      below = true;
    }else{
      below = false;
    }

    if(below == true){
      $('#nav-fixed').show();
      
    }

    if(below == false){
      $('#nav-unfixed').show();
      $('#nav-fixed').hide();
    }

});
