$(".i.fa.fa-address-card").on({
  'mouseenter':function(){
    var text = $(this).attr('tooltips');
    $(this).append('<div class = "box1">' + text + '</div>');
  }
  'mouseleave':function(){
    $(this).find(".box1").remove();
  }
});
