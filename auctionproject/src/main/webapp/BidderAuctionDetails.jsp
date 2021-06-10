<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

   <%@ page import="java.util.ArrayList,com.storage.ProductData" %>
   <% String id = request.getParameter("id"); %>

<fieldset>
  <legend>Bidder Auction Details</legend>
  <table class="table">
     <tr>
        <th>Product Id</th><th>Category</th><th>Initial Amount</th><th>Schedule Date</th>
     </tr>
     <%
        ArrayList<ArrayList<String>> a = ProductData.getAllRecords(Integer.parseInt(id));
        for(ArrayList<String> b: a)
        {
        	out.println("<tr>");
        	out.println("<td>"+b.get(0)+"</td>");
        	out.println("<td>"+b.get(2)+"</td>");
        	out.println("<td>"+b.get(4)+"</td>");
        	out.println("<td>"+b.get(5)+"</td>");
        	out.println("<td><button class='btn btn-success btn-xs' data-toggle='modal' data-target='#"+b.get(0)+"'>Show More</button></td>");
        	out.println("</tr>");
        }
     %>
  </table>
</fieldset>
<%
  for (ArrayList<String> b: a)
  {%>
	  <div id="<%= b.get(0) %>" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Product Details</h4>
      </div>
			<div class="modal-body">
				<form action="" method="post">
					<div class="form-group">
						<label>Product Id</label> 
						<input type="text" value="<%=b.get(0) %>" class="form-control"/>
					</div>
					<div class="form-group">
						<label>Product Image</label> 
						<img src="<%=b.get(1) %>"  width="100%" height="10%"/>
					</div>
					<div class="form-group">
						<label>Category</label> 
						<input type="text" value="<%=b.get(2) %>" class="form-control"/>
					</div>
					<div class="form-group">
						<label>Description</label> 
						<input type="text" value="<%=b.get(3) %>" class="form-control"/>
					</div>
					<div class="form-group">
						<label>Initial Amount</label> 
						<input type="text" value="<%=b.get(4) %>" class="form-control"/>
					</div>
					<div class="form-group">
						<label>Auction Date</label> 
						<input type="text" value="<%=b.get(5) %>" class="form-control"/>
					</div>
					<input type="submit" value="Edit" class="btn btn-success btn-block"/>
				</form>
			</div>

		</div>

  </div>
</div>
<%}
%>