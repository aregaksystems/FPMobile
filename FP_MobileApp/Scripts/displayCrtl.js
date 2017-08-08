$(function () {
    "use strict";
    var jsonDocument = "../JSON/controlRander.json";
    $.fn.displayCtrl = function (options) {
        var settings = $.extend({ ctrID: null, CtrValue: null }, options);
        var jsonObj;
        return this.each(function () {
            $.getJSON(jsonDocument, function (j) {
                for (var key in j) {
                    var row = j[key];
                    if (settings.CtrValue != null && row.ComboValue == settings.CtrValue) {
                        $("#" + row.ControlID).parent().css("display", "block");
                    }
                }


            });
        });
    

    };



});