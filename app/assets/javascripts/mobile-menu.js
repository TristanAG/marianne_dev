$( document ).on( 'turbolinks:load', function() {
//init state
    var visible = false
          $( '#mobile-menu' ).hide();

  $( '#menu-button' ).click(function () {
    if( !visible ){
//open state
        visible = true
          $( '#mobile-menu' ).slideDown( 'slow' );
    } else {
//closed state
        visible = false
          $( '#mobile-menu' ).slideUp( 'slow' );
    }
  })
})
