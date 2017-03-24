var refreshRating = function() {
  $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
  $('.rated').raty({ path: '/assets',
  	readOnly: true,
  	score: function() {
  		return $(this).attr('data-score');
  	}
  });
};

$(document).on('turbolinks:load', function(){	// Turbolinks speed up the page load time 
  refreshRating();
  $('.img-zoom').elevateZoom({ zoomType: "inner", 
		cursor: "crosshair"
	});
});