/*
    GPL license: http://gplv3.fsf.org
    jquery catelog:plusin(function)
    application type: modal dialog
    author:jericho(thisnamemeansnothing[at]gmail.com)
    version:0.1 alpha
    pid-date:2009-4-1 13:03:11
    ========================================
    sample:
    $.fn.jmodal({
        okEvent:function(e){
            alert('jmodal\'ll be closed after u click me:-)');
            }
        });
    ========================================
    ps:
    in order to promote efficiency, 
    you'd better place the stylesheet
    in a *.css file and add link tag in your pages 
*/
/// <reference path="jquery.js"/>
$.extend($.fn, {
    jmodal: function(setting) {
        var ps = $.fn.extend({
            data: {},
            buttonText: 'OK',
            okEvent: function(e) { },
            initWidth: 400,
            title: 'JModal Dialog',
            content: 'This is a jquery plusin!',
            docWidth: $(document).width(),
            docHeight: $(document).height(),
            overlayCss: {
                'position': 'absolute',
                'left': '0',
                'top': '0',
                'background-color': '#7f7f7f',
                'opacity': '0',
                'z-index': '200'
            },
            jmodalbgCss: {
                'z-index': '201',
                'position': 'absolute',
                'background-color': '#555'
            },
            jmodalCss: {
                'z-index': '202',
                'height': 'auto',
                'position': 'absolute',
                'opacity': '0'
            },
            closeCss: {
                'position': 'absolute',
                'right': '5px',
                'top': '5px',
                'width': '16px',
                'height': '16px',
                'font-weight': 'bold',
                'color': '#fff',
                'text-align': 'center',
                'line-height': '16px',
                'display': 'block',
                'text-decoration': 'none'
            },
            titleCss: {
                'height': '30px',
                'background-color': '#4682B4',
                'font-weight': 'bold',
                'text-indent': '10px',
                'color': '#fff',
                'line-height': '30px',
                'border-bottom': 'groove 2px #4682B4'
            },
            contentCss: {
                'height': 'auto',
                'background-color': '#F5FFFA',
                'padding': '20px 10px'
            },
            bottomCss: {
                'background-color': '#eee',
                'border-top': '1px solid #ccc',
                'padding': '5px',
                'text-align': 'right'
            },
            buttonCss: {
                'background-color': '#005EAC',
                'border-color': '#B8D4E8 #124680 #124680 #B8D4E8',
                'border-style': 'solid',
                'border-width': '1px',
                'color': '#FFFFFF',
                'cursor': 'pointer',
                'font-size': '12px',
                'padding': '2px 15px',
                'text-align': 'center',
                'margin-left': '5px',
                'font-family': 'Calibri'
            }
        }, setting);
        function hideModal() {
            $('#jmodal-overlay').animate({ opacity: 0 }, function() { $(this).css('display', 'none') });
            $('#jquery-jmodal-bg').animate({ opacity: 0 }, function() { $(this).css('display', 'none') });
            $('#jquery-jmodal').animate({ opacity: 0 }, function() { $(this).css('display', 'none') });
        }
        if ($('#jquery-jmodal').length == 0) {
            $(document.body).append('<div id="jmodal-overlay" />' +
                '<div id="jquery-jmodal-bg" />' +
                '<div id="jquery-jmodal">' +
                '<a href="javascript:void(0)" id="jquery-jmodal-close" title="关闭">X</a>' +
                '<div id="jmodal-container-title" />' +
                '<div  id="jmodal-container-content" />' +
                '<div id="jmodal-container-bottom">' +
                '<button id="jmodal-bottom-okbutton" ></button>' +
                '</div>');
        }
        else {
            $('#jmodal-overlay').css({ opacity: 0, 'display': 'block' });
            $('#jquery-jmodal-bg').css({ opacity: 0, 'display': 'block' });
            $('#jquery-jmodal').css({ opacity: 0, 'display': 'block' });
        }
        $('#jmodal-overlay').css(ps.overlayCss).css({
            width: ps.docWidth,
            height: ps.docHeight
        }).animate({ opacity: 0.5 });
        $('#jquery-jmodal').css(ps.jmodalCss).css({
            width: ps.initWidth,
            left: (ps.docWidth - ps.initWidth) / 2,
            top: (140 + document.documentElement.scrollTop)
        }).animate({ opacity: 1 }, function() {
            var me = this;
            $('#jquery-jmodal-bg').css(ps.jmodalbgCss).css({
                width: ps.initWidth + 20,
                left: (ps.docWidth - ps.initWidth) / 2 - 10,
                height: $(me).height() + 20,
                opacity: 0.5,
                top: (130 + document.documentElement.scrollTop)
            });
        });
        $('#jquery-jmodal-close').css(ps.closeCss).hover(function() {
            $(this).css({ 'background-color': '#F0FFF0', 'color': '#000' });
        }, function() {
            $(this).css({ 'background-color': 'transparent', 'color': '#fff' });
        }).mouseup(hideModal);
        $('#jmodal-container-title')
                .css(ps.titleCss)
                .html(ps.title)
                .next()
                .css(ps.contentCss)
                .html(ps.content)
                .next()
                .css(ps.bottomCss)
                .children('#jmodal-bottom-okbutton')
                .text(ps.buttonText)
                .css(ps.buttonCss)
                .one('click', function(e) {
                    ps.okEvent(ps.data); hideModal();
                });
    }
})