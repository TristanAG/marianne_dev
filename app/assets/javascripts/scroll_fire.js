// $( document ).on('turbolinks:load', function() {
//   console.log('ready to go');
//     $('#nav-fixed').hide();
// });
//
// $(window).scroll(function (event) {
//     var pos = 326;
//     var scroll = $(window).scrollTop();
//     var below = false;
//
//
//     if(pos <= scroll){
//       $('#nav-unfixed').hide();
//       below = true;
//     }else{
//       below = false;
//     }
//
//     if(below == true){
//       $('#nav-fixed').show();
//
//     }
//
//     if(below == false){
//       $('#nav-unfixed').show();
//       $('#nav-fixed').hide();
//     }
//
// });

$( document ).on('turbolinks:load', function() {
  $('#nav-fixed').hide();
  var setState = function() {
    if(length > yPos && width > xPos){
      //use the fixed sidebar state
      $('#nav-unfixed').hide();
      $('#nav-fixed').show();
    }else{
      //use the fluid sidebar state
      $('#nav-unfixed').show();
      $('#nav-fixed').hide();
    }
  }
  var xPos = 683;
  var yPos = 240;
  var length = $(window).scrollTop();
  var width = $(window).width();
  $( window ).scroll(function (event) {
    length = $(window).scrollTop();
    setState();
  });
  $( window ).resize(function() {
    width = $(window).width();
    setState();
  });
});
