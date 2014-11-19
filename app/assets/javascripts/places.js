$.ajaxSetup({
  headers: {
    'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
  }
});

$(document).ready(function(){
	$('#places').imagesLoaded(function() {
		$('#places').masonry({
			itemSelector: '.box',
			isFitWidth: true
		});
	});

	$("#favoritePlaceBtn").click(function(){
		$.post(window.location.pathname+"/favorite", {},function(){
			alert("Place favorited!");
		});
		return false;
	});

	$("#unfavoritePlaceBtn").click(function(){
		$.post(window.location.pathname+"/unfavorite", {},function(){
			alert("Place unfavorited!");
		});		
		return false;
	});


});