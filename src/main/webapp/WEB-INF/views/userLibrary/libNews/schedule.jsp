<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <!DOCTYPE html>
<html>
<head>   
   <!-- 캘린더-->
  <link rel="stylesheet" href="/resources/css/adminLibrary/fullcalendar.css">
  <link rel="stylesheet" href="/resources/css/adminLibrary/fullcalendar.print.css" media="print">

     <script src="/resources/js/jquery-2.2.3.min.js"></script> 
	<script src="/resources/js/bootstrap.js"></script>
	<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<script src="/resources/js/app.js"></script> 
	<!-- 캘린더 -->
	<script src="/resources/js/moment.min.js"></script>
	<script src="/resources/js/maincalendar.js"></script>
</head>
<body>
	<section>
		<div id="word">
			<font style="font-size: 40px">도서관 일정</font>
		</div>
		<div id="link">
			<div id="link56">
				<a href="/">home ></a><a href="#">도서관소식 >&nbsp;</a>
			</div>
			<b>도서관 일정</b>
		</div>
	</section>
	
	
	
	<div id="insidebody">
	
	 <div id="calendar" style="margin-right: 20px"></div>
	
	
	<table style="width: 775px; margin-top: 10px">
	<tr>
	<td style="text-align : right;"><img src="/resources/images/schedulecolor.png"></td>
	</tr>
	<tr><td> &nbsp;</td></tr>
	</table>
	
	
	<%-- 	<c:forEach items="${list }" var="list">
	<tr height="20px">
	<td style="font-weight: 900; font-size: 20px; color: black;" width="10px" >-</td>
	<td style="text-align: right; font-size: 20px; width: 50px; color: gray;">&nbsp;${list.day }일</td>
	<td style="padding-left: 10px; font-size: 19px; font-weight: 600; color:rgba(77,72,225,0.7);">${list.title }</td>
	<td width="1px"></td>
	</tr>
	</c:forEach> --%>
	
	<!-- 현재 년도 ${nowyear } 현재 달 ${nowmonth +1 } -->
<%-- 	
	응답하라 지금은 몇년도인가!! ${nowyear }
	응답하라 지금은 몇월인가!! ${nowmonth +1 }
	 --%>
	</div>
	<script type="text/javascript">
  $(function () {

    /* initialize the external events
     -----------------------------------------------------------------*/
    function ini_events(ele) {
      ele.each(function () {

        // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
        // it doesn't need to have a start or end
        var eventObject = {
          title: $.trim($(this).text()) // use the element's text as the event title
        };

        // store the Event Object in the DOM element so we can get to it later
        $(this).data('eventObject', eventObject);

        // make the event draggable using jQuery UI
        $(this).draggable({
          zIndex: 1070,
          revert: true, // will cause the event to go back to its
          revertDuration: 0  //  original position after the drag
        });

      });
    }

    ini_events($('#external-events div.external-event'));

    /* initialize the calendar
     -----------------------------------------------------------------*/
    //Date for the calendar events (dummy data)
    var date = new Date();
    var d = date.getDate(),
        m = date.getMonth(),
        y = date.getFullYear();
    
    
    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      },
      buttonText: {
        today: 'today',
        month: 'month',
        week: 'week',
        day: 'day'
      },
 events: [
    	  
    	  <c:forEach  items="${list }" var="list">
    	  {
              title: '${list.title }',
              start: new Date("${list.year }", "${list.month-1 }", "${list.day }"),
              <c:if test="${list.state == 1 }">
              backgroundColor: "#f56954", //red
              borderColor: "#f56954" //red
            	  </c:if>
              <c:if test="${list.state == 2 }">
              backgroundColor: "#00a65a", //green
              borderColor: "#00a65a" //green
            	  </c:if>
              <c:if test="${list.state == 3 }">
              backgroundColor: "#3c8dbc", //blue
              borderColor: "#3c8dbc" //blue
            	  </c:if>
            },
    		</c:forEach> 
    	  
        {
          title: '도서관 오픈',
          start: new Date("2000", "12"-1, 6),
//           end: new Date("2016", "10", d + 2),
          backgroundColor: "#3c8dbc", //red
          borderColor: "#3c8dbc" //red
        },
       /*  {
          title: 'Long Event',
          start: new Date(y, m, d - 5),
          end: new Date(y, m, d - 2),
          backgroundColor: "#f39c12", //yellow
          borderColor: "#f39c12" //yellow
        } */
       
      ],
      editable: true,
      droppable: true, // this allows things to be dropped onto the calendar !!!
      drop: function (date, allDay) { // this function is called when something is dropped

        // retrieve the dropped element's stored Event Object
        var originalEventObject = $(this).data('eventObject');

        // we need to copy it, so that multiple events don't have a reference to the same object
        var copiedEventObject = $.extend({}, originalEventObject);

        // assign it the date that was reported
        copiedEventObject.start = date;
        copiedEventObject.allDay = allDay;
        copiedEventObject.backgroundColor = $(this).css("background-color");
        copiedEventObject.borderColor = $(this).css("border-color");

        // render the event on the calendar
        // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
        $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

        // is the "remove after drop" checkbox checked?
        if ($('#drop-remove').is(':checked')) {
          // if so, remove the element from the "Draggable Events" list
          $(this).remove();
        }

      }
    });

    /* ADDING EVENTS */
    var currColor = "#3c8dbc"; //Red by default
    //Color chooser button
    var colorChooser = $("#color-chooser-btn");
    $("#color-chooser > li > a").click(function (e) {
      e.preventDefault();
      //Save color
      currColor = $(this).css("color");
      //Add color effect to button
      $('#add-new-event').css({"background-color": currColor, "border-color": currColor});
    });
    $("#add-new-event").click(function (e) {
      e.preventDefault();
      //Get value and make sure it is not null
      var val = $("#new-event").val();
      if (val.length == 0) {
        return;
      }

      //Create events
      var event = $("<div />");
      event.css({"background-color": currColor, "border-color": currColor, "color": "#fff"}).addClass("external-event");
      event.html(val);
      $('#external-events').prepend(event);

      //Add draggable funtionality
      ini_events(event);

      //Remove event from text input
      $("#new-event").val("");
    });
  });
</script>



	</body>
	</html>
	
	
	
	
