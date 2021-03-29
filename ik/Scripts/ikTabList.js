$.fn.TabList = function (options) {
    var settings = $.extend({
        tabs: []
    }, options);
    var parent = $(this);
    var $navtabs = $('<ul class="nav nav-tabs" role="tablist"></ul>');
    var $navcontent = $('<div class="tab-content"></div>');
    $.each(settings.tabs, function (i, tab) {
        var tabid = tab.title.replace(/\s/g, "");
        var $navtab = $('<li><a href="#' + tabid + '" role="tab" data-toggle="tab"><i class="' + tab.cssClass + '"></i>   ' + tab.title + '</a></li>');
        $navtabs.append($navtab);
        var content = (tab.content !== undefined) ? tab.content : "";// '<img src="~/Content/giphy.gif" />';
        var $content = $('<div data-shown="false" class="tab-pane fade" id="' + tabid + '">' + content + '</div>');
        $navcontent.append($content);
        $($navtab.find("a")).on('click', function () {
            if (tab.contenturl !== undefined) {
                if ($content.attr("data-shown") === "false") {
                    if (settings.loadgif !== undefined)
                        $content.html(settings.loadgif);

                    $.ajax({
                        url: tab.contenturl,
                        type: 'GET',
                        data: {},
                        success: function (response) {
                            if($.isFunction(tab.contentloaded)) {
                                tab.contentloaded(response);
                            }
                            $content.html(response);
                          
                        }
                    });
                }
            }
            $content.attr("data-shown", "true");
        });
        console.log(tab.backgroundcolor);
        $content.css("background-color", tab.backgroundcolor);
    });
    parent.append($navtabs);
    parent.append($navcontent);

}