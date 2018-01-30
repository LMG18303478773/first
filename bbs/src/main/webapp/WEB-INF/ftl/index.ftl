<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>217论坛 -- 首页</title>
    <link rel="shortcut icon" href="/${root}/static/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="/${root}/static/css/common.css" />
</head>

<body>
<div id="main">
    <#include "head.ftl">
    <table id="topicList" frame="void">
        <tr bgcolor="#E6E6E6">
            <th width="750px" align="left" class="topicTitleList">
                标题
            </th>
            <th width="90px" align="center">
                发帖日期
            </th>
            <th width="30px" align="center">
                点击
            </th>
            <%
            if (userType != 0) {
            %>
            <th width="40px" align="center">
                删除
            </th>
            <th width="40px" align="center">
                关闭
            </th>
            <%
            }
            %>
        </tr>
        <%
        Collection<Topic> dxk = topicList.getTopics();
        Iterator<Topic> it = dxk.iterator();
            int i = 1;
            String bg;
            while (it.hasNext()) {
            if (i % 2 == 0) {
            bg = "#FFFFFF";
            } else {
            bg = "#d7eafb";
            }
            Topic topic = (Topic) it.next();
            String topicTitle = topic.getTopicTitle();
            String topicContent = topic.getTopicContent();
            int view = topic.getView();
            int locked = topic.getLocked();
            int topicId = topic.getTopicId();
            String topicTime = topic.getTopicTime();
            int replyCount = topic.getReplyCount();
            %>
            <tr bgcolor="<%=bg%>">
                <td align="left" class="topicTitleList">
                    <a href="viewContent?topicId=<%=topicId%>"><%=topicTitle%></a>
                </td>
                <td align="center"><%=topicTime%></td>
                <td align="center"><%=view%></td>
                <%
                if (userType != 0) {
                %>
                <td>
                    <a href="deleteTopic?topicId=<%=topicId%>">删除</a>
                </td>
                <td>
                    <a href="closeTopic?topicId=<%=topicId%>&locked=<%=locked%>">
                        <%
                        if (locked == 1) {
                        out.print("关闭");
                        } else {
                        out.print("开启");
                        }
                        %> </a>
                </td>
                <%
                }
                i++;
                %>
            </tr>
            <%
            }
            %>
    </table>
    <#include "foot.ftl">
</div>
</body>
</html>