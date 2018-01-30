<%@ page language="java" import="java.util.*,dxk.bean.UserInfo"
	pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="dxk.bean.UserInfo" scope="request" />
<%
	String backNews = user.getBackNews();
%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>" />
    <title>发布新帖</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="论坛,BBS,217论坛,刘明高" />
	<meta name="description" content="217论坛  我们交流的平台" />	
	<meta name="author" content="刘明高" />
	<meta name="copyright" content="2017山西师范大学数学与计算机科学学院" />
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" /> 
	<link rel="stylesheet" type="text/css" href="css/common.css" />
	<link type="text/css" rel="stylesheet" href="css/register.css" />
	<link type="text/css" rel="stylesheet" href="css/validator.css" />
	<link type="text/css" rel="stylesheet" href="css/basic.css" />
	<style type="text/css">
	.formItems{ margin:0px 0 0 50px!important; margin-left:25px; text-align:left;}
	.formItems tr td{ line-height:40px; vertical-align:middle;}
	.formItems tr td div{float:left; width:150px;}
	.formItems .submitBtn{ text-align:center;}
	.input{ width:185px;}	
	</style>
  
  </head>
  
  <body>
  <div id="main">
  <jsp:include page="head.jsp" />
  	<%
		if (backNews.trim() != "") {
	%>
	<div id="backNews">
	<%= backNews %>
	</div>
	<%
		}
	%>
  <h3 align="center">发表帖子</h3>
  <form name="form1" method="post" action="forum.do?flag=1">
    <table width="430" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#CCCCCC">
      <tr>
        <td width="66" height="30" align="right">标题：</td>
        <td width="351" bgcolor="#FFFFFF"><label>
          <input type="text" name="title" size="50"/>
        </label></td>
      </tr>
      <tr>
        <td height="30" align="right">内容：</td>
        <td bgcolor="#FFFFFF"><label>
          <textarea name="content" cols="30" rows="25"></textarea>
        </label></td>
      </tr>
      <tr>
        <td height="30"><label>&nbsp;</label></td>
        <td bgcolor="#FFFFFF"><label>
          <input type="submit" name="Submit" value="发贴"/>
          <input type="reset" name="Submit2" value="重置"/>
        </label></td>
      </tr>
    </table>
  </form>
	  	
	<div>
		<jsp:include page="foot.jsp" ></jsp:include>
	</div>

  </body>
</html>