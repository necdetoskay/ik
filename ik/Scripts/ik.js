$.fn.KayıtAdet = function () {
    this.each(function () {
        var table = $(this);
        var tr = table.find("tbody>tr");
        var kayıt = tr.length - 1;
        $(tr[0]).find("th:first").append('   <span class="badge badge-secondart">' + kayıt + '</span>');
    });
    return this;
};



function buildHtmlTable(selector, data) {
    var columns = addAllColumnHeaders(data, selector);

    for (var i = 0; i < data.length; i++) {
        var row$ = $('<tr/>');
        for (var colIndex = 0; colIndex < columns.length; colIndex++) {
            var cellValue = data[i][columns[colIndex]];
            if (cellValue == null) cellValue = "";
            row$.append($('<td/>').html(cellValue));
        }
        $(selector).append(row$);
    }
}

// Adds a header row to the table and returns the set of columns.
// Need to do union of keys from all records as some records may not contain
// all records.
function addAllColumnHeaders(data, selector) {
    var columnSet = [];
    var headerTr$ = $('<tr/>');

    for (var i = 0; i < data.length; i++) {
        var rowHash = data[i];
        for (var key in rowHash) {
            if ($.inArray(key, columnSet) == -1) {
                columnSet.push(key);
                headerTr$.append($('<th/>').html(key));
            }
        }
    }
    $(selector).append(headerTr$);

    return columnSet;
}



function AutoComplete(id, url,select) {
    $(id).autocomplete({
        source: function (request, response) {
            $.ajax({
                url: url,
                minLength: 3,
                dataType: "json",
                type: "post",
                data: { term: request.term },
                success: function (data) {
                    response($.map(data, function (item) {
                        return item;
                    }));
                },
                error: function (xhr, textStatus, errorThrown) {
                    alert("error: " + errorThrown);
                }
            });
        },
        minLeght: 3,
        select: function (event, ui) {
            if (typeof select !== 'undefined' && $.isFunction(select)) {
                select(ui.item.val);
            }

            //alert(ui.item.val);
            //$.ajax({
            //    url: '@Url.Action("PersonelImzaListe")',
            //    data: { personelid: ui.item.val },
            //    type: 'GET',
            //    success: function (data) {
            //        $(document).attr("title", data.SicilNo);

            //        //personelListe(data.Data);
            //    }
            //});
        }
    });
}

// code here
