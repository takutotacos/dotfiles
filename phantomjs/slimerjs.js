var page = require("webpage").create();

page.onConsoleMessage = function(msg) {
	console.log(msg);
};

page.open("http://slimerjs.org", function(status) {
	var mainTitle = page.evaluate(function() {
		console.log('message from the web page');
		return document.querySelector("h1").textContent;
	});
	page.viewportSize = { width:1024, height:768 };
	page.render('screenshot.png');
	console.log('First title of the page is ' + mainTitle);
	slimer.exit();
})
