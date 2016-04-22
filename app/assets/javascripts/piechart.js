(function(){
      google.charts.setOnLoadCallback(drawPieChart);
      function drawPieChart() {

        var data = google.visualization.arrayToDataTable([
          ['Facility Size', 'Total Gallons'],
          ['0-10k sq ft.', 1514],
          ['10k-15k sq ft.', 12016],
          ['15k-20k sq ft.', 2742],
          ['20k-50k sq ft.', 6245],
          ['>50k sq ft.', 93]
        ]);

        var options = {
          title: 'Total Water use by Facility Size'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
}());
