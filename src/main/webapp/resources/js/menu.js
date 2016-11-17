$(document).ready(function() {
	var day=['일요일','월요일','화요일','수요일','목요일','금요일','토요일'],
	   month=['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'];
   SetData();
   function SetData() {
	   var now = new Date();
	   $('.date').html(day[now.getDay()]+'  ');
	   $('.date').append(' '+month[now.getMonth()]+' ');
	   $('.date').append(now.getDate()+'일  ');
	   $('.date').append(now.getFullYear()+'년 ');
	   
	   hour=now.getHours();
	   minutes=now.getMinutes();
	   if (minutes<10) {minutes='0'+minutes};
	   $('.date').append(hour+'시 '+minutes+'분');
	}
  	setInterval(SetData,60);

});