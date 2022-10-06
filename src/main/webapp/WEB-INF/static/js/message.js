function regSuccess() {
  var obj = $("#registerMessage")
  obj.removeClass("hidden")
  obj.removeClass("alert-warning")
  obj.addClass("alert-success")
}

function regFalut(var1) {
  var obj = $("#registerMessage")
  obj.removeClass("hidden")
  obj.removeClass("alert-success")
  obj.addClass("alert-warning")
  $("#regMessage").text(var1)
}
function back(){
 history.back();
}