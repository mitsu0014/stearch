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