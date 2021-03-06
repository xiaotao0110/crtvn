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
<title>时间段信息</title>
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
	src="${pageContext.request.contextPath}/resources/js/crtvn/examination/timeDateInfo.js"></script>	

</head>

<body>

	<div id="middle">

		<div class="right_cont">

			<div style="width: 100%; margin: auto">

				<table class="margin-bottom-20 table  no-border">
					<tr>
						<td class="text-center">
							<input id="addTimeBtn" type="button" value="添加" class="btn btn-info " style="width: 80px;"/>
							<input id="delTimeBtn" type="button" value="删除" class="btn btn-info " style="width: 80px;"/>
						</td>
					</tr>
				</table>
				
				<div id="timeDataGrid"></div>
				
				<div id="addTimeDL" > 
					<br>
					<div >
						&nbsp;&nbsp;&nbsp;
						开始时间：<input id="startTime" type="text"  >
						<br/><br/><br/>
						&nbsp;&nbsp;&nbsp;
						结束时间：<input id="endTime" type="text"  >
					</div>
				</div>
				
				<div id="delTimeDL" > 
					<br>
					<div >
						<h4  style="text-align:center;">是否确认删除?</h4>
					</div>
				</div>
  			 </div>
		</div>
	</div>
</body>
</html>