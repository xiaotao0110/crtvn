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
<title>手动排考</title>
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
	src="${pageContext.request.contextPath}/resources/js/crtvn/examination/manual.js"></script>	

</head>

<body>
		<div >
		<h4 style="text-align:center; color:#FF0000"> 
			手动排考前，请点击此按钮
			<input id="delAutomatic" type="button" value="清除" class="btn btn-info " style="width: 80px;" />	
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		
			每次生成考试信息前，请点击此按钮
			<input id="delexam" type="button" value="清除" class="btn btn-info " style="width: 80px;" />		
		</h4>
		
		<div class="right_cont">

			<div style="width: 100%; margin: auto">
			<form id="manualForm" action="" method="post">
				
				<h4 style="text-align:center;">排考条件</h4>
				<!-- 默认选中条件 -->
				<input id="collegeId" type="text" value="${collegeId}" style="display:none" />															
				<table class="table table-bordered">
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">院系：</td>
						<td width="23%">
							<input id="college"  class="easyui-combobox" >
						</td>	
										
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">专业：</td>
						<td width="23%">
							<input id="aprofession" name="name" class="easyui-combobox" >
						</td>
						
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">课程代号：</td>
						<td width="23%">
							<input id="acourse" name="name" class="easyui-combobox" >
						</td>
														
					</tr>
					<tr>	
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">教室：</td>
						<td width="23%">
							<input id="aclassroom" name="text" class="easyui-combogrid" style="width: 300px;">
						</td>
									
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1" >监考老师：</td>
						<td width="23%">
							<input id="ateacherCode" name="name" class="easyui-combogrid" style="width: 300px;">
						</td>
													
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">时间：</td>
						<td width="23%">
							<input id="aetime" name="text" class="easyui-combobox" >
						</td>
						
					</tr>
					
				</table>

				<h4 style="text-align:center;">查询条件</h4>
				<table class="table table-bordered">
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">专业：</td>
						<td width="23%">
							<input id="qprofession" name="name" class="easyui-combobox" >
						</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">课程代号：</td>
						<td width="23%">
							<input id="qcourse" name="name" class="easyui-combobox" >
						</td>
								
					</tr>
					<tr>					
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">监考老师一：</td>
						<td width="23%">
							<input id="qteacherCode1" name="name" class="easyui-combobox" >
						</td>
						
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">监考老师二：</td>
						<td width="23%">
							<input id="qteacherCode2" name="name" class="easyui-combobox" >
						</td>						
					</tr>
					
				</table>


				<table class="margin-bottom-20 table  no-border">
					<tr>
						<td class="text-center">
							<input id="manualArrangement" type="button" value="安排" class="btn btn-info " style="width: 80px;" />
							<input id="manualAfter" type="button" value="已安排课程" class="btn btn-info " style="width: 80px;" />							
							<input id="examSumbit" type="button" value="生成考试信息" class="btn btn-info " style="width: 100px;" />
							<input id="manualSumbit" type="button" value="查询" class="btn btn-info " style="width: 80px;" />
							<input id="downloadE" type="button" value="下载考场信息" class="btn btn-info " style="width: 100px;" />
							<input id="downloade" type="button" value="下载考试信息" class="btn btn-info " style="width: 100px;" />							
						</td>
													
					</tr>
				</table>
			</form>
			
			<div id="manualDataGrid"></div>
	
			<div id="manualAfterDL" > 
				<table id="courseDataGrid"></table>
			</div>
	
			</div>
		</div>
	</div>

</body>
</html>