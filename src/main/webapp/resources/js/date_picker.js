// Calendar Script
// Licence : GPL (http://www.gnu.org/licenses/licenses.html#GPL)
// Update & Download  : http://www.ziwoo.net/zb/view.php?boardid=zb_ziwoo_javascript&uid=129
// This page was last modified on 2011.12.15 (Since 2010.04.11)

//ex1 : datePicker(event, 'targetFieldName');
//ex2 : datePicker(event, 'targetFieldName', 2);
//����° ���ڴ� ��¥�� �Է��� Ÿ���� �ʵ���� ������ ��츦 ���� �迭Ű.(�⺻��:0)

function datePicker(e, elm) {
	currentElement = (arguments[2])?document.getElementsByName(elm)[arguments[2]]:document.getElementsByName(elm)[0];
	var event = e || window.event;

	if(document.getElementById('currentDiv')) {
		document.getElementById("currentDiv").parentNode.removeChild(document.getElementById("currentDiv"));
	}
	
	if(arguments[0]){
		var eventX = event.clientX;
		var eventY = event.clientY;
		if(eventX>document.body.offsetWidth-182-40) eventX = document.body.offsetWidth-182-40;
		if(eventY>document.body.offsetHeight-158-40) eventY = document.body.offsetHeight-158-40;
		var calDivObj = document.createElement("div");
		calDivObj.setAttribute("id","currentDiv");
		calDivObj.style.width = '150px';
		calDivObj.style.backgroundColor = 'white';
		calDivObj.style.border = "1px solid #D0D0D0";
		calDivObj.style.position = "absolute";
		calDivObj.style.top = eventY+document.body.scrollTop+10+'px';
		calDivObj.style.left = eventX+10+'px';
		calDivObj.style.zIndex = 100000;
		document.body.appendChild(calDivObj);
		fBuildHtml();
	}
}

function fBuildHtml() {
	var currentDate = new Date();
	var igYear = currentDate.getFullYear();
	var igMonth = currentDate.getMonth() + 1;
	var gMonths = new Array("1","2","3","4","5","6","7","8","9","10","11","12");
	var calHtml = "<table border='0' bgcolor='#C0C0C0'>";
	calHtml += "<tr style='font-size:9pt'>";
	calHtml += "<td valign='middle' align='center'>";
	calHtml += "<input type='button' name='PrevMonth' value='<' style='height:20px; width:20px; font:9pt Fixedsys;' onClick='fPrevMonth()'>";
	calHtml += " <select name='tbSelYear' style='font-size:9pt' onChange='fUpdateCal(tbSelYear.value, tbSelMonth.value)'>";
	for(i=1900;i<2030;i++) calHtml += "<OPTION value='"+i+"'>"+i+"</OPTION>";
	calHtml += "</select>";
	calHtml += " <select name='tbSelMonth' style='font-size:9pt' onChange='fUpdateCal(tbSelYear.value, tbSelMonth.value)'>";
	for (i=0; i<12; i++) calHtml += "<option value='"+(i+1)+"'>"+gMonths[i]+"</option>";
	calHtml += "</select>";
	calHtml += " <input type='button' name='PrevMonth' value='>' style='height:20px; width:20px; font:9pt Fixedsys;' onclick='fNextMonth()'>";
	calHtml += "</td>";
	calHtml += "</tr><tr>";
	calHtml += "<td align='center'>";
	calHtml += "<DIV><table width='100%' border='0' cellspacing='1' cellpadding='2'>";
	calHtml += fDrawCal(igYear,igMonth);
	calHtml += "</table></DIV>";
	calHtml += "</td>";
	calHtml += "</tr>";
	calHtml += "</td></tr>";
	calHtml += "</table>";

	document.getElementById('currentDiv').innerHTML = calHtml;
	fSetYearMon(igYear,igMonth);
}

function fDrawCal(iYear, iMonth) {
	var WeekDay = new Array("Sun","Mon","Tue","Wed","Thu","Fri","Sat");
	var calHtml = "<tr>";
	for(i=0; i<7; i++) calHtml += "<td bgcolor='White' width='20' valign='middle' align='center' style='font:bold 10px Tahoma; color:#C0C0C0;'>" + WeekDay[i] + "</td>";
	calHtml += "</tr>";
	var i = 0;
	for (w = 1; w < 7; w++) {
		calHtml += "<tr>";
		for (d = 0; d < 7; d++) {
			if(w==6 && d==6){
				calHtml += "<td bgcolor='#C0C0C0' width='20' valign='middle' align='center' style='padding:1px 0 0 3px; cursor:pointer;' onClick='datePicker()'>";
				calHtml += "<font color='White' face='Tahoma'>X</font>";
				calHtml += "</td>";
			}else{
				calHtml += "<td bgcolor='White' width='20' valign='middle' align='center' style='font:bold 10px Tahoma; cursor:pointer;' onMouseOver=\"this.bgColor='Pink'\" onMouseOut=\"this.bgColor='White'\" onClick='fSetSelected(this)'>";
				calHtml += "<font id='cellText_"+i+"'></font>";
				calHtml += "</td>";
			}
			i++;
		}
		calHtml += "</tr>";
	}
	return calHtml;
}

function fSetYearMon(iYear, iMon){	
	var tbSelYear = document.getElementsByName('tbSelYear')[0];
	var tbSelMonth = document.getElementsByName('tbSelMonth')[0];
	tbSelMonth.options[iMon-1].selected = true;
	for (i = 0; i < tbSelYear.length; i++) if (tbSelYear.options[i].value == iYear) tbSelYear.options[i].selected = true;	
	fUpdateCal(iYear, iMon);
}

function fPrevMonth(){
	var iMon = document.getElementsByName('tbSelMonth')[0].value;
	var iYear = document.getElementsByName('tbSelYear')[0].value;
	if (--iMon<1) {
		iMon = 12;
		iYear--;
	}
	fSetYearMon(iYear, iMon);
}

function fNextMonth(){
	var iMon = document.getElementsByName('tbSelMonth')[0].value;
	var iYear = document.getElementsByName('tbSelYear')[0].value;
	if (++iMon>12) {
		iMon = 1;
		iYear++;
	}
	fSetYearMon(iYear, iMon);
}

function fUpdateCal(iYear, iMonth) {	
	myMonth = fBuildCal(iYear, iMonth);	
	var currentDate = new Date();
	var igYear = currentDate.getFullYear();
	var igMonth = currentDate.getMonth() + 1;
	var igDate = currentDate.getDate();
	var i = 0;
	for (w = 0; w < 6; w++) for (d = 0; d < 7; d++) if(w!=5 || d!=6) {
		with (document.getElementById('cellText_'+parseInt((7*w)+d))) {					
			if (myMonth[w+1][d]<0) {
				color = "#808080";
				innerHTML = -myMonth[w+1][d];
			}else{
				if(d==0) color = "red";
				else if(d==6) color = "blue";
				else color = "black";
				innerHTML = myMonth[w+1][d];
				if(iYear==igYear && iMonth==igMonth && innerHTML==igDate){
					parentNode.style.backgroundColor='#D8FF00';
				}else{
					parentNode.style.backgroundColor='';
				}
			}
		}
	}
}

function fBuildCal(iYear, iMonth) {
	var aMonth=new Array();
	for(i=1;i<7;i++) aMonth[i]=new Array(i);
	var dCalDate=new Date(iYear, iMonth-1, 1);
	var iDayOfFirst=dCalDate.getDay();
	var iDaysInMonth=new Date(iYear, iMonth, 0).getDate();
	var iOffsetLast=new Date(iYear, iMonth-1, 0).getDate()-iDayOfFirst+1;
	var iDate = 1;
	var iNext = 1;
	for (d = 0; d < 7; d++) aMonth[1][d] = (d<iDayOfFirst)?-(iOffsetLast+d):iDate++;
	for (w = 2; w < 7; w++) for (d = 0; d < 7; d++) if(w!=6 || d!=6) aMonth[w][d] = (iDate<=iDaysInMonth)?iDate++:-(iNext++);
	return aMonth;
}

function fSetSelected(aCell){
	var tbSelYear = document.getElementsByName('tbSelYear')[0];
	var tbSelMonth = document.getElementsByName('tbSelMonth')[0];
	var iOffset = 0;
	var iYear = parseInt(tbSelYear.value);
	var iMonth = parseInt(tbSelMonth.value);
	with (aCell.firstChild){
		var iDay = parseInt(innerHTML);
		if(aCell.parentNode.rowIndex<2 && iDay>15) iMonth--;
		if(aCell.parentNode.rowIndex>4 && iDay<15) iMonth++;
		if (iMonth<1) {
			iYear--;
			iMonth = 12;
		}else if (iMonth>12){
			iYear++;
			iMonth = 1;
		}
	}
	currentElement.value = iYear+"-"+(parseInt(iMonth+100).toString().substring(1,3))+"-"+(parseInt(iDay+100)).toString().substring(1,3);
	document.getElementById("currentDiv").parentNode.removeChild(document.getElementById("currentDiv"));
}
