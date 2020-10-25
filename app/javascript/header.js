$(function() {
    setTimeout(function(){
      $('#header-navi').fadeIn(3000);
    },2000);
    setTimeout(function(){
      $('#navi-under').fadeIn(3000);
    },2500);

    $('.item-link').each(function(){
      $(this).on('click',function(){
          $("+.sub-menu",this).slideToggle();
          return false;
      });
  });
  $(window).on("resize", function(){
    var x = $(window).width();
    var y = 640;
    if (x < y){
       $('#header-navi').hide();
    } else {
       $('#header-navi').show();
    }
 });

 $(window).on("resize", function(){
  var x = $(window).width();
  var y = 640;
  if (x < y){
     $('#navi-under').hide();
  } else {
     $('#navi-under').show();
  }
});

$(window).on("resize", function(){
  var x = $(window).width();
  var y = 640;
  if (x < y){
     $('.header-list li').hide();
  } else {
     $('.header-list li').show();
  }
});

});

//サイドメニュー
document.addEventListener('DOMContentLoaded', () => {
  initMenu();
});

function initMenu() {
  const toggles = document.querySelectorAll('.data-menu-toggle');
  const menu = document.getElementById('menu');

  toggles.forEach(toggle => {
    toggle.addEventListener('click', function(event) {
      event.stopPropagation();
      menu.classList.toggle('is-open');
    });
  });
}

$(function() {
 $('.login-show').on('click',function(){
  $('#modal-login').fadeIn();
});

 $('.close-btn').on('click',function(){
  $('#modal-login').fadeOut();
 });

});

 $(function() {
  $('.signup-show').on('click',function(){
   $('#modal-sign-up').fadeIn();
 });
 
  $('.close-btn').on('click',function(){
   $('#modal-sign-up').fadeOut();
  });

});

