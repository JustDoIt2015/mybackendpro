<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <li><p class="func" dataType="iframe" dataLink="${pageContext.request.contextPath}/menu/get"><i class="fa fa-circle-o"></i> &nbsp;&nbsp;&nbsp;&nbsp;菜单管理</p></li>
                <li><p class="func" dataType="iframe" dataLink="${pageContext.request.contextPath}/test/test"><i class="fa fa-circle-o"></i> &nbsp;&nbsp;&nbsp;&nbsp;用户管理</p></li>
                <li><p class="func" dataType="iframe" dataLink="${pageContext.request.contextPath}/menu/get"><i class="fa fa-circle-o"></i> &nbsp;&nbsp;&nbsp;&nbsp;权限管理</p></li>
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