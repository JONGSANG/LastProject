<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>도서관 일정</title>
</head>
	<div class="box box-info">
		<div class="box-header with-border">
		</div>
		<!-- /.box-header -->

<body class="hold-transition skin-blue sidebar-mini">
	<section class="content-header">
		<h1>도서관 일정관리</h1>
	</section>
	<div class="box box-solid">
		<div id="calendar"></div>

	</div>
	<!-- /.box-body -->

	<div>

		<div class="box box-solid">
			<div class="box-header with-border">
				<h3 class="box-title">일정 추가하기</h3>
			</div>
		</div>
		<form method="post">
			<table class="table table-bordered table-striped dataTable no-footer">
				<tr>
					<th width="150px" style="text-align: center;">도서관 일정 카테고리</th>
					<th width="280px" style="text-align: center;">일정 날짜</th>
					<th style="text-align: center;">일정 내용</th>
				</tr>
				<tr>
					<td align="center" style="vertical-align: middle;"><select
						style="width: 100px; height: 30px;" name="state"
						required="required">
							<option value="1">도서관 휴관</option>
							<option value="2">도서관 행사</option>
							<option value="3">기타 일정</option>
					</select></td>
					<c:set var="nowy" value="${nowyear-2 }"></c:set>
					<td align="center" style="vertical-align: middle;"><select
						style="width: 80px; height: 30px;" name="year" required="required">
							<c:forEach begin="${nowyear-2 }" end="${nowyear+2 }">
								<option value="${nowy}">${nowy }&nbsp;년</option>
								<c:set var="nowy" value="${nowy+1 }"></c:set>
							</c:forEach>
					</select> <c:set var="nowm" value="1"></c:set> <select
						style="width: 70px; height: 30px" name="month" required="required">
							<c:forEach begin="1" end="12">
								<option value="${nowm }">${nowm }&nbsp;월</option>
								<c:set var="nowm" value="${nowm+1 }"></c:set>
							</c:forEach>
					</select> <c:set var="nowd" value="1"></c:set> <select
						style="width: 70px; height: 30px" name="day" required="required">
							<c:forEach begin="1" end="31">
								<option value="${nowd }">${nowd }&nbsp;일</option>
								<c:set var="nowd" value="${nowd+1 }"></c:set>
							</c:forEach>
					</select></td>

					<td align="center">
							<!-- /btn-group -->
							<input type="text" style="max-width: 2000px" name="title"
								class="form-control">

					</td>
				</tr>
				<tr>
					<td colspan="3"><button type="submit"
							class="btn btn-block btn-success">추가</button></td>
				</tr>
			</table>
		</form>
	</div>
	</div>



	<script>
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