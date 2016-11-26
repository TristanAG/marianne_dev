$( document ).on('turbolinks:load', function() {
  $( '#mobile-menu' ).hide();
  visible = false
  $( '#menu-button' ).click(function () {
    if(!visible){
      $( '#mobile-menu' ).slideDown( 'slow' );
      visible = true
    } else {
      $( '#mobile-menu' ).slideUp( 'slow' );
      visible = false
    }
  })
})
