$(function(){
  $('.trigger').on('click',function()
  {
    var index = $('td.trigger').index(this);
    $('tbody.hiddenitems').removeClass("active");
    $('tbody.hiddenitems').eq(index).addClass("active");
  })
})
