<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/basic/head.jsp" %>

<link rel="stylesheet" href="${baseUrl}/static/bootstrap/css/bootstrap-table.css">
<body>
<div  class="content">

<table class="table  table-condensed" width="100%" data-toggle="table">
<thead>
	<tr>
		<th>ID</th>
		<th>name</th>
		<th>type</th>
		<th>url</th>
		<th>percode</th>
		<th>sort</th>
		<th>操作</th>
	</tr>
</thead>
<tbody>
<c:forEach var="menu" items="${menu }">

	<tr>
		<td>${menu.id }</td>
		<td>${menu.name }</td>
		<td>${menu.type }</td>
		<td>${menu.url }</td>
		<td>${menu.percode }</td>
		<td>${menu.sort }</td>
		<td>
		<button id="add" type="button" class="btn btn-link" onclick="javascript:forwardUrl('add', ${menu.id})">Add</button>
		<button id="modify" type="button" class="btn btn-link">modify</button>
		<button id="delete" type="button" class="btn btn-link">delete</button>
		</td>
	</tr>

</c:forEach>
</tbody>
</table>
</div>
</body>
<script type="text/javascript">
	function forwardUrl(act, id) {
		window.location.href = "${baseUrl}/menu/"+act+"/id/"+id;
	}
</script>
<script type="text/javascript" src="${baseUrl}/static/bootstrap/js/bootstrap-table.js">
<%@ include file="/WEB-INF/jsp/basic/foot.jsp" %>