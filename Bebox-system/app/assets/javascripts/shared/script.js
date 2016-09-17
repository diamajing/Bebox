$(document).ready(function() {

	$(".vc-navigation .js-toggle-sub").on("click",function(e){
		e.preventDefault();
		$(".js-sub").hide();
		$(".open").removeClass("open");
		$(".js-toggle-sub").removeClass("active");
		$(this).addClass("active");
		$(this).siblings(".js-sub").toggle();
	});

});
