$(document).ready(function() {
  $("#car_make_string").autocomplete({
    source: "/makes/",
    select: function(event, ui) {
  	  $('#car_model_string').autocomplete({
  	    source: "/makes/" + ui.item.id + "/models/",
  	    select: function(event, ui) {
  	      $('#car_auto_year_int').autocomplete({
  	        source: "/models/" + ui.item.id + "/auto_years/",
  	        select: function(event, ui) {
  	          $('#car_trim_string').autocomplete({
  	            source: "/auto_years/" + ui.item.id + "/trims"
  	          })
  	        }
  	      });
  	    }
  	  });
    }
  });
});