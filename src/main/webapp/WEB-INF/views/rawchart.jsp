<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.title{
	text-align:center;
	font-size:1.5rem;
	font-weight:bold;
	margin-top:20px;
}

.divide_data{
	width:70%;
	margin:0 auto;
	text-align: center;
	margin-top:20px;
	cursor:pointer;
}

.cell{
	display:inline-block;
	text-align:center;
	border: 2px solid #7cb5eca1;
	background:#f8fbfe;
	border-radius:10px;
	width:49%;
	padding: 10px 0;
	font-weight:bold;
	color:#5483b1;
}

.cell:hover{
	background:#bad9f5ab;
}

.pack{
	display:inline-block;
	text-align:center;
	border: 2px solid #7cb5eca1;
	border-radius:10px;
	background:#f8fbfe;
	width:49%;
	padding:10px 0;
	font-weight:bold;
	color:#5483b1;
}

.pack:hover{
	background:#bad9f5ab;
}

.cell_divide{
	width:70%;
	margin: 0 auto;
	margin-top:10px;
}
.temperature{
	width:24%;
	text-align:center;
	border: 2px solid #7cb5eca1;
	border-radius:10px;
	background:#f8fbfe;
	padding:10px 0;
	font-weight:bold;
	color:#5483b1;
	cursor:pointer;
	float:left;
	display:none;
}
.temperature:hover{
	background:#bad9f5ab;
}
.voltage{
	width:24%;
	text-align:center;
	border: 2px solid #7cb5eca1;
	border-radius:10px;
	background:#f8fbfe;
	padding:10px 0;
	font-weight:bold;
	color:#5483b1;
	cursor:pointer;
	display:none;
	float:left;
	margin-left:5px;
}
.voltage:hover{
	background:#bad9f5ab;
}
</style>
</head>
<body>
	<%@ include file="./header.jsp"%>
	<div class="title">나의 전기차에서 발생되는 배터리 데이터 실시간 확인</div>
	<div class="divide_data">
		<div class="cell">
		Cell 개별데이터
		</div>
		<div class="pack">Pack 데이터</div>
	</div>
	<div class="cell_divide">
		<div class="temperature">Cell별 온도</div>
		<div class="voltage">Cell별 전압</div>
	</div>
	<br>
	
	
<script src="https://code.highcharts.com/stock/highstock.js"></script>
<script src="https://code.highcharts.com/stock/modules/exporting.js"></script>
<script src="https://code.highcharts.com/stock/modules/export-data.js"></script>

<div id="container1" style="height: 400px; min-width: 310px; margin-top:30px;"></div>
<div id="container2" style="height: 400px; min-width: 310px; margin-top:40px;"></div>
<div id="container3" style="height: 400px; min-width: 310px; margin-top:40px;"></div>
<div id="container4" style="height: 400px; min-width: 310px; margin-top:40px;"></div>
<div id="container5" style="height: 400px; min-width: 310px; margin-top:40px;"></div>
<div id="container6" style="height: 400px; min-width: 310px; margin-top:40px;"></div>
<div id="container7" style="height: 400px; min-width: 310px; margin-top:40px;"></div>
<div id="container8" style="height: 400px; min-width: 310px; margin-top:40px;"></div>
<div id="container9" style="height: 400px; min-width: 310px; margin-top:40px;"></div>
<div id="container10" style="height: 400px; min-width: 310px; margin-top:40px;"></div>
<div id="container11" style="height: 400px; min-width: 310px; margin-top:40px;"></div>
<div id="container12" style="height: 400px; min-width: 310px; margin-top:40px;"></div>
<div id="container13" style="height: 400px; min-width: 310px; margin-top:40px;"></div>
<div id="container14" style="height: 400px; min-width: 310px; margin-top:40px;"></div>
<div id="container15" style="height: 400px; min-width: 310px; margin-top:40px;"></div>



</body>
<script>
$(document).ready(function(){
	for(let i=4; i<16; i++){
		$('#container'+i).hide();
	}
});

$( '.pack' ).click( function() {
	for(let i=1; i<4; i++){
		$('#container'+i).fadeIn();
	}
	
	for(let i=4; i<16; i++){
		$('#container'+i).hide();
	}
	
	$('.temperature').hide();
	$('.voltage').hide();
} );
	
$('.cell').click(function(){
	$('.temperature').fadeIn();
	$('.voltage').fadeIn();
});

$('.temperature').click(function(){
	
	for(let i=1; i<4; i++){
		$('#container'+i).hide();
	}
	for(let i=4; i<10; i++){
		$('#container'+i).fadeIn();
	}
	for(let i=10; i<16; i++){
		$('#container'+i).hide();
	}
});

