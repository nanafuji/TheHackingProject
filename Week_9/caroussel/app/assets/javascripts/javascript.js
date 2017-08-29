$(document).ready(function() {
	var t = setInterval(function() {move_right()}, 2500);
});

function move_right() {
	$('.slides ul').animate({marginLeft:-600},1000,function() {
		$(this).find("li:last").after($(this).find("li:first"));
		$(this).css({marginLeft:0});
	})
}