// Common JavaScript code across your application goes here.

$(function() {
  $("a.source").click(function() {
    if($(this).next().is(":visible"))
      $(this).html("Show source").next().hide();
    else
      $(this).html("Hide source").next().show();
    return false;
  });
});