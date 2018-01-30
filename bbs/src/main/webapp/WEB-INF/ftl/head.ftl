<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div id="top">
    <img src="/${root}/static/images/common/logo.gif" alt="217论坛" title="217论坛" />
    <img src="/${root}/static/images/common/job.gif" id="topRight" alt="广告" />
</div>
<div id="menu">
    <%
    if (username == null) {
    %>
    <a href="pages/shouye.jsp">首页</a>
    <a href="pages/register.jsp">注册</a>
    <a href="pages/login.jsp">登陆</a>
    <%
    } else {
    if (userType == 1) {
    out.print("管理员：");
    } else if(userType==2){
    out.print("超级管理员：");
    } else
    out.print("您好！");
    %>
    <%=username%>
    <a href="pages/shouye.jsp">首页</a>
    <a href="pages/modifyInfo.jsp">修改个人资料</a>
    <a href="pages/createTopic.jsp">创建新帖</a>
    <%
    if(userType ==1 ||userType ==2)
    out.print("<a href='userList'>会员列表</a>");
    out.print("<a href='logout'>安全退出</a>");
    }
    %>
</div>
<noscript>
    <p class="message">提示：您的浏览器已经禁用了javascript脚本，这会影响您正常使用本站的功能。</p>
</noscript>
<script type="text/javascript">
    <!--
    function login(){
        var dxk = document.getElementById("login");
        if (dxk.style.display == "") {
            dxk.style.display = "block";
            var Tusername = document.getElementById("Tusername");
            Tusername.focus();
        }
        else
        if (dxk.style.display = "block") {
            dxk.style.display = "";
        }
    }
    //-->
</script>

</body>
</html>