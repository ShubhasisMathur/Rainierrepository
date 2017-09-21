<html>
 <head>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript" src="./assets/global/plugins/jquery.sparkline.min.js"></script>
  <script type="text/javascript">
    google.charts.load('current', {'packages':['gauge']});
    google.charts.setOnLoadCallback(drawGauge);
    
    var gaugeOptions = {min: 0, max: 100, yellowFrom: 80, yellowTo: 90,
      redFrom: 90, redTo: 100, minorTicks: 5};
    var gauge;

    function drawGauge() {
      gaugeData = new google.visualization.DataTable();
      gaugeData.addColumn('number', 'DISK');
      gaugeData.addColumn('number', 'CPU');
      gaugeData.addRows(2);
      gaugeData.setCell(0, 0, 84);
      gaugeData.setCell(0, 1, 75);

      gauge = new google.visualization.Gauge(document.getElementById('gauge_div'));
      gauge.draw(gaugeData, gaugeOptions);
    }

  
  </script>
 </head>
 <body>
  <div id="gauge_div" style="width:580px; height: 5	00px;"></div>
  
  
  html2canvas(document.body, {
  onrendered: function(canvas) {
    document.body.appendChild(canvas);
  }
});
  
 </body>
</html>