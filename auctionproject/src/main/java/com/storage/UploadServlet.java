package com.storage;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;




/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String UPLOAD_DIRECTORY="C:/Users/Admin/eclipse-workspace2/auctionproject/src/main/webapp/product_img";

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	if(ServletFileUpload.isMultipartContent(request))
	{	try
	    {
		     List<FileItem> al= new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
		     for(FileItem item: al)
		     {
		    	 if(!item.isFormField())
		    	 {
		    		// String name = new File(item.getName()).getName();
		    		 
		    		 int id = ProductData.getImageId();
		    		 item.write(new File(UPLOAD_DIRECTORY+File.separator+id+".jpg"));
		    		 
		    		 ProductData.setImage(UPLOAD_DIRECTORY+File.separator+id+".jpg",id);
		    	 }
		     }
		     
	    }
	    catch(Exception e)
	    {
	    	request.setAttribute("message", "File Uploaded Failed due to "+e); 	
	    }
		
	}
	else
	{
		
	}
    response.sendRedirect("index.jsp");
  }
}