<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>" >
<title>学生信息</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery1.9.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-easyui-1.2.6/jquery-1.7.2.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/js/jquery-easyui-1.2.6/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/js/jquery-easyui-1.2.6/themes/icon.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-easyui-1.2.6/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-easyui-1.2.6/locale/easyui-lang-zh_CN.js"></script>

<script type="text/javascript" 
	src="${pageContext.request.contextPath}/resources/js/crtvn/student/studentInfo.js"></script>	
</head>

<body>

	<div id="middle">

		<div class="right_cont">

			<div style="width: 100%; margin: auto">
			<form id="studentForm" action="student/studentDataGrid" method="post">
				<table class="table table-bordered">
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">专业：</td>
						<td width="23%">
							<input id="profession" class="easyui-combobox" />
						</td>
					
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">班级编号：</td>
						<td width="23%">
							<input id="classs"  class="easyui-combobox" >
						</td>
						
					</tr>
					
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">学号：</td>
						<td width="23%">
							<input id="studentSID" type="text" class=" span1-1" style="width: 150px;"/>
						</td>	
												
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">学生名称：</td>
						<td width="23%">
							<input id="studentName"  type="text" class=" span1-1" style="width: 150px;"/>
						</td>
					</tr>
				</table>

				<table class="margin-bottom-20 table  no-border">
					<tr>
						<td class="text-center">
							<input id="studentSumbit" type="button" value="查询" class="btn btn-info " style="width: 80px;" /></td>
					</tr>
				</table>				
			</form>
			
			<div id="studentDataGrid" ></div>	
			</div>
		</div>
	</div>
</body>
</html>
