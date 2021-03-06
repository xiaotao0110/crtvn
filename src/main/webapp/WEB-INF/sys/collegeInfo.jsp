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

<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath}/resources/i/app-icon72x72@2x.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/amazeui.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin.css">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/xcConfirm.css"/>
<script src="${pageContext.request.contextPath}/resources/js/xcConfirm.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
	.sgBtn{width: 135px; height: 35px; line-height: 35px; margin-left: 10px; margin-top: 10px; text-align: center; background-color: #0095D9; color: #FFFFFF; float: left; border-radius: 5px;}
</style>

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

<script type="text/javascript">
	$(function(){
		
		var bodyHeight = $(window).height();
		var bodyWidth = $(window).width();
		$("#professionDataGrid").datagrid({
			url:"profession/professionDataGrid",
	        title: "专业信息列表",
	        width: bodyWidth - 30,  
	        height: bodyHeight-190,       
	        rownumbers: true,
	        pagination: true,
	        columns:[[    
	           {field:"collegeName",title:"所属学院",width:bodyWidth * 0.1},
	           {field:"professionCode",title:"专业代号",width:bodyWidth * 0.1},    
	           {field:"professionName",title:"专业名称",width:bodyWidth * 0.1},   
	           {field:"departmentHead",title:"系主任",width:bodyWidth * 0.1},    
	           {field:"secretary",title:"书记",width:bodyWidth * 0.05}, 
	        ]]
	    });
		
		if("${courseCount}" == 0){			
			var txt= "本学期暂无考试安排！";
			window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.info,{
				onOk:function(){
					window.history.go(-1);
				}
			});

		}
		
	    
	    
	});
</script>

</head>

<body>
	<div class="admin-index" >
		<dl data-am-scrollspy="{animation: 'slide-right', delay: 100}">
			<dt class="qs">
				<i class="am-icon-users"></i>
			</dt>
			<dd>${professionCount}</dd>
			<dd class="f12">专业</dd>
		</dl>
		<dl data-am-scrollspy="{animation: 'slide-right', delay: 300}">
			<dt class="cs">
				<i class="am-icon-area-chart"></i>
			</dt>
			<dd><a href="course/courseInfo">${courseCount}</a></dd>
			<dd class="f12">应考科目</dd>
		</dl>
		<dl data-am-scrollspy="{animation: 'slide-right', delay: 600}">
			<dt class="hs">
				<i class="am-icon-shopping-cart"></i>
			</dt>
			<dd><a href="student/studentInfo">${studentCount}</a></dd>
			<dd class="f12">应考学生</dd>
		</dl>
		<dl data-am-scrollspy="{animation: 'slide-right', delay: 900}">
			<dt class="ls">
				<i class="am-icon-cny"></i>
			</dt>
			<dd><a href="teacher/teacherInfo">${teacherCount}</a></dd>
			<dd class="f12">学院老师</dd>
		</dl>
	</div>
	<div class="admin-biaoge">
		<div class="xinxitj" style="text-align:center;width:1250px;">专业信息概况</div>
		<div id = "professionDataGrid"></div>
		
	</div>


</body>
</html>