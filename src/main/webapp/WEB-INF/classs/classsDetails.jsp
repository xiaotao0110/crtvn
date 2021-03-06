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
<title>班级信息</title>
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
	src="${pageContext.request.contextPath}/resources/js/crtvn/course/courseInfo.js"></script>	
	
</head>
<body>
	<div class="container">
		<div class="content">
			<div class="header clearfix">
				<div class="title">
					<h1>班级信息</h1>
				</div>
				
			</div>
			<div class="main">

				<div class="content clearfix">
					
					<div class="left fl">
						<label for="">辅导员：</label> <input id="a10" type="text" 
								value="${classsVO.teacherName }" disabled />
					</div>
				</div>

				<!--基础信息-->
				<div class="BasicInformation">
					<div class="title">基础信息</div>
				</div>
				<div class="content clearfix">
					<div class="left fl">
						<div>
							<label for="">所属院系：</label> <input id="a1" type="text"
								value="${classsVO.collegeName }" disabled />
						</div>

						<div>
							<label for="">所属专业：</label> <input id="a2" type="text"
								value="${classsVO.professionName }" disabled />
						</div>


					</div>
					<div class="right fr">
						
						<div>
							<label for="">班级编号：</label> <input id="a3" type="text"
								value="${classsVO.classsCode }" disabled />
						</div>

						<div>
							<label for="">班级人数：</label> <input id="a4" type="text"
								value="${classsVO.numbers }" disabled />
						</div>
						
						
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>