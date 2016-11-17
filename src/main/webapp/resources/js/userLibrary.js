//탭메뉴 부분

$(function() {

	$(".tab_content").hide();
	$(".tab_content:first").show();

	$("ul.tabs li").click(function() {
		$("ul.tabs li").removeClass("active").css("color", "#333");
		// $(this).addClass("active").css({"color": "darkred","font-weight":
		// "bolder"});
		$(this).addClass("active").css("color", "darkred");
		$(".tab_content").hide()
		var activeTab = $(this).attr("rel");
		$("#" + activeTab).fadeIn()
	});
});

//슬라이드
$(function() {
    $('#main_bn').ulslide({
        statusbar: true,
        width: 256,
        height: 192, 
        affect: 'slide', 
        axis: 'x', 	
        navigator: '#main_bn_btn a',
        duration: 400, 
		autoslide: 3000,
    });
});

//캘린더