$('.voltage').click(function(){
	
	for(let i=1; i<4; i++){
		$('#container'+i).hide();
	}
	for(let i=10; i<16; i++){
		$('#container'+i).fadeIn();
	}
	for(let i=4; i<10; i++){
		$('#container'+i).hide();
	}
});

</script>
<script>
let pack_voltage = new Array();
let index = 0;
<c:forEach var="data" items="${pack_voltage }">
pack_voltage.push("${data}");
</c:forEach>

let pack_current = new Array();
let index2 = 0;
<c:forEach var="data2" items="${pack_current }">
pack_current.push("${data2}");
</c:forEach>

let charge_voltage = new Array();
let index3 = 0;
<c:forEach var="data3" items="${charge_voltage }">
charge_voltage.push("${data3}");
</c:forEach>

let cell1_temperature = new Array();
let index4 = 0;
<c:forEach var="data4" items="${cell1_temperature }">
cell1_temperature.push("${data4}");
</c:forEach>

let cell2_temperature = new Array();
let index5 = 0;
<c:forEach var="data4" items="${cell2_temperature }">
cell2_temperature.push("${data4}");
</c:forEach>

let cell3_temperature = new Array();
let index6 = 0;
<c:forEach var="data4" items="${cell3_temperature }">
cell3_temperature.push("${data4}");
</c:forEach>

let cell4_temperature = new Array();
let index7 = 0;
<c:forEach var="data4" items="${cell4_temperature }">
cell4_temperature.push("${data4}");
</c:forEach>

let cell5_temperature = new Array();
let index8 = 0;
<c:forEach var="data4" items="${cell5_temperature }">
cell5_temperature.push("${data4}");
</c:forEach>

let cell6_temperature = new Array();
let index9 = 0;
<c:forEach var="data4" items="${cell6_temperature }">
cell6_temperature.push("${data4}");
</c:forEach>

let cell1_voltage = new Array();
let index10 = 0;
<c:forEach var="data4" items="${cell1_voltage }">
cell1_voltage.push("${data4}");
</c:forEach>

let cell2_voltage = new Array();
let index11 = 0;
<c:forEach var="data4" items="${cell2_voltage }">
cell2_voltage.push("${data4}");
</c:forEach>

let cell3_voltage = new Array();
let index12 = 0;
<c:forEach var="data4" items="${cell3_voltage }">
cell3_voltage.push("${data4}");
</c:forEach>

let cell4_voltage = new Array();
let index13 = 0;
<c:forEach var="data4" items="${cell4_voltage }">
cell4_voltage.push("${data4}");
</c:forEach>

let cell5_voltage = new Array();
let index14 = 0;
<c:forEach var="data4" items="${cell5_voltage }">
cell5_voltage.push("${data4}");
</c:forEach>

let cell6_voltage = new Array();
let index15 = 0;
<c:forEach var="data4" items="${cell6_voltage }">
cell6_voltage.push("${data4}");
</c:forEach>

Highcharts.setOptions({
  global: {
    useUTC: false
  }
});

// Create the chart
Highcharts.stockChart('container1', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
            var x = (new Date()).getTime(), // current time
              y = parseFloat(pack_voltage[index++]);
            series.addPoint([x, y], true, true);
          }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Pack Voltage]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Pack Voltage',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;
    
      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(pack_voltage[-i] != null){
	          value = parseFloat(pack_voltage[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
     
      return data;
    }())
  }]
});

</script>
<script>
// Create the chart
Highcharts.stockChart('container2', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
            var x = (new Date()).getTime(), // current time
              y = parseFloat(pack_current[index2++]);
            series.addPoint([x, y], true, true);
          }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Pack current]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Pack current',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;

      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(pack_current[-i] != null){
	          value = parseFloat(pack_current[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
      return data;
    }())
  }]
});

</script>
<script>
// Create the chart
Highcharts.stockChart('container3', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = parseFloat(charge_voltage[index3++]);
          series.addPoint([x, y], true, true);
        }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Charge Voltage]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Charge Voltage',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;

      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(charge_voltage[-i] != null){
	          value = parseFloat(charge_voltage[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
      return data;
    }())
  }]
});

//Create the chart
Highcharts.stockChart('container4', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = parseFloat(cell1_temperature[index4++]);
          series.addPoint([x, y], true, true);
        }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Cell1_temperature]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Cell1_temperature',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;

      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(cell1_temperature[-i] != null){
	          value = parseFloat(cell1_temperature[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
      return data;
    }())
  }]
});

