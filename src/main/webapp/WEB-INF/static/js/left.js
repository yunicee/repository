function  select(var1){
  $(".navigations").removeClass("selected")
  $(".navigations li:nth-child("+var1+")").addClass("selected")
}