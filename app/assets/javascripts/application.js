//= require jquery-ui/widgets/autocomplete
//= require jquery-ui/widgets/menu
//= require jquery.ui.autocomplete.html.js
//= require address_autocomplete.js
//= require geolocation
//= require applications
//= require event_tracking
// Need ujs for confirmation on buttons
//= require jquery_ujs

$("#menu .toggle").click(function(){
  $("#menu ul").slideToggle("fast", function(){
    $("#menu ul").toggleClass("hidden").css("display", "");
  });
});