//Create the chart
Highcharts.stockChart('container5', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = parseFloat(cell2_temperature[index5++]);
          series.addPoint([x, y], true, true);
        }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Cell2_temperature]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Cell2_temperature',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;

      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(cell2_temperature[-i] != null){
	          value = parseFloat(cell2_temperature[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
      return data;
    }())
  }]
});

//Create the chart
Highcharts.stockChart('container6', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = parseFloat(cell3_temperature[index6++]);
          series.addPoint([x, y], true, true);
        }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Cell3_temperature]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Cell3_temperature',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;

      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(cell3_temperature[-i] != null){
	          value = parseFloat(cell3_temperature[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
      return data;
    }())
  }]
});
//Create the chart
Highcharts.stockChart('container7', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = parseFloat(cell4_temperature[index7++]);
          series.addPoint([x, y], true, true);
        }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Cell4_temperature]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Cell4_temperature',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;

      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(cell4_temperature[-i] != null){
	          value = parseFloat(cell4_temperature[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
      return data;
    }())
  }]
});
//Create the chart
Highcharts.stockChart('container8', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = parseFloat(cell5_temperature[index8++]);
          series.addPoint([x, y], true, true);
        }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Cell5_temperature]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Cell5_temperature',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;

      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(cell5_temperature[-i] != null){
	          value = parseFloat(cell5_temperature[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
      return data;
    }())
  }]
});

//Create the chart
Highcharts.stockChart('container9', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = parseFloat(cell6_temperature[index9++]);
          series.addPoint([x, y], true, true);
        }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Cell6_temperature]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Cell6_temperature',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;

      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(cell6_temperature[-i] != null){
	          value = parseFloat(cell6_temperature[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
      return data;
    }())
  }]
});

//Create the chart
Highcharts.stockChart('container10', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = parseFloat(cell1_voltage[index10++]);
          series.addPoint([x, y], true, true);
        }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Cell1_voltage]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Cell1_voltage',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;

      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(cell1_voltage[-i] != null){
	          value = parseFloat(cell1_voltage[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
      return data;
    }())
  }]
});

//Create the chart
Highcharts.stockChart('container11', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = parseFloat(cell2_voltage[index11++]);
          series.addPoint([x, y], true, true);
        }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Cell2_voltage]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Cell2_voltage',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;

      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(cell2_voltage[-i] != null){
	          value = parseFloat(cell2_voltage[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
      return data;
    }())
  }]
});

//Create the chart
Highcharts.stockChart('container12', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = parseFloat(cell3_voltage[index12++]);
          series.addPoint([x, y], true, true);
        }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Cell3_voltage]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Cell3_voltage',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;

      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(cell3_voltage[-i] != null){
	          value = parseFloat(cell3_voltage[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
      return data;
    }())
  }]
});

//Create the chart
Highcharts.stockChart('container13', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = parseFloat(cell1_voltage[index13++]);
          series.addPoint([x, y], true, true);
        }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Cell4_voltage]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Cell4_voltage',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;

      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(cell4_voltage[-i] != null){
	          value = parseFloat(cell4_voltage[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
      return data;
    }())
  }]
});

//Create the chart
Highcharts.stockChart('container14', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = parseFloat(cell5_voltage[index14++]);
          series.addPoint([x, y], true, true);
        }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Cell5_voltage]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Cell5_voltage',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;

      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(cell5_voltage[-i] != null){
	          value = parseFloat(cell5_voltage[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
      return data;
    }())
  }]
});

//Create the chart
Highcharts.stockChart('container15', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = parseFloat(cell6_voltage[index15++]);
          series.addPoint([x, y], true, true);
        }, 1000);
      }
    }
  },

  rangeSelector: {
    buttons: [{
      count: 1,
      type: 'minute',
      text: '1M'
    }, {
      count: 5,
      type: 'minute',
      text: '5M'
    }, {
      type: 'all',
      text: 'All'
    }],
    inputEnabled: false,
    selected: 0
  },

  title: {
    text: '[Cell6_voltage]'
  },

  exporting: {
    enabled: false
  },

  series: [{
    name: 'Cell6_voltage',
    data: (function () {
      // generate an array of random data
      var data = [],
        time = (new Date()).getTime(),
        i;

      let value;
      for (i = -999; i <= 0; i += 1) {
	      if(cell6_voltage[-i] != null){
	          value = parseFloat(cell6_voltage[-i]);
	      }else{
	       	  value =parseFloat(23.3)+(Math.random()*3/100);
	      }
        data.push([
          time + i * 1000,
          value
        ]);
      }
      return data;
    }())
  }]
});
</script>
<script>

</script>
</html>