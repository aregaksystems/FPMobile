$(function () {

    $.fn.generateLookup = function (options) {
        var settings = $.extend({ passid: null, valCode: 'null', valPass: 'null' }, options);
        var control = $(this);

        var data = [];
        control.find('option').remove().end();
        return this.each(function () {
            $.ajax({
                type: "POST",
                url: "../Handlers/Lookups.ashx",
                data: { id: settings.passid, perantID: settings.valCode, DepandancyID: settings.valPass },
                success: function (returnedValue) {
                    if (returnedValue !== '[]') {
                        var obj = JSON.parse(returnedValue)
                        data.push({ "label": 'الرجاء الاختيار من القائمة', "value": '-1' });
                        $.each(obj, function (key, value) {

                            control.append("<option value=" + value.fld_Field_ID + ">" + value.fld_Field_Text + "</option>");
                            data.push({ "label": value.fld_Field_Text, "value": value.fld_Field_ID });

                        });
                         control.prepend("<option value='-1'>الرجاء الاختيار من القائمة</option>");
                        control.val('-1');
                        // if (settings.passid == 1 || settings.passid == 2 || settings.passid == 4 || settings.passid == 5) {
                       // control.multiselect('dataprovider', data);
                        // }
                    }
                }
            });


            return data;
        });

    }


});