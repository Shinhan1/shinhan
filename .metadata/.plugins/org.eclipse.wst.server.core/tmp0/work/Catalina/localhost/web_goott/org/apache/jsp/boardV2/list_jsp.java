/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.31
 * Generated at: 2020-03-16 07:30:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.boardV2;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.BoardV2_DAO;
import vo.BoardVO;
import dao.BoardDAO;
import java.util.ArrayList;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("dao.BoardV2_DAO");
    _jspx_imports_classes.add("dao.BoardDAO");
    _jspx_imports_classes.add("vo.BoardVO");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	/* 페이징 처리 */
	
	// 현재 페이지(currentPage) 얻어오기
	String cp = request.getParameter("cp");

	int currentPage = 0;
	
	if(cp != null) {
		currentPage = Integer.parseInt(cp);
	}else {
		currentPage = 1;
	}
	
	BoardV2_DAO dao = new BoardV2_DAO();
	
	// 총 게시글 수
	int totalCount = dao.getTotalCount();
	
	// 한 페이지당 레코드 수 : 10
	int recordByPage = 10;
	
	// 총 페이지 수
	int totalPage = (totalCount/recordByPage == 0) ? totalCount/recordByPage : totalCount/recordByPage+1;	// 삼항연산자

	/*
	현재 페이지 번호
	  1    2    3    4   ......
	
	각 페이지 별 레코드 번호
	  1   11   21   31   ......
	  
	 10   20   30   40 
	

	*/
	
	// 현재 페이지 - 레코드 시작번호
	int startNo = (currentPage-1)*recordByPage+1; 
	
	// 현재 페이지 - 레코드 끝번호
	int endNo = currentPage*recordByPage;
	/*
	out.println("총 게시물 수 : " + totalCount);
	out.println("한 페이지당 게시물 수 : " + recordByPage);
	out.println("총 페이지 수 : " + totalPage);
	out.println("현재 페이지 번호 : " + currentPage);
	out.println("현재 페이지 시작 번호 : " + startNo);
	out.println("현재 페이지 끝 번호 : " + endNo);
	*/
	

      out.write("  \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("table {\r\n");
      out.write("   width: 1000px;\r\n");
      out.write("   margin: 0 auto;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("table, tr, th, td {\r\n");
      out.write("   border: 1px solid black;\r\n");
      out.write("   border-collapse: collapse;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("th {\r\n");
      out.write("   padding: 2px;\r\n");
      out.write("   font-size: 20px;\r\n");
      out.write("   background-color: skyblue;\r\n");
      out.write("   text-shadow: 2px, 2px, 2px, #ffffff;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".btn {\r\n");
      out.write("   text-align: right;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".col1 {\r\n");
      out.write("   width: 15%;\r\n");
      out.write("   text-align: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".col4 {\r\n");
      out.write("   width: 15%;\r\n");
      out.write("   text-align: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".col2 {\r\n");
      out.write("   width: 50%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".col3 {\r\n");
      out.write("   width: 20%;\r\n");
      out.write("   text-align: center;\r\n");
      out.write("}\r\n");
      out.write("#page {\r\n");
      out.write("\twidth:10px;\r\n");
      out.write("\tpadding:2px;\r\n");
      out.write("\tmargin : 0;\r\n");
      out.write("\tborder : 1px solid black;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#pageList {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".red {\r\n");
      out.write("\tcolor:red;\r\n");
      out.write("\tfont-size : 20px;\r\n");
      out.write("\theight: 100px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t$(document).ready(function(){\r\n");
      out.write("\t\t// tr - 첫번째 tr이 0번째임\r\n");
      out.write("\t\t// :nth-child(1) - 첫 번째가 1번째\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(\"tr:first\").css(\"background-color\", \"pink\");\r\n");
      out.write("\t\t$(\"tr:last\").css(\"background-color\", \"pink\");\r\n");
      out.write("\t\t$(\"tr:odd\").css(\"background-color\", \"yellow\");\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t// 마우스가 over 되면 red 클래스 삽입\r\n");
      out.write("\t\t$(\"th\").on('mouseover', function(){\r\n");
      out.write("\t\t\t//$(this).addClass(\"red\");\r\n");
      out.write("\t\t\t$(this).toggleClass(\"red\");\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t$(\"th\").on('mouseout', function(){\r\n");
      out.write("\t\t\t$(this).removeClass(\"red\");\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t});\r\n");
      out.write("</script>\r\n");
      out.write("<title>list.jsp</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("   <!--    table>tr>th[class='col$']*4 -->\r\n");
      out.write("   <table>\r\n");
      out.write("      <tr>\r\n");
      out.write("         <th class=\"col1\">게시물번호</th>\r\n");
      out.write("         <th class=\"col2\">제목</th>\r\n");
      out.write("         <th class=\"col3\">작성자</th>\r\n");
      out.write("         <th class=\"col4\">조회수</th>\r\n");
      out.write("      </tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("      <!--  사용자가 작성한 게시글을 전부 출력해보세요 -->\r\n");
      out.write("      ");

         //          String writer = request.getParameter("wr");
         //           String title = request.getParameter("ti");   //이건 그냥 데이터를 이동시킬떄 하는것. writer -> writerOk로 보낼떄
         //           String contents = request.getParameter("ct");    // 전송하고 받을떄 writerOk에서 사용합니다.

         ArrayList<BoardVO> list = dao.getAllData(startNo, endNo);

         for (BoardVO vo : list) {
      
      out.write("\r\n");
      out.write("      <tr>\r\n");
      out.write("         <td class=\"col1\">");
      out.print(vo.getBno());
      out.write("</td>\r\n");
      out.write("         <td class=\"col2\"><a href=\"detail.jsp?bno=");
      out.print(vo.getBno());
      out.write('"');
      out.write('>');
      out.print(vo.getTitle() );
      out.write("</a></td>\r\n");
      out.write("         <td class=\"col3\">");
      out.print(vo.getWriter());
      out.write("</td>\r\n");
      out.write("         <td class=\"col4\">");
      out.print(vo.getHits());
      out.write("</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("\r\n");
      out.write("      ");

         }
      
      out.write("\r\n");
      out.write("      <tr>\r\n");
      out.write("      \t<td colspan = \"4\" id = \"pageList\">\r\n");
      out.write("      \t\t");
 
      			for(int i = currentPage-3; i <= currentPage+3; i++) {
      				if(i <= 0) {
      					continue;
      				}else if (i > totalPage) {
      					break;
      				}else {
      			
      		
      out.write("\r\n");
      out.write("      \t\t<a href=\"list.jsp?cp=");
      out.print( i );
      out.write("\"><span id=\"page\">[");
      out.print( i );
      out.write("]</span></a>\r\n");
      out.write("      \t\t\r\n");
      out.write("      \t\t");

      				}	// if() end
      		
      			}	// for() end
      		
      out.write("\r\n");
      out.write("      \t\t\r\n");
      out.write("      \t</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      <tr>\r\n");
      out.write("         <td colspan=\"4\" class=\"btn\"><a href=\"write.jsp\">\r\n");
      out.write("         <input type=\"button\" value=\"등록\" /></a>\r\n");
      out.write("         </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   </table>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
