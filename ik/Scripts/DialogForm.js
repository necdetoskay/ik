(function ($) {
    function wireUpForm(dialog, updateTargetId, updateUrl,complete) {
        $('form', dialog).submit(function () {

            // Do not submit if the form
            // does not pass client side validation
            if (!$(this).valid())
                return false;

            // Client side validation passed, submit the form
            // using the jQuery.ajax form
            $.ajax({
                url: this.action,
                type: this.method,
                data: $(this).serialize(),
                success: function (result) {
                    // Check whether the post was successful
                    if (result.success) {
                        console.log(result.success);
                        // Close the dialog 
                        $(dialog).dialog('close');

                        // Reload the updated data in the target div
                        $(updateTargetId).load(updateUrl);
                        complete();
                        //console.log(result.console);
                    } else {
                        // Reload the dialog to show model errors                    
                        $(dialog).html(result);

                        // Enable client side validation
                        $.validator.unobtrusive.parse(dialog);

                        // Setup the ajax submit logic
                        wireUpForm(dialog, updateTargetId, updateUrl);
                    }
                }
            });
            return false;
        });
    }




    $.fn.MakeDialogForm = function (options) {
   
        // Establish our default settings
        var settings = $.extend({
            data: {},
            id: '',
            text: '',
            url: '',
            title: null,
            updateurl: null,
            targetid: '',
            bclass: 'btn btn-primary',
            height:'',
            width:'',
            complete: function () { console.log('dialog tamamlandı') }
        }, options);
      
        var html = $('<a>'+settings.text+'</a>');
        html.addClass(settings.bclass);
        html.attr("href", settings.url);
        html.attr("id", settings.id);
        html.attr("data-dialog-title", settings.title);
        html.attr("data-update-target-id", settings.targetid);
        html.attr("data-update-url", settings.updateurl);
        html.attr("data-width", settings.width);
        html.attr("data-height", settings.height);
      

        
      

        $(this).html(html);
       
        
        var elem = html;
        elem.on('click', function () {

            var element = $(this);
         

            // Retrieve values from the HTML5 data attributes of the link
            var dialogTitle = element.attr('data-dialog-title');
            var updateTargetId = '#' + element.attr('data-update-target-id');
            var updateUrl = element.attr('data-update-url');
            var width = element.attr('data-width');
            var height = element.attr('data-height');
            // Generate a unique id for the dialog div
            var dialogId = 'uniqueName-' + Math.floor(Math.random() * 1000);
            var dialogDiv = "<div id='" + dialogId + "'></div>";

            // Load the form into the dialog div
            $(dialogDiv).load(this.href, function () {
                $(this).dialog({
                    modal: true,
                    height: height,
                    width: width,
                    resizable: false,
                    title: dialogTitle,
                    buttons: {
                        "Kaydet": function () {
                            // Manually submit the form
                            var form = $('form', this);
                            $(form).submit();
                        },
                        "İptal": function () { $(this).dialog('close'); }
                    }, open: function (event) {
                        var height = $('#' + dialogId).find('#content').height() + 40;
                        var width = $('#' + dialogId).find('#content').width();
                        $('#' + dialogId).height(height);
                        $('#' + dialogId).width(width);
                        $('.ui-dialog-buttonpane').find('button:contains("İptal")').removeClass("ui-button").addClass('btn btn-danger');
                        $('.ui-dialog-buttonpane').find('button:contains("Kaydet")').removeClass("ui-button").addClass('btn btn-primary');
                    }
                });

                // Enable client side validation
                $.validator.unobtrusive.parse(this);

                // Setup the ajax submit logic
                wireUpForm(this, updateTargetId, updateUrl,settings.complete);
            });
            return false;
        });
    }
}(jQuery));






(function ($) {

    $.fn.makeDialog = function () {

        return this.each(function () {
            var elem = $(this);
            elem.on('click', function () {
                var element = $(this);

                // Retrieve values from the HTML5 data attributes of the link
                var dialogTitle = element.attr('data-dialog-title');
                var updateTargetId = '#' + element.attr('data-update-target-id');
                var updateUrl = element.attr('data-update-url');
                var width = element.attr('data-width');
                var height = element.attr('data-height');
                // Generate a unique id for the dialog div
                var dialogId = 'uniqueName-' + Math.floor(Math.random() * 1000);
                var dialogDiv = "<div id='" + dialogId + "'></div>";

                // Load the form into the dialog div
                $(dialogDiv).load(this.href, function () {
                    $(this).dialog({
                        modal: true,
                        height: height,
                        width: width,
                        resizable: false,
                        title: dialogTitle,
                        buttons: {
                            "Kaydet": function () {
                                // Manually submit the form
                                var form = $('form', this);
                                $(form).submit();
                            },
                            "İptal": function () { $(this).dialog('close'); }
                        }, open: function (event) {
                            $('.ui-dialog-buttonpane').find('button:contains("İptal")').removeClass("ui-button").addClass('btn btn-danger');
                            $('.ui-dialog-buttonpane').find('button:contains("Kaydet")').removeClass("ui-button").addClass('btn btn-primary');
                        }
                    });

                    // Enable client side validation
                    $.validator.unobtrusive.parse(this);

                    // Setup the ajax submit logic
                    wireUpForm(this, updateTargetId, updateUrl,null);
                });
                return false;
            });
        });

    }

}(jQuery));



