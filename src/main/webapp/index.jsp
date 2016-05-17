<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Welcome To My Project</title>
    <style type="text/css">
		.functree{margin:0;padding:0;} .functree ul,.functree li{list-style-type:none;margin:0;padding:0;}
		.functree li{padding-left:14px;line-height:18px;} .functree span.modules{cursor:pointer;color:#783432;}
		.divLeft,.divRight{display:none;float:left;background-color:White;margin:0px;}
		#divMainLoader{position:absolute;top:15px;right:15px;z-index:100;width:80px;height:20px;line-height:20px;background:#EEF3F7 url(../images/smallloader.gif) no-repeat 8px center;border:1px solid #A5B6C8;padding-left:30px;font-family:10px;display:none;}
    </style>
    <link rel="Stylesheet" href="${pageContext.request.contextPath}/static/plugins/jerichotab/css/jquery.jerichotab.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/plugins/jerichotab/js/jquery.jerichotab.js"></script>
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
    
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dist/css/skins/_all-skins.min.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
<header  class="main-header">
<!-- Logo -->
        <a href="#1" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>PP</b>L</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>practice</b>project</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success">4</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 4 messages</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li><!-- start message -->
                        <a href="#">
                          <div class="pull-left">
                            <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                          </div>
                          <h4>
                            Support Team
                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li><!-- end message -->
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                          </div>
                          <h4>
                            AdminLTE Design Team
                            <small><i class="fa fa-clock-o"></i> 2 hours</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                          </div>
                          <h4>
                            Developers
                            <small><i class="fa fa-clock-o"></i> Today</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                          </div>
                          <h4>
                            Sales Department
                            <small><i class="fa fa-clock-o"></i> Yesterday</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                          </div>
                          <h4>
                            Reviewers
                            <small><i class="fa fa-clock-o"></i> 2 days</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">See All Messages</a></li>
                </ul>
              </li>
              <!-- Notifications: style can be found in dropdown.less -->
              <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                  <span class="label label-warning">10</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 10 notifications</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-aqua"></i> 5 new members joined today
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the page and may cause design problems
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-red"></i> 5 new members joined
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-user text-red"></i> You changed your username
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">View all</a></li>
                </ul>
              </li>
              <!-- Tasks: style can be found in dropdown.less -->
              <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-flag-o"></i>
                  <span class="label label-danger">9</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 9 tasks</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Design some buttons
                            <small class="pull-right">20%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">20% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Create a nice theme
                            <small class="pull-right">40%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">40% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Some task I need to do
                            <small class="pull-right">60%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">60% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Make beautiful transitions
                            <small class="pull-right">80%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">80% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                    </ul>
                  </li>
                  <li class="footer">
                    <a href="#">View all tasks</a>
                  </li>
                </ul>
              </li>
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="${pageContext.request.contextPath}/static/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                  <span class="hidden-xs">Alexander Pierce</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="${pageContext.request.contextPath}/static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    <p>
                      Alexander Pierce - Web Developer
                      <small>Member since Nov. 2012</small>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="#" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
              <!-- Control Sidebar Toggle Button -->
              <li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
              </li>
            </ul>
          </div>
        </nav>
</header>
<aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
        <ul class="sidebar-menu">
        	<li class="header">MAIN NAVIGATION</li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>欢迎</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><p class="func" jerichotabindex="0"><i class="fa fa-circle-o"></i>&nbsp;&nbsp;&nbsp;&nbsp;欢迎</p></li>
              </ul>
            </li>
            <!-- <li class="treeview">
              <a href="#">
                <i class="fa fa-share"></i> <span>管理员菜单</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i> 菜单管理<i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li><p class="func" dataType='html' dataLink='template/msn.htm' iconImg='images/msn.gif'><i class="fa fa-circle-o"></i> MSN</p></li>
                    <li><p class="func" dataType='html' dataLink='template/skype.htm' iconImg='images/skype.png'><i class="fa fa-circle-o"></i> Skype</p></li>
                  </ul>
                  <a href="#"><i class="fa fa-circle-o"></i> Browsers<i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li><p class="func" dataType='html' dataLink='template/msn.htm' iconImg='images/msn.gif'><i class="fa fa-circle-o"></i> Firefox</p></li>
                    <li><p class="func" dataType='html' dataLink='template/msn.htm' iconImg='images/msn.gif'><i class="fa fa-circle-o"></i> Internet Explorer</p></li>
                  </ul>
                </li>
              </ul>
            </li> -->
            <li class="treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>管理员菜单</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><p class="func" dataType="iframe" dataLink="${pageContext.request.contextPath}/test/test"><i class="fa fa-circle-o"></i> &nbsp;&nbsp;&nbsp;&nbsp;菜单管理</p></li>
                <li><p class="func" dataType="iframe" dataLink="${pageContext.request.contextPath}/test/test"><i class="fa fa-circle-o"></i> &nbsp;&nbsp;&nbsp;&nbsp;用户管理</p></li>
              </ul>
            </li>
            <%-- <li class="treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>News</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><p class="func" iconImg="images/chess.png" dataType="ajax" dataLink="handler/dataexchange.ashx?action=chess"><i class="fa fa-circle-o"></i> I-go</p></li>
                <li><p class="func" iconImg="images/ent.png" dataType="ajax" dataLink="handler/dataexchange.ashx?action=ent"><i class="fa fa-circle-o"></i> Entertainment</p></li>
                <li><p class="func" iconImg="images/whether.png" dataType="ajax" dataLink="handler/dataexchange.ashx?action=whether"><i class="fa fa-circle-o"></i> Whether</p></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>Testing...</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><p class="func" iconImg="images/clock.png" dataType='ajax' dataLink='${pageContext.request.contextPath}/test/test'><i class="fa fa-circle-o"></i> Get Ticks(AJAX)</p></li>
              </ul>
            </li> --%>
	    </ul>
    </section>
        <!-- /.sidebar -->
</aside>
<div class="content-wrapper">
	<section class=" divRight content">

	</section>
</div>

</div>


</body>
<!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.5 -->
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
    <!-- Sparkline -->
    <script src="${pageContext.request.contextPath}/static/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="${pageContext.request.contextPath}/static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="${pageContext.request.contextPath}/static/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="${pageContext.request.contextPath}/static/plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="${pageContext.request.contextPath}/static/dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="${pageContext.request.contextPath}/static/dist/js/demo.js"></script>
</html>
