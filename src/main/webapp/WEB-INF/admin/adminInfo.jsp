﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>" >
<title>教务人员信息</title>
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
	src="${pageContext.request.contextPath}/resources/js/crtvn/admin/adminInfo.js"></script>	
</head>

<body>
	<span >
		<h3 style="text-align:center;">考务人员列表</h3>
	</span>
	
	<div id="middle">	
		<div class="right_cont">

			<div style="width: 100%; margin: auto">
			<form  id="adminForm" action="admin/academicianDataGrid">
				<table class="table table-bordered">
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">院系：</td>
						<td width="23%">
							<input id="collegeCode"  class="easyui-combobox" >
						</td>				
					</tr>
				</table>

				<table class="margin-bottom-20 table  no-border">
					<tr>
						<td class="text-center">
							<input id="adminSumbit" type="button" value="查询" class="btn btn-info " style="width: 80px;" />
							<input id="addAdminBtn" type="button" value="添加" class="btn btn-info " style="width: 80px;" />
							<input id="login" type="button" value="退出" class="btn btn-info " style="width: 80px;" />
						</td>
					</tr>
				</table>
			</form>	
			
			<div id="adminDataGrid" ></div>		
			
			<form id ="addAcademician"  action="" >
			<div id="addAdminDL" > 
				<br>
				<br>
				<div >
					&nbsp;&nbsp;&nbsp;
					院&nbsp;&nbsp;&nbsp;系：<input id="collegeId" class="easyui-combobox" >
				</div>
				
				<br>
				<br>
				<div >
					&nbsp;&nbsp;&nbsp;
					姓&nbsp;&nbsp;&nbsp;名：<input type="text" id="name" name="name"  >
				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span id="n_msg" style="align:center">2-5个字母、汉字、数字组合</span>
				
				<br>
				<br>
				<div >
					&nbsp;&nbsp;&nbsp;
					密&nbsp;&nbsp;&nbsp;码：<input type="text" id="password" name="name" >
				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span id="p_msg" style="align:center">6-16个大小写字母、数字组合</span>
				
			</div>
			</form>
				
			</div>
		</div>
	</div>
</body>
</html>