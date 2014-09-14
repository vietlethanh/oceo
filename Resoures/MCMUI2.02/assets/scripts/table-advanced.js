var TableAdvanced = function () {

    var initTable = function (iTable, iColumnTag) {

        /* Formatting function for row details */
        function fnFormatDetails(oTable, nTr) {
            var aData = oTable.fnGetData(nTr);
            var sOut = '<table>';
            $(oTable).find('th').each(function (index) {
                if ($(this).text() != '' && index < $(oTable).find('th').length) {
                    sOut += '<tr><td>' + $(this).text() + ': </td><td>' + aData[index] + '</td></tr>';
                }
            });
            sOut += '</table>';

            return sOut;
        }
		
        /*
        * Insert a 'details' column to the table
        */
        var nCloneTh = document.createElement('th');
        var nCloneTd = document.createElement('td');
        nCloneTd.innerHTML = '<span class="row-details row-details-close"></span>';

        $(iTable).find('thead tr').each(function () {
            this.insertBefore(nCloneTh, this.childNodes[0]);
        });

        $(iTable).find(' tbody tr').each(function () {
            this.insertBefore(nCloneTd.cloneNode(true), this.childNodes[0]);
        });

        /*
        * Initialize DataTables, with no sorting on the 'details' column
        */
        var oTable = $(iTable).dataTable({
            "bFilter": false,
            "bPaginate": false,
			"sDom":"",
            "aoColumnDefs": [
                { "bSortable": false, "aTargets": [0] }
            ],
            "aaSorting": [[1, 'asc']],
            "aLengthMenu": [
                [5, 15, 20, -1],
                [5, 15, 20, "All"] // change per page values here
            ],
            // set the initial value
            "iDisplayLength": 10,
			
        });
        var thcounter = $(iTable).find('th').length;
        //var checkboxcounter = $(iColumnTag).find('input[type="checkbox"]').length - 1;
        $(iColumnTag).find('input[type="checkbox"]').change(function () {            
			var iCol = 0;
			
            for (var i = 1; i <= oTable.fnSettings().aoColumns.length - 1; i++) {
                if ($(oTable.fnSettings().aoColumns[i].nTh).attr('column-name') == $(this).attr('column-name')) {
                    iCol = i;
                    var bVis = oTable.fnSettings().aoColumns[iCol].bVisible;
                    oTable.fnSetColumnVis(iCol, (bVis ? false : true));
                    if (!bVis) {
                        $(this).parent().addClass('checked');
                    } else {
                        $(this).parent().removeClass('checked');
                    }
                    break;
                }
            }
			
            /* Get the DataTables object again - this is not a recreation, just a get of the object */
            var iCol = parseInt($(this).attr("data-column"));
            
            if (iCol <= 0) {
                for (var i = 1; i <= oTable.fnSettings().aoColumns.length - 1; i++) {
                    var colName = $(oTable.fnSettings().aoColumns[i].nTh).attr('column-name');
                    if (typeof (colName) != 'undefined') {
                        if ($(iColumnTag).find('input[column-name="' + colName + '"]').length > 0) {
                            var bVis = $(this).is(':checked');
                            oTable.fnSetColumnVis(i, (bVis));
                        }
                    }
                }
                if ($(this).attr('checked') == "checked") {
                    $(iColumnTag).find('span').addClass('checked');
                } else {
                    $(iColumnTag).find('span').removeClass('checked');
                }
            }
            
        });

		
        /*$('#sample_2_column_toggler input[type="checkbox"]').change(function(){
        /* Get the DataTables object again - this is not a recreation, just a get of the object */
        /*var iCol = parseInt($(this).attr("data-column"));
        var bVis = oTable.fnSettings().aoColumns[iCol].bVisible;
        oTable.fnSetColumnVis(iCol, (bVis ? false : true));
        });/*
        /* Add event listener for opening and closing details
        * Note that the indicator for showing which row is open is not controlled by DataTables,
        * rather it is done here
        */
		$(iTable).on('click', ' tbody td .btn-details', function () {
            var nTr = $(this).parents('tr')[0];
            if (oTable.fnIsOpen(nTr)) {
                /* This row is already open - close it */
                
				$(this).find('i').addClass("icon-eye-open").removeClass("icon-eye-close");
                oTable.fnClose(nTr);
            }
            else {
                /* Open this row */
                $(this).find('i').addClass("icon-eye-close").removeClass("icon-eye-open");
                oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr), 'details');
            }
        });
		var isHaveChild = true;
		if($(iTable).find("tr.child").length <=0 )
		{
			isHaveChild= false;
			$(iTable).find("th.sorting_disabled").hide();
		}
		if(isHaveChild)		
			$(iTable).find("tr.child").each(function(){
				$(this).find('.row-details').hide();
			});				
		else
			$(iTable).find("tr").each(function(){
				$(this).find('.row-details').parent().hide();
			});				
		
	   $(iTable).on('click', ' tbody td .row-details', function () {
		 var nTr = $(this).parents('tr')[0];
		 $(iTable).find("tr.child").each(function(){
			if($(this).is(":visible"))
			{		
				$(nTr).find('.row-details').addClass("row-details-close").removeClass("row-details-open");
				$(this).hide();
			}
			else
			{
				$(nTr).find('.row-details').addClass("row-details-open").removeClass("row-details-close");$(this).show();
			}
		 });
			//var nTr = $(this).parents('tr')[0];
            /*if ( oTable.fnIsOpen(nTr) )
            {
              
                $(this).addClass("row-details-close").removeClass("row-details-open");
                oTable.fnClose( nTr );
            }
            else
            {
                             
                $(this).addClass("row-details-open").removeClass("row-details-close");
                oTable.fnOpen( nTr, fnFormatDetails(oTable, nTr), 'details' );
            }*/
        });
    }



    return {

        //main function to initiate the module
        init: function (iTable, iColumnTag) {

            if (!jQuery().dataTable) {
                return;
            }

            initTable(iTable, iColumnTag);
        }

    };

}();