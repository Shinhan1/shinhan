<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="vo.FileUploadTestVO"%>
<%@page import="dao.FileUploadTestDAO"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileDownload.jsp</title>
</head>
<body>
	<!-- 파일 다운로드 받기 -->
	<!-- 내가 직접 한것  -->
	<%
		String path = request.getRealPath("upload");
		String fileName = request.getParameter("fileName");


		InputStream in = null;
		OutputStream os = null;
		File f = null;
		boolean skip = false;
		String client = "";

		try {
			// 파일을 읽어 스트림에 담기
			try {
				f = new File(path, fileName);		
				in = new FileInputStream(f);
			} catch (FileNotFoundException fe) {
				skip = true;
			}

			client = request.getHeader("User-Agent");

			// 파일 다운로드 헤더 지정
			response.reset();
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Description", "JSP Generated Data");

			if (!skip) {

				// IE
				if (client.indexOf("MSIE") != -1) {
					response.setHeader("Content-Disposition",
							"attachment; fileName=" + new String(fileName.getBytes("KSC5601"), "ISO8859_1"));
				} else {
					
					// orgfilename = new String(orgfilename.getBytes("UTF-8"), "iso-8859-1");
					// IE 이외
					response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
					response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
				}

				response.setHeader("Content-Length", "" + f.length());

				out.clear();
				out = pageContext.pushBody();

				os = response.getOutputStream();
				byte b[] = new byte[(int) f.length()];
				int leng = 0;

				while ((leng = in.read(b)) > 0) {
					os.write(b, 0, leng);
				}

			} else {
				response.setContentType("text/html;charset=UTF-8");
				out.println("<script language='javascript'>alert('파일을 찾을 수 없습니다');history.back();</script>");

			}

			in.close();
			os.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>


</body>
</html>