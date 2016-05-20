<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="WEB-INF/jsp/basic/head.jsp" %>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
<%@include file="WEB-INF/jsp/basic/header.jsp" %>
<link rel="Stylesheet" href="${baseUrl}/static/plugins/jerichotab/css/jquery.jerichotab.css" />
<script type="text/javascript" src="${baseUrl}/static/plugins/jerichotab/js/jquery.jerichotab.js"></script>
<style type="text/css">
.functree{margin:0;padding:0;} .functree ul,.functree li{list-style-type:none;margin:0;padding:0;}
.functree li{padding-left:14px;line-height:18px;} .functree span.modules{cursor:pointer;color:#783432;}
.divLeft,.divRight{display:none;float:left;background-color:White;margin:0px;}
#divMainLoader{position:absolute;top:15px;right:15px;z-index:100;width:80px;height:20px;line-height:20px;background:#EEF3F7 url(../images/smallloader.gif) no-repeat 8px center;border:1px solid #A5B6C8;padding-left:30px;font-family:10px;display:none;}
</style>
<script type="text/javascript">
    var jericho = {
        showLoader: function() {
            $('#divMainLoader').css('display', 'block');
        },
        removeLoader: function() {
            $('#divMainLoader').css('display', 'none');
        },
        buildTree: function() {/*
            $('.functree li').each(function() {
                if ($(this).is(':has(ul)'))
                    $(this).addClass('collapse');
                if ($(this).next().is('li') || $(this).next().is('ul'))
                    $(this).css({ borderLeft: 'dashed 1px #dedede' });
            })
            $('li.collapse>span').click(function() {
                $(this).next('ul').slideToggle('fast', function() {
                    if ($(this).parent().hasClass('collapse'))
                        $(this).parent().removeClass('collapse').addClass('expand');
                    else
                        $(this).parent().removeClass('expand').addClass('collapse');
                })
            })*/

            $('p.func').css({ 'cursor': 'pointer', 'color': '#238f8f' }).hover(function() {
                $(this).css({ 'color': '#3de', 'text-decoration': 'underline' });
            }, function() {
                $(this).css({ 'color': '#238f8f', 'text-decoration': 'none' });
            }).click(function() {
                $.fn.jerichoTab.addTab({
                    tabFirer: $(this),
                    title: $(this).text(),
                    //closeable: true,
                    //iconImg: $(this).attr('iconImg'),
                    data: {
                        dataType: $(this).attr('dataType'),
                        dataLink: $(this).attr('dataLink')
                    }
                }).loadData();
            });
        },
        buildTabpanel: function() {
            $.fn.initJerichoTab({
                renderTo: '.divRight',
                uniqueId: 'myJerichoTab',
                contentCss: { 'height': $('.divRight').height() - 50 },
                tabs: [{
                        title: 'JeirchoTab',
                        closeable: false,
                        iconImg: 'images/jerichotab.png',
                        data: { dataType: 'formtag', dataLink: '#tbNews' },
                        onLoadCompleted: function(h) {
                            $('<b style="color:red" />').html('The JerichoTab processed in ' + (new Date().getTime() - d1) + ' milliseconds!').appendTo(h);
                        }
                    }],
                    activeTabIndex: 0,
                    loadOnce: true
                });
            }
        }
    $().ready(function() {
        d1 = new Date().getTime();
        jericho.showLoader();
        var w = $(document).width();
        var h = $(document).height();
        //$('.divLeft').css({ width: 190, height: h - 120, 'display': 'block' });
        $('.divRight').css({ 'width': '100%', 'min-height': '704px','display':'inline', 'padding': '0', 'margin': 0 });
        jericho.buildTree();
        jericho.buildTabpanel();
        jericho.removeLoader();
    })
    $(window).resize(function() {
        var w = $(document).width();
        $('.divRight').css({ width: w });
    })
</script>
<%@include  file="WEB-INF/jsp/basic/nav.jsp"%>
<div class="content-wrapper">
	<section class=" divRight content">

	</section>
</div>

</div>


</body>
<%@include  file="WEB-INF/jsp/basic/foot.jsp"%>
