<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
.description{
	text-align:center;
	margin-top:20px;
	font-size:2rem;
	font-weight:bold;
}

.container {
	margin: 0 auto;
	width: 95%;
}

table {
	width: 100%;
}

table th, table td {
	text-align: center;
}

table tr:nth-child(even) {
	background-color: #e4e3e3
}

th {
	background: #333;
	color: #fff;
}

.pagination {
	margin: 0;
}

.pagination li:hover {
	cursor: pointer;
}

.header_wrap {
	padding: 30px 0;
}

.num_rows {
	width: 20%;
	float: left;
}

.tb_search {
	width: 20%;
	float: right;
}

.pagination-container {
	width: 70%;
	float: left;
}

.rows_count {
	width: 20%;
	float: right;
	text-align: right;
	color: #999;
}

.pagination-container nav{
	float:left;
}
</style>
</head>
<body>
	<%@ include file="./header.jsp"%>
	<div class="container">
		<div class="description">Blockchain에 저장된 [모든 유저의 배터리 Raw Data]</div>
		<div class="datata"></div>
		<div class="header_wrap">
			<div class="num_rows">
				<div class="form-group">
					<!--		Show Numbers Of Rows 		-->
					<select class="form-control" name="state" id="maxRows">
						<option value="10">10</option>
						<option value="15">15</option>
						<option value="20">20</option>
						<option value="50">50</option>
						<option value="70">70</option>
						<option value="100">100</option>
						<option value="5000">Show ALL Rows</option>
					</select>

				</div>
			</div>
			<div class="tb_search">
				<input type="text" id="search_input_all"
					onkeyup="FilterkeyWord_all_table()" placeholder="Search.."
					class="form-control">
			</div>
		</div>
		<table class="table table-striped table-class" id="table-id">
			<thead>
				<tr>
					<th>지갑 주소</th>
					<th>셀 번호</th>
					<th>셀 전압</th>
					<th>셀 온도</th>
					<th>팩 전압</th>
					<th>팩 전류</th>
					<th>충전 전압</th>
					<th>업로드 일자</th>
				</tr>
			</thead>
			<tbody>
		</table>

		<!--		Start Pagination -->
		<div class='pagination-container'>
			<nav>
				<ul class="pagination">
					<!--	Here the JS Function Will Add the Rows -->
				</ul>
			</nav>
		</div>
		<div class="rows_count">Showing 11 to 20 of 91 entries</div>

	</div>
	<!-- 		End of Container -->

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
    crossorigin="anonymous"></script>
</body>
<script>
getPagination('#table-id');
$('#maxRows').trigger('change');
function getPagination (table){

	  $('#maxRows').on('change',function(){
	  	$('.pagination').html('');						// reset pagination div
	  	var trnum = 0 ;									// reset tr counter 
	  	var maxRows = parseInt($(this).val());			// get Max Rows from select option
    
	  	var totalRows = $(table+' tbody tr').length;		// numbers of rows 
		 $(table+' tr:gt(0)').each(function(){			// each TR in  table and not the header
		 	trnum++;									// Start Counter 
		 	if (trnum > maxRows ){						// if tr number gt maxRows
		 		
		 		$(this).hide();							// fade it out 
		 	}if (trnum <= maxRows ){$(this).show();}// else fade in Important in case if it ..
		 });											//  was fade out to fade it in 
		 if (totalRows > maxRows){						// if tr total rows gt max rows option
		 	var pagenum = Math.ceil(totalRows/maxRows);	// ceil total(rows/maxrows) to get ..  
		 												//	numbers of pages 
		 	for (var i = 1; i <= pagenum ;){			// for each page append pagination li 
		 	$('.pagination').append('<li data-page="'+i+'">\
							      <span>'+ i++ +'<span class="sr-only">(current)</span></span>\
							    </li>').show();
		 	}											// end for i 
 
     
		} 												// end if row count > max rows
		$('.pagination li:first-child').addClass('active'); // add active class to the first li 
    
    
    //SHOWING ROWS NUMBER OUT OF TOTAL DEFAULT
   showig_rows_count(maxRows, 1, totalRows);
    //SHOWING ROWS NUMBER OUT OF TOTAL DEFAULT

    $('.pagination li').on('click',function(e){		// on click each page
    e.preventDefault();
			var pageNum = $(this).attr('data-page');	// get it's number
			var trIndex = 0 ;							// reset tr counter
			$('.pagination li').removeClass('active');	// remove active class from all li 
			$(this).addClass('active');					// add active class to the clicked 
    
    
    //SHOWING ROWS NUMBER OUT OF TOTAL
   showig_rows_count(maxRows, pageNum, totalRows);
    //SHOWING ROWS NUMBER OUT OF TOTAL
    
    
    
			 $(table+' tr:gt(0)').each(function(){		// each tr in table not the header
			 	trIndex++;								// tr index counter 
			 	// if tr index gt maxRows*pageNum or lt maxRows*pageNum-maxRows fade if out
			 	if (trIndex > (maxRows*pageNum) || trIndex <= ((maxRows*pageNum)-maxRows)){
			 		$(this).hide();		
			 	}else {$(this).show();} 				//else fade in 
			 }); 										// end of for each tr in table
				});										// end of on click pagination list
	});
										// end of on select change 
	 
							// END OF PAGINATION 

}	


		

