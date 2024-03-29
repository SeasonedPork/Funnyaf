<%@page contentType = "text/html; charset = utf-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
    <head>
        <%-- the header --%>
        <%@ include file="/WEB-INF/jsp/header.jsp" %>

        <title><s:text name="manOrderTitle" /></title>
    </head>
    <body>
        <%-- the navbar --%>
        <%@ include file="/WEB-INF/jsp/navbar.jsp" %>

        <div id="ib_man_order_content_div">
            <%@ include file="/WEB-INF/jsp/manager/man_order_content.jsp" %>
        </div>

        <%-- the javascript --%>
        <script type="text/javascript">
            function fnChangeFinish(data, code, request) {
                if (code == "success") {
                    $("#ib_man_order_content_div").html(data);
                }
            }

            function onBtnChangeClick(data) {
                var ajaxUrl = "manOrderChange";
 
                jQuery.ajax({
                    type: "POST",
                    url: ajaxUrl,
                    data: data,
                    dataType: "html",
                    contentType: "application/x-www-form-urlencoded; charset=utf-8",
                    success: fnChangeFinish
                });
            }
        </script>

    </body>
</html>