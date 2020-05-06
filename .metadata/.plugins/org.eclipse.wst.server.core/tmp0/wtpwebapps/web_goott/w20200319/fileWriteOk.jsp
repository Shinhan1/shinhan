<%@page import="vo.FileUploadTestVO"%>
<%@page import="dao.FileUploadTestDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileWriteOk.jsp</title>
</head>
<body>

	<%
		// upload directory
		String saveDir = request.getRealPath("upload");
	
		out.println(saveDir + "</br>");
	 	// C:\Users\goott7-15\jweb_workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\web_goott\업로드(upload) 유니코스 업로드이기 떄문에 /u 주석 못씀
	 	
		// 첨부파일 최대 크기 : 1kb - 1024
		int maxFileSize = 1024*1024*10;		// (1kb * 1024 = 1Mb) * 10 = 10Mb
		
		// cos 사용 - 클래스 호출
		// new MultipartRequest(요청 객체, 저장디렉토리, 최대파일크기, 인코딩타입, 동명파일처리규정 객체)
		MultipartRequest mr = 
			new MultipartRequest(request, saveDir, maxFileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		// 요청 객체가 들어있는 Multipart 객체로 브라우저에게 요청해서 확인
		String title = mr.getParameter("title");
		String writer = mr.getParameter("writer");
		String contents = mr.getParameter("contents");
		// String fileName = mr.getParameter("fileName");
		// 실제 이름을 밝혀주지 않음
		
		String fileName = mr.getOriginalFileName("fileName");
		
		out.println(title + "</br>");
		out.println(writer + "</br>");
		out.println(contents + "</br>");
		out.println(fileName + "</br>");
		
		// DB에 접근해서 저장
		FileUploadTestDAO dao = new FileUploadTestDAO();
		FileUploadTestVO vo = new FileUploadTestVO();
		vo.setTitle(title);
		vo.setWriter(writer);
		vo.setContents(contents);
		vo.setFilePath("../upload/" + fileName);		// 사용자가 보는것은 WebContent의 upload부분
														// 실제 저장되는 곳은 saveDir
		dao.insertData(vo);
	
	%>
	
	<h2>제목 : <%= title %></h2>
	<h2>작성자 : <%= writer %></h2>
	<h2>내용 : <%= contents %></h2>
	
	<h2></h2><a href="dirView.jsp">파일정보 - admin</a></h2>
	<h2></h2><a href="fileView.jsp?writer=<%=writer%>">파일정보 - client</a></h2>
	<h2></h2><a href="fileDownload1.jsp?fileName=<%=fileName%>">파일 다운로드</a></h2>
	


</body>
</html>