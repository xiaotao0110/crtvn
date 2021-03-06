<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>课程信息</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/student.css">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-1.9.1.min.js"></script>

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
	src="${pageContext.request.contextPath}/resources/js/crtvn/course/courseDetails.js"></script>		
	
</head>
<body>
	<div class="container">
		<div class="content">
			<div class="header clearfix">
				<div class="title"><h1>课程信息</h1></div>
				<div class="bottom fr">
					<a id="emit" href="javascript:;">编辑</a> 
					<a id="keep" href="javascript:;" style="display:none">保存</a>			
				</div>
			</div>
			<div class="main">
			
				<div class="content clearfix">
					<div class="left fl">
						<label for="">考试形式：</label>
						<input id="courseManner"  class="easyui-combobox" disabled>
					</div>
					
					<div class="right fl">
						<label for="">教学班号：</label> 
						<input id="classs" class="easyui-combobox" >
					</div>
										
					<div class="left fr">
						<label for="">开课时间：</label> 
						<input  type="text" value="${courseVO.startcd}" disabled />					
					</div>
					
					<div class="right fr">
						<label for="">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;质：</label> 
						<input  type="text" value="${courseVO.courseNature==0?'选修':'必修'}" disabled />					
					</div>

				</div>
			
				<!--基础信息-->
				<div class="BasicInformation">
					<div class="title">基础信息</div>
				</div>
				<div class="content clearfix" style="height: 150px;">
					<div class="left fl">
						
						<!-- 默认选中条件 -->
						<input id="manner" type="text" value="${courseVO.courseManner}" style="display:none" />
						<!-- 查询条件 -->
						<input id="PID" type="text" value="${courseVO.professionId}" style="display:none" />
						<input id="CID" type="text" value="${courseVO.courseId}" style="display:none" />
						
						<div>
							<label for="">开课院系：</label> <input type="text"
								value="${courseVO.collegeName}" disabled />
						</div>

						<div>
							<label for="">所属专业：</label> <input type="text"
								value="${courseVO.professionName}" disabled />
						</div>

						<div>
							<label for="">课程代号：</label> <input  type="text"
								value="${courseVO.courseCode}" disabled />
						</div>

					</div>
					<div class="right fr">
						<div>
							<label for="">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分：</label> 
							<input id="${courseVO.courseCredit}" type="text" value="4.0" disabled />
						</div>

						<div>
							<label for="">课程名称：</label> <input  type="text"
								value="${courseVO.courseName}" disabled />
						</div>

						<div>
							<label for="">选课人数：</label> <input  type="text"
								value="${courseVO.numbers}" disabled />
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>