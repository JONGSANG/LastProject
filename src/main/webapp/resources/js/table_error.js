// JavaScript Document
$(document).ready(function() {
   $('table.sortable tbody tr:odd').addClass('odd');
   $('table.sortable tbody tr:even').addClass('even');
 });

 $(document).ready(function() {
   //$('table.sortable th.sorting').click()
   $('table.sortable').each(function() {
     var $table = $(this);
     $('th', $table).each(function(column) {
       var $header = $(this);
       if ($header.is('.sorting')) {
		   //header에서 sort-alpha이란 클래스가있다면
         $header.addClass('clickable').hover(function() {
		//clickable이라는 클래스를 달아준다 그리고 호버시											
           $header.addClass('hover');
		   //hover이라는 클래스를 달아준다.
         }, function() {
           $header.removeClass('hover');
		   //호버가 안되면 다시 hover이라는 클래스 삭제
         }).click(function() {
			 //자 그리고 클릭시
           var rows = $table.find('tbody > tr').get();
		   //테이블바디에서 tr을 찾아 row로 지정
		   //rows.sort()사용시 1,10, 100 ,2 
           rows.sort(function(a, b) {
			 //알파벳순이아닌 값의크기순으로 정렬 하기 인자비교
             var keyA = $(a).children('td').eq(column).text()
               .toUpperCase();
			   //대문자변환 첫번째글자로만 구분
             var keyB = $(b).children('td').eq(column).text()
               .toUpperCase();
             if (keyA < keyB) return -1;
             if (keyA > keyB) return 1;
             return 0;
           });
           $.each(rows, function(index, row) {
			 //각각 정리된 배열을 다시테이블에삽입.					 
             $table.children('tbody').append(row);
           });
         });
       }
     });
   });
 });