//SI SETTING
$(function(){
// Just to append id number for each row  
default_index();
				
});

//ROWS SHOWING FUNCTION
function showig_rows_count(maxRows, pageNum, totalRows) {
//Default rows showing
    var end_index = maxRows*pageNum;
    var start_index = ((maxRows*pageNum)- maxRows) + parseFloat(1);
    var string = 'Showing '+ start_index + ' to ' + end_index +' of ' + totalRows + ' entries';               
    $('.rows_count').html(string);
}

//CREATING INDEX
function default_index() {
$('table tr:eq(0)').prepend('<th> ID </th>')

				var id = 0;

				$('table tr:gt(0)').each(function(){	
					id++
					$(this).prepend('<td>'+id+'</td>');
				});
}

//All Table search script
function FilterkeyWord_all_table() {

//Count td if you want to search on all table instead of specific column

var count = $('.table').children('tbody').children('tr:first-child').children('td').length; 

    // Declare variables
var input, filter, table, tr, td, i;
input = document.getElementById("search_input_all");
var input_value =     document.getElementById("search_input_all").value;
    filter = input.value.toLowerCase();
if(input_value !=''){
    table = document.getElementById("table-id");
    tr = table.getElementsByTagName("tr");

    // Loop through all table rows, and hide those who don't match the search query
    for (i = 1; i < tr.length; i++) {
      
      var flag = 0;
       
      for(j = 0; j < count; j++){
        td = tr[i].getElementsByTagName("td")[j];
        if (td) {
         
            var td_text = td.innerHTML;  
            if (td.innerHTML.toLowerCase().indexOf(filter) > -1) {
            //var td_text = td.innerHTML;  
            //td.innerHTML = 'shaban';
              flag = 1;
            } else {
              //DO NOTHING
            }
          }
        }
      if(flag==1){
                 tr[i].style.display = "";
      }else {
         tr[i].style.display = "none";
      }
    }
}else {
  //RESET TABLE
  $('#maxRows').trigger('change');
}
}
</script>
<script>
//ajax로 alldata.csv 파일 실시간으로 표에 추가하기
let alltable = new Array();
$.ajax({
			type : "post",
			url : "/alldata/table",
			data:"",
			success : function(result){
				for(let i=0; i<result.length; i++){
					alltable.push(result[i]);
				}
				for(let i=0; i<500; i++){
					$("#table-id").append('<tr><td>'+(i+1)+'</td><td>'+alltable[i].wallet+'</td><td>'+alltable[i].cell_No+'</td><td>'+alltable[i].cell_Voltage+'</td><td>'+alltable[i].cell_Temperature+'</td><td>'+alltable[i].pack_Voltage+'</td><td>'+alltable[i].pack_Current+'</td><td>'+alltable[i].charge_Voltage+'</td><td>'+alltable[i].upload_Date+'</td></tr></tbody>');
				}
			},
			error : function(){
				console.log("ajax 에러");
			}
		})
</script>
</html>