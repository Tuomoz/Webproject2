(function() {
	// Code for the funky moving frontpage image
	var bg = document.getElementById("header");
	if (!bg)
		return;

	var enterX, enterY, oldX, oldY, bgX = 0, bgY = 0;

	bg.addEventListener("mouseenter", function(event) {
		oldX = bgX;
		oldY = bgY;
		enterX = event.pageX;
		enterY = event.pageY;
	})
	    
	bg.addEventListener("mousemove" ,function(event) {
	    bgX = oldX + (event.pageX - enterX) / 10;
	    bgY = oldY + (event.pageY - enterY) / 10;
		bg.style.backgroundPosition = bgX + "px " + bgY + "px";
	});
})();