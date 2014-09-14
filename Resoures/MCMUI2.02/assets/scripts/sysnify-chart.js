var Charts = function () {
    function addCommas(nStr) {
        nStr += '';
        x = nStr.split('.');
        x1 = x[0];
        x2 = x.length > 1 ? '.' + x[1] : '';
        var rgx = /(\d+)(\d{3})/;
        while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + ',' + '$2');
        }
        return x1 + x2;
    }
    return {
        initOrdersChart: function () {
            if ($('#orderschart_activities').size() != 0) {

                var amounts = {
                    12: 120, 212: 2120, 324: 3240, 122: 1220, 136: 1360, 250: 2500, 99: 990, 190: 1900
                };
                //Activities
                $('#orderschart_activities_loading').hide();
                $('#orderschart_activities_content').show();
                //LINE CHART
                $('#orderschart').highcharts({

                    chart: {
                        type: 'area',
                        spacingBottom: 30
                    },
                    title: {
                        text: ''
                    },
                    subtitle: {
                        floating: true,
                        align: 'right',
                        verticalAlign: 'bottom',
                        y: 15
                    },
                    legend: {
                        enabled: false
                    },
                    xAxis: {
                        categories: ['03/2013', '04/2013', '05/2013', '06/2013', '07/2013', '08/2013', '09/2013', '10/2013', '11/2013']
                    },
                    yAxis: {
                        title: {
                            text: ''
                        },
                        labels: {
                            formatter: function () {
                                return addCommas(this.value);
                            }
                        }
                    },
                    tooltip: {
                        crosshairs: true,
                        formatter: function () {
                            var y = this.y;
                            return '<b>' + addCommas(y) + '</b><br/>' + '<b>$' + addCommas(amounts[y]) + '</b>';
                        }
                    },
                    plotOptions: {
                        area: {
                            fillOpacity: 0.5
                        }
                    },
                    credits: {
                        enabled: false
                    },
                    series: [{
                        name: '',
                        data: [12, 212, 324, 122, 136, 250, 99, 190]
                    }]
                });

            }
        },

        initAmountsChart: function () {
            if ($('#amountschart_activities').size() != 0) {
                var orders = {
                    120: 12, 2120: 212, 3240: 324, 1220: 122, 1360: 136, 2500: 250, 990: 99, 1900: 190
                };
                //Activities
                $('#amountschart_activities_loading').hide();
                $('#amountschart_activities_content').show();
                //LINE CHART
                $('#amountschart').highcharts({
                    chart: {
                        type: 'area',
                        spacingBottom: 30
                    },
                    title: {
                        text: ''
                    },
                    subtitle: {
                        floating: true,
                        align: 'right',
                        verticalAlign: 'bottom',
                        y: 15
                    },
                    legend: {
                        enabled: false
                    },
                    xAxis: {
                        categories: ['03/2013', '04/2013', '05/2013', '06/2013', '07/2013', '08/2013', '09/2013', '10/2013', '11/2013']
                    },
                    yAxis: {
                        title: {
                            text: ''
                        },
                        labels: {
                            formatter: function () {
                                return addCommas(this.value) + ' USD';
                            }
                        }
                    },
                    tooltip: {
                        crosshairs: true,
                        formatter: function () {
                            var y = this.y;
                            return '<b>$ ' + addCommas(y) + '</b><br/>' + '<b>' + addCommas(orders[y]) + '</b>';
                        }
                    },
                    plotOptions: {
                        area: {
                            fillOpacity: 0.5
                        }
                    },
                    credits: {
                        enabled: false
                    },
                    series: [{
                        name: '',
                        data: [120, 2120, 3240, 1220, 1360, 2500, 990, 1900]
                    }]
                });
            }
        },

        initMovementChart: function () {
            if ($('#movementchart_activities').size() != 0) {

                var amounts = {
                    2: 20, 12: 120, 24: 240, 22: 220, 36: 360, 50: 500, 19: 90, 20: 100
                };
                //Activities
                $('#movementchart_activities_loading').hide();
                $('#movementchart_activities_content').show();
                //LINE CHART
                $('#movementchart').highcharts({

                    chart: {
                        type: 'area',
                        spacingBottom: 30
                    },
                    title: {
                        text: ''
                    },
                    subtitle: {
                        floating: true,
                        align: 'right',
                        verticalAlign: 'bottom',
                        y: 15
                    },
                    legend: {
                        enabled: false
                    },
                    xAxis: {
                        categories: ['03/2013', '04/2013', '05/2013', '06/2013', '07/2013', '08/2013', '09/2013', '10/2013', '11/2013']
                    },
                    yAxis: {
                        title: {
                            text: ''
                        },
                        labels: {
                            formatter: function () {
                                return addCommas(this.value);
                            }
                        }
                    },
                    tooltip: {
                        crosshairs: true,
                        formatter: function () {
                            var y = this.y;
                            return '<b>' + addCommas(y) + '</b><br/>' + '<b>$' + addCommas(amounts[y]) + '</b>';
                        }
                    },
                    plotOptions: {
                        area: {
                            fillOpacity: 0.5
                        }
                    },
                    credits: {
                        enabled: false
                    },
                    series: [{
                        name: '',
                        data: [2, 12, 24, 22, 36, 50, 19, 20]
                    }]
                });

            }
        }
    };

}();