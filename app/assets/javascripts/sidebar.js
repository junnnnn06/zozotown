$(function() {
  $('li').hover(function() {
    $(this).css('background', '#CCFFFF');
  }, function() {
     $(this).css('background', '');
  });
});

$(function() {
  $('li.drawer-dropdown').hover(function() {
    $(this).css('background', '#333333');
  }, function() {
     $(this).css('background', '');
  });
  $('a.drawer-menu-item').hover(function() {
    $(this).css('background', '#333333');
  }, function() {
     $(this).css('background', '');
  });
  $('a.drawer-dropdown-menu-item').hover(function() {
    $(this).css('background', 'white');
  }, function() {
     $(this).css('background', '');
  });
});