$(function(){
  $(document).ready(function() {
    $('.fa.fa-user').tooltipster({
      animation: 'grow'
    });
    $('.fa.fa-sign-in').tooltipster({
      animation: 'grow'
    });
    $('.fa.fa-sign-out').tooltipster({
      animation: 'grow'
    });
    $('.user_info').on("mouseenter", function(){
      $('.user_info').append('<p class = "box">購入履歴</p>');
    });
    $('.user_info').on('mouseleave', function(){
      $('.box').remove();
    });
  });
});
