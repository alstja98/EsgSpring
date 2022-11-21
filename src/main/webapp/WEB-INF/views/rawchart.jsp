<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

#container{

}
</style>
</head>
<body>
	<%@ include file="./header.jsp"%>
	<div class="title">나의 전기차에서 발생되는 배터리 데이터 실시간 확인</div>
<script src="https://code.highcharts.com/stock/highstock.js"></script>
<script src="https://code.highcharts.com/stock/modules/exporting.js"></script>
<script src="https://code.highcharts.com/stock/modules/export-data.js"></script>

<div id="container" style="height: 400px; min-width: 310px; margin-top:30px;"></div>
<div id="container2" style="height: 400px; min-width: 310px; margin-top:40px;"></div>
<div id="container3" style="height: 400px; min-width: 310px; margin-top:40px;"></div>


</body>
<script>
Highcharts.setOptions({
  global: {
    useUTC: false
  }
});

// Create the chart
Highcharts.stockChart('container', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = Math.round(Math.random() * 100);
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
    
      for (i = -999; i <= 0; i += 1) {
        data.push([
          time + i * 1000,
          Math.round(Math.random() * 100)
        ]);
       
      }
      return data;
    }())
  }]
});

</script>
<script>
Highcharts.setOptions({
  global: {
    useUTC: false
  }
});

// Create the chart
Highcharts.stockChart('container2', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = Math.round(Math.random() * 100);
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

      for (i = -999; i <= 0; i += 1) {
        data.push([
          time + i * 1000,
          Math.round(Math.random() * 100)
        ]);
      }
      return data;
    }())
  }]
});

</script>
<script>
Highcharts.setOptions({
  global: {
    useUTC: false
  }
});

// Create the chart
Highcharts.stockChart('container3', {
  chart: {
    events: {
      load: function () {

        // set up the updating of the chart each second
        var series = this.series[0];
        setInterval(function () {
          var x = (new Date()).getTime(), // current time
            y = Math.round(Math.random() * 100);
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

      for (i = -999; i <= 0; i += 1) {
        data.push([
          time + i * 1000,
          Math.round(Math.random() * 100)
        ]);
      }
      return data;
    }())
  }]
});

</script>
</html>