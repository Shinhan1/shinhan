<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileUpload"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>multiUploadOk.jsp</title>
</head>
<body>
	<%
		String saveDir = request.getRealPath("multiupload");
		
		//out.println("saveDir : " + saveDir);
		
		// commons 사용 - 호출
		DiskFileItemFactory factory = new DiskFileItemFactory();
		
		// 파일 업로드 핸들러
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		// 한글 인코딩
		upload.setHeaderEncoding("UTF-8");
		
		// 요청 확인
		boolean isMultiOk = FileUpload.isMultipartContent(request);
		
		// 파일 이름
		String fileName = "";
		
		if(isMultiOk) {
			List<FileItem> list = upload.parseRequest(request);
			
			Iterator<FileItem> iterator = list.iterator();
			
			while(iterator.hasNext()){
				FileItem item = iterator.next();
				//out.println(item.getName());
				
				File f = new File(item.getName());
				
				fileName = f.getName();
				
				File filePathAndName = new File(saveDir + "\\" + fileName);
				
				item.write(filePathAndName);
				out.println(filePathAndName.getName());				
			}
		}
		
		
		
		
	%>


</body>
</html>