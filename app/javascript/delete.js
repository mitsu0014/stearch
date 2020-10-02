$(function() {
  $('#destroy-btn').on('click',function() {
    $('#login-modal').fadeIn();
  });

  $('i').on('click',function(){
    $('#login-modal').fadeOut();
    $('#signup-modal').fadeOut();
  });
});