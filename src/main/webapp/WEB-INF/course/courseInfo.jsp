<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>课程信息</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery1.9.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>


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
	src="${pageContext.request.contextPath}/resources/js/crtvn/course/courseInfo.js"></script>	

</head>

<body>
	

	<div id="middle">
		<div class="right_cont">
			<div style="width: 100%; margin: auto">
			<form action="course/courseDataGrid" method="post" id="courseForm">
				<table class="table table-bordered">

					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">专业：</td>
						<td width="23%">
							<input id="profession"  class="easyui-combobox" >
						</td>
						
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">课程代号：</td>
						<td width="23%">
							<input id="courseCode"  class="easyui-combobox" >
						</td>
						
					</tr>

					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">课程名称：</td>
						<td><input id="courseName"  class=" span1-1" style="width: 150px;"/></td>				
						
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">考试形式：</td>
						<td width="23%">
							<input id="courseManner"  class="easyui-combobox" >
						</td>
					</tr>
				</table>
			
				<table class="margin-bottom-20 table  no-border">
					<tr>
						<td class="text-center">
							<input id="courseSumbit" type="button" value="查询" class="btn btn-info " style="width: 80px;"/>
						</td>
					</tr>
				</table>
				
			</form>		
			
			<div id="courseDataGrid" ></div>		
			</div>
		</div>
	</div>

</body>
</html>
