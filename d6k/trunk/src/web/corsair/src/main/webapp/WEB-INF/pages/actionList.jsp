<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="zh_CN">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>权限管理</title>


		<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
		<link href="<c:url value="/resources/css/metisMenu.min.css"/>" rel="stylesheet">
		<link href="<c:url value="/resources/css/sb-admin-2.css"/>" rel="stylesheet">
		<link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
		<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" type="text/css">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<!--<script src="c:url value="dist/js/html5shiv.min.js""></script>-->
		<!--<script src="c:url value="dist/js/respond.min.js" "></script>-->
		<![endif]-->

		<%--todo 页面自身需要的CSS begin--%>
		<%--页面自身需要的CSS end--%>
	</head>
	<body>
		<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
		<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
		<script src="<c:url value="/resources/js/metisMenu.js"/>"></script>
		<script src="<c:url value="/resources/js/sb-admin-2.js"/>"></script>
		<script src="<c:url value="/resources/dist/js/bootbox.min.js"/>"></script>
		<script type="application/javascript">
			$(function(){
				$("tbody tr:even").css("background-color","rgb(31, 86, 134)");
				$("tbody tr:even").children().css("color","white");
				$("tbody tr:odd").css("background","#82accb");
				var num = $("tbody tr:odd").children().length;
				for(var i=1;i < num;i++){
					var count =4*i-2;
					$("tbody tr:even").children().eq(count).children(0).children(0).attr("src","/resources/img/Edit_W.png");
					$("tbody tr:odd").children().eq(count).children(0).children(0).attr("src","/resources/img/Edit_B.png");
				}
			});

		</script>

		<%--<div id="wrapper">
			<jsp:include page="meun.jsp"/>
				&lt;%&ndash;todo 工作空间，实际的内容将在这个位置添加&ndash;%&gt;
				<div id="page-wrapper">--%>
					<div class="row">
						<div class="col-lg-12">
							<h3 class="page-header">权限列表</h3>
						</div>
						<!-- /.col-lg-12 -->
					</div>
					<!-- /.row -->
					<%--<form role="form" class="form-inline" action="actionList.do">--%>
                      <form:form cssClass="form-inline" action="actionList" method="post" commandName="actionListForm">
						<form:hidden property="deleteIds" path="deleteIds"/>
						<form:input type="submit" property="del" value="批量删除" cssStyle="display:none" path="del"/>
						<div class="form-group">
							<input class="form-control" placeholder="权限名称" name="nameQry" autofocus/>
						</div>
						<div class="form-group">
							<input class="form-control" placeholder="权限路径" name="urlQry"/>
						</div>

						<button type="submit" class="btn btn-primary">
							<i class="glyphicon glyphicon-search"></i>
							查询权限
						</button>
						<a class="btn btn-primary" href="actionModify">
							<i class="glyphicon glyphicon-plus"></i>
							新增权限
						</a>
						  <div style="margin:10px 0;"></div>
						<div class="row">
							<div class="col-lg-12 col-md-12">
								<div class="table-responsive">
									<table class="table table-bordered table-striped">
										<thead>
										<tr id="first">
											<th>
												权限名称
											</th>
											<th>
												权限路径
											</th>
											<th>
												编辑
											</th>
											<th>
												删除
											</th>
										</tr>
										</thead>
										<c:if test="${not empty actionList}">
											<c:forEach items="${actionList}" var="action">
												<tr>
													<td>
														<c:out value="${action.name }"/>
													</td>
													<td>
														<c:out value="${action.url }"/>
													</td>
													<td align="center">
														<a  href="actionModify?id=${action.id }">
															<%--<i class="glyphicon glyphicon-edit"></i>class="btn btn-primary"
															编辑--%>
																<img />
														</a>
													</td>
													<td align="center">
														<a
														   href="javascript:if(confirm('是否确定删除这条记录？')){document.forms[0].deleteIds.value='${action.id}';document.forms[0].del.click();}">
															<%--<i class="glyphicon glyphicon-remove"></i>class="btn btn-warning"
															删除--%>
															<img src="/resources/img/Trash.png"/>
														</a>
													</td>
												</tr>
											</c:forEach>
										</c:if>
									</table>
								</div>
							</div>
						</div>
						</form:form>

				<%--</div>
		</div>--%>
	</body>
</html>
