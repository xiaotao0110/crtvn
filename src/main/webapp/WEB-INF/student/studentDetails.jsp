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
<title>学生信息</title>
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
	src="${pageContext.request.contextPath}/resources/js/crtvn/student/studentDetails.js"></script>	
</head>
<body>
	<div class="container">
		<div class="content">
			<div class="header clearfix">
				<div class="title">
					<h1>学生信息</h1>
				</div>
				<div class="bottom fr">
					<a id="keep" href="javascript:;" style="display:none">保存</a>
				</div>
			</div>
			<div class="main">

				<div class="content clearfix">
					<div class="left fl">
						<a style="width: 50px;" id="emit1" href="javascript:;">编辑</a> <br/>
						<label for="">考试科目：</label> 
						<input id="testSubjects" name="text" class="easyui-combobox" >
					</div>

					<div class="right fr">
						<a style="width: 50px;" id="emit2" href="javascript:;">编辑</a> <br/>
						<label for="">非考试科目：</label> 
						<input id="noTestSubjects" name="name" class="easyui-combobox" >
					</div>
					
					<div class="left fl">
						<label for="">是否考试：</label> 
						<input id="status" name="text" class="easyui-combobox" disabled>
					</div>
				</div>

				<div class="BasicInformation">
					<div class="title">考试信息</div>
				</div>
				<div class="content clearfix">
					<div class="left fl"  style="height:80px;">
						<div>
							<label for="">缺考理由：</label> 
							<textarea id="reason" style="resize:none;" rows="5" cols="100" disabled></textarea>
						</div>
					</div>
					
				</div>

				<div class="BasicInformation">
					<div class="title">基础信息</div>
				</div>
				<div class="content clearfix">
					<div class="left fl">
					
						<!-- 查询条件 -->
						<input id="studentId" type="text" value="${studentVO.studentId}" style="display:none" />
							
						<div>
							<label for="">所属院系：</label> <input id="a1" type="text"
								value="${studentVO.collegeName}" disabled />
						</div>

						<div>
							<label for="">所属专业：</label> <input id="a2" type="text"
								value="${studentVO.professionName}" disabled />
						</div>
						
						<div>
							<label for="">班级：</label> <input id="a3" type="text"
								value="${studentVO.classsCode}" disabled />
						</div>
						
						<div>
							<label for="">学号：</label> <input id="a3" type="text"
								value="${studentVO.SID}" disabled />
						</div>

						<div>
							<label for="">名称：</label> <input id="a4" type="text"
								value="${studentVO.studentName}" disabled />
						</div>
						
					</div>
					<div class="right fr">
						 <div>
                            <label for="">性别：</label>
                            <input value = "${studentVO.gender eq 0 ? '男':'女'}" disabled> 
                        </div>

						<div>
							<label for="">年龄：</label> <input id="a6" type="text"
								value="${studentVO.age}" disabled />
						</div>

						<div>
							<label for="">身份证：</label> <input id="a7" type="text"
								value="${studentVO.idcard}" disabled />
						</div>
												
						<div>
							<label for="">联系电话：</label> <input id="a7" type="text"
								value="${studentVO.phone}" disabled />
						</div>
						
						<div>
							<label for="">年级：</label> <input id="a7" type="text"
								value="${studentVO.grade}" disabled />
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
</body>
</html>