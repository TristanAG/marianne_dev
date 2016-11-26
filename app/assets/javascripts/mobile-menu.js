$( document ).on('turbolinks:load', function() {
  $( '#mobile-menu' ).hide();
  visible = false
  $( '#menu-button' ).click(function () {
    if(!visible){
      $( '#mobile-menu' ).show();
      visible = true
    } else {
      $( '#mobile-menu' ).hide();
      visible = false
    }
  })
})
