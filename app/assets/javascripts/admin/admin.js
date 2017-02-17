$(document).ready(function() {
	/*$(".table tbody tr").click(function() {
		window.location.href = $(this).data("link");
    });*/

    var hash = document.location.hash;
	var prefix = "";
	if (hash) {
		$('.nav-tabs a[href='+hash.replace(prefix,"")+']').tab('show');
	}

	$('.nav-tabs a').on('shown.bs.tab', function (e) {
		window.location.hash = e.target.hash.replace("#", "#" + prefix);
	});

	$(".vc-navigation .js-toggle-sub").on("click",function(e){
		e.preventDefault();
		$(".js-sub").hide();
		$(".open").removeClass("open");
		$(".js-toggle-sub").removeClass("active");
		$(this).addClass("active");
		$(this).siblings(".js-sub").toggle();
	});

	$("#js-sortable").sortable({
		update: function() {
			return $.post($(this).data('sort-url'), $(this).sortable('serialize'));
		}
	});
});
