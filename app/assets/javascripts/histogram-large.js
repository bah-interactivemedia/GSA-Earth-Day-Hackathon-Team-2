(function(){
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Facility', 'Water Use'],
          // ['092811: RIVERSIDE FACILITY', 0.0294118],
          // ['AFC ADMINISTRATION. BUILDING', 0.0588235],
          // ['CATALINA SERVICE CENTER', 0.0212766],
          // ['CORVALLIS LAB & OFFICE', 0.0714286],
          ['DELAWARE, OH, MAIN OFFICE/LAB', 0.0645161],
          ['DOLORES OFFICE - NEW', 0.0384615],
          ['DURHAM, NH, MAIN OFFICE/LAB', 0.0666667],
          ['ELDORADO SO', 34.5769],
          ['ELY RANGER STATION-OFFICE, Superior', 0.0606061],
          ['FIRE CTR LGE MAIN BLDG', 0.03125],
          ['FLAGSTAFF FORESTRY SCIENCES COMPLEX', 0.12],
          ['FORT MISSOULA BLDG 24', 0.0652174],
          ['FSL', 0.0606061],
          ['FSL', 0.037037],
          ['FSL STATION HQ', 0.0888889],
          ['GREY TOWERS MANSION, PA', 0.0555556],
          ['Headquarters - RMRS Ft. Collins', 0.0952381],
          ['INYO SO/BLM', 0.030303],
          ['L&C INTERPRETIVE CENTER', 34.1034],
          ['LASSEN SO', 0.025],
          ['MAIN BUILDING - FPL', 0.17619],
          ['MENDOCINO SO', 0.0357143],
          ['MIFC CACHE BLDG, Superior', 0.025641],
          ['MISSOULA FIRE SCIENCES LABORATORY', 0.181818],
          ['MORGANTOWN, WV, MAIN OFFICE/LAB', 0.03125],
          ['MTDC OFFICE', 0.0508475],
          ['NCSC ADMINISTRATION BLDG.', 0.0769231],
          ['NCSC OPERATIONS BUILDING (Shasta-Trinity NF)', 0.0275229],
          ['NORTH BUILDING', 0.0714286],
          ['NORTHERN GREAT LAKES VISITOR CENTER, Cheq-Nic', 0.0833333],
          ['OFFICE, MYSTIC RD', 0.0714286],
          ['OFFICE, NEW SUPERVISOR\'S HQ', 0.107143],
          ['OFFICE-PKG-TCS-COMPLEX', 0.0549451],
          ['PARK FALLS ADMIN BLDG, Cheq-Nic', 23.1562],
          ['PILOT PLANT - FPL', 0.134615],
          ['REGIONAL OFFICE - R5', 0.0409836],
          ['RHINELANDER OFFICE/LAB', 0.102564],
          ['San Bernardino NF SO', 0.04],
          ['SOUTHERN HARDWOODS LAB', 0.0294118],
          ['ST PAUL FIELD OFFICE BUILDING', 0.0681818],
          ['STANISLAUS NF Supervisors Office', 0.0294118],
          ['USDA SERVICE CENTER', 0.0545455],
          ['WOOD CHEMISTRY RESEARCH', 0.129032],
          ['WOOD FIBER RESEARCH', 0.121951]
        ]);

        var options = {
          title: 'Water Use Intensity (Gallons/Sq Ft) at Large Facilities (> 25,000 sq ft)',
          legend: { position: 'none' },
        };

        var chart = new google.visualization.Histogram(document.getElementById('large-facilities-histogram'));
        chart.draw(data, options);
      }
}());
