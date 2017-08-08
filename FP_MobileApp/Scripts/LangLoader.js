$(function () {
    "use strict";
    var jsonDocument = "../JSON/lang.json";

    $.fn.langLoader = function (options) {
        var settings = $.extend({ lang: null, pagename: null }, options);
        var id = this.attr("id");
        var json = (function () {
            var json = null;
            $.ajax({
                'async': false,
                'global': false,
                'url': jsonDocument,
                'dataType': "json",
                'success': function (data) {
                    json = data;
                }
            });
            return json;
        })();

        var isLangExsits = (function () {
            var jarray = json.sysLang;
            for (var i = 0; i < jarray.length; i++) {
                if (settings.lang == jarray[i].name) {
                    return true;
                }
            }
            return false;


        })();
        var pagevalue = (function () {



        })();
        return this.each(function () {

            if (isLangExsits) {
                var jsonarray = json[settings.pagename];
                $("#" + id + ' :button, textarea, select, :text, a').each(function () {
                    var ctrId = $(this).attr('id');
                    for (var i = 0; i < jsonarray.length; i++) {
                        if (jsonarray[i].name == ctrId) {
                            if ($(this).is(':text') || $(this).is('select') || $(this).is('textarea')) {
                                $(this).parent().find('label').text(jsonarray[i][settings.lang])
                                if (settings.lang == "Ar") {
                                    $(this).parent().find('label').addClass('pull-right');
                                    $(this).parent().find('label').removeClass('pull-left');
                                } else {
                                    $(this).parent().find('label').addClass('pull-left');
                                    $(this).parent().find('label').removeClass('pull-right');
                                }

                                $(this).attr('placeholder', jsonarray[i][settings.lang]);
                                break;
                            }
                            if ($(this).is(':button')) {
                                $(this).val(jsonarray[i][settings.lang]);
                            }
                            if ($(this).is('a') && $(this).attr('data-toggle')) {
                                $(this).text(jsonarray[i][settings.lang]);
                            }
                        }
                    }
                });


            }


        });



    }


});