<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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