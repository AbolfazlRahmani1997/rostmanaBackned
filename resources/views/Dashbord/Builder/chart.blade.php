



<script>
    window.onload = function () {

        var options = {
            exportEnabled: true,
            animationEnabled: true,
            title:{
                text: "Units Sold VS Profit"
            },
            subtitles: [{
                text: "Click Legend to Hide or Unhide Data Series"
            }],
            axisX: {
                title: "States"
            },
            axisY: {
                title: "Units Sold",
                titleFontColor: "#4F81BC",
                lineColor: "#4F81BC",
                labelFontColor: "#4F81BC",
                tickColor: "#4F81BC"
            },
            axisY3: {
                title: "Units Sold",
                titleFontColor: "#4F81BC",
                lineColor: "#4F81BC",
                labelFontColor: "#4F81BC",
                tickColor: "#4F81BC"
            },
            axisY5: {
                title: "Units Sold",
                titleFontColor: "#4F81BC",
                lineColor: "#4F81BC",
                labelFontColor: "#4F81BC",
                tickColor: "#4F81BC"
            },
            axisY4: {
                title: "Units Sold",
                titleFontColor: "#4F81BC",
                lineColor: "#4F81BC",
                labelFontColor: "#4F81BC",
                tickColor: "#4F81BC"
            },
            axisY2: {
                title: "Profit in USD",
                titleFontColor: "#C0504E",
                lineColor: "#C0504E",
                labelFontColor: "#C0504E",
                tickColor: "#C0504E"
            },
            toolTip: {
                shared: true
            },
            legend: {
                cursor: "pointer",
                itemclick: toggleDataSeries
            },
            data: [{
                type: "spline",
                name: "Units Sold",
                showInLegend: true,
                xValueFormatString: "MMM YYYY",
                yValueFormatString: "#,##0 Units",
                dataPoints: [
                    { x: new Date(2016, 0, 1),  y: 1 },
                    { x: new Date(2016, 1, 1), y: 135 },
                    { x: new Date(2016, 2, 1), y: 144 },
                    { x: new Date(2016, 3, 1),  y: 103 },
                    { x: new Date(2016, 4, 1),  y: 93 },
                    { x: new Date(2016, 5, 1),  y: 129 },
                    { x: new Date(2016, 6, 1), y: 143 },
                    { x: new Date(2016, 7, 1), y: 156 },
                    { x: new Date(2016, 8, 1),  y: 122 },
                    { x: new Date(2016, 9, 1),  y: 106 },
                    { x: new Date(2016, 10, 1),  y: 137 },
                    { x: new Date(2016, 11, 1), y: 142 }
                ]
            },
               ]
        };
        $("#chartContainer").CanvasJSChart(options);

        function toggleDataSeries(e) {
            if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
                e.dataSeries.visible = false;
            } else {
                e.dataSeries.visible = true;
            }
            e.chart.render();
        }

    }

</script>

<div id="chartContainer" style="height: 300px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
