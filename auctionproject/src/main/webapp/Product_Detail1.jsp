<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%@ page import="com.storage.ProductData" %>
    <%@ include file="BootstrapCDN.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:useBean id="obj" class="com.bean.ProductBean"/>
<jsp:setProperty property="*" name="obj"/>
<%
    ProductData.setProductDetail1(obj);
%>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
          <fieldset>
            <legend>Upload Product Image</legend>
          
              <form action="UploadServlet" method="post" enctype="multipart/form-data">
                  <input type="file" name="photo" class="form-control"/>
                  <input type="submit" value="Upload Image" class="btn btn-block btn-warning"/>
              </form>
            </fieldset>
        </div>
        <div class="col-md-3">
        </div>
    </div>
</div>
</body>
</html>