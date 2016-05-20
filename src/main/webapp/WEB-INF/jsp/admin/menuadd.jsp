 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/basic/head.jsp" %>
<link rel="stylesheet" href="${baseUrl}/static/bootstrap/css/bootstrap-table.css">
<body class="sidebar-mini">
<div class="content">
<table class="table  table-condensed" width="100%" data-toggle="table">
<tr><td>
<section class="content-header">
<ol>
<li><a href="#"><i class="fa fa-paper-plane-o"></i>菜单管理</a></li>
</ol>
</section>
</td></tr>
</table>
<table class="table  table-condensed" width="100%" data-toggle="table">
<tr><td>
<section class="content" style="marge">
<form class="form-horizontal" role="form" method="post" action="${baseUrl }/menu/addmenu/id/${id }">
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">parent:</label>
      <div class="col-sm-4">     
      	<select class="form-control">
		  <option selected>Open this select menu</option>
		  <option value="1">One</option>
		  <option value="2">Two</option>
		  <option value="3">Three</option>
		</select>     
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="name">name:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="name" placeholder="Enter menu name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="type">type:</label>
      <div class="col-sm-4">
        <label class = "checkbox-inline">
	      <input type = "radio" name = "type" id = "type1" value = "0" checked> menu
	   </label>
        <label class = "checkbox-inline">
	      <input type = "radio" name = "type" id = "type2" value = "1" checked> permission
	   </label>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="url">url</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="url" name="url" placeholder="Enter menu url">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="percode">percode</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="percode" name="percode" placeholder="Enter percode">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="available">available:</label>
      <div class="col-sm-4">
		<label class = "checkbox-inline">
	      <input type = "radio" name = "available" id = "available1" value = "0" checked> Y
	   </label>
        <label class = "checkbox-inline">
	      <input type = "radio" name = "available" id = "available2" value = "1" checked> N
	   </label>
      </div>
    </div>
   
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">添加</button>
      </div>
    </div>
    
  </form>
</section>
</td></tr>
</table>
</div>
</body>
<script type="text/javascript" src="${baseUrl}/static/bootstrap/js/bootstrap-table.js">
<%@ include file="/WEB-INF/jsp/basic/foot.jsp" %>