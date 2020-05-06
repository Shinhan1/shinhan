/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.31
 * Generated at: 2020-03-12 04:22:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.w20200312;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import vo.ProductVO;
import dao.ProductDAO;

public final class productDetail_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("dao.ProductDAO");
    _jspx_imports_classes.add("vo.ProductVO");
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
      out.write("    \r\n");
      out.write("    \r\n");

	/* jsp page 우선순위 : jsp먼저 읽고 다음 자바스크립트를 읽음  */
	String no = request.getParameter("pno");
	ProductDAO dao = new ProductDAO();
	ProductVO vo = new ProductVO();
	
	if(no != null){
		int pno = Integer.parseInt(no);
		
		vo = dao.getData(pno);
	}



      out.write("   \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>productDetail.jsp</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("#container{margin: 10px; background-color: pink;}\r\n");
      out.write("#pImg{\r\n");
      out.write("\twidth: 500px;\r\n");
      out.write("\theight: 500px;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("#pic {\r\n");
      out.write("\tfloat: left;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#desc {\r\n");
      out.write("\tmargin: 30px;\r\n");
      out.write("\tfloat:left;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#dc {\r\n");
      out.write("\tcolor: red;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#price {\r\n");
      out.write("\ttext-decoration: line-through;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#imgBtns {\r\n");
      out.write("\tborder-top : 1px solid gray;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#name {\r\n");
      out.write("\tborder-top: 3px solid black;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t$(document).ready(function() {\r\n");
      out.write("\t\t$(\"#cart\").on('click', function(){\r\n");
      out.write("\t\t\t//console.log(\"cart click\");\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar pno = ");
      out.print( vo.getPno() );
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t//console.log(\"pno : \" + pno);\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$(\"#no\").val();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tdocument.frm.action = \"cart.jsp\";\r\n");
      out.write("\t\t\tdocument.frm.submit();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<form action=\"#\" name = \"frm\">\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"no\" id=\"no\" value=\"");
      out.print( vo.getPno() );
      out.write("\"/>\r\n");
      out.write("\t</form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"container\">\r\n");
      out.write("\t\t<div id=\"pic\"><img src=\"");
      out.print( vo.getBigFile() );
      out.write("\" alt=\"");
      out.print( vo.getPname() );
      out.write("\" /></div>\r\n");
      out.write("\t\t<div id=\"desc\">\r\n");
      out.write("\t\t\t<p>\r\n");
      out.write("\t\t\t\t<h3>");
      out.print( vo.getProdesc() );
      out.write("</h3>\r\n");
      out.write("\t\t\t</p>\r\n");
      out.write("\t\t\t<p id=\"name\">상품명 : ");
      out.print( vo.getPname() );
      out.write("</p>\r\n");
      out.write("\t\t\t<p>상품가 : ");
      out.print( vo.getPrice() );
      out.write("원</p>\r\n");
      out.write("\t\t\t<p id=\"dc\">할인가 : ");
      out.print( vo.getPrice()-vo.getPrice()*vo.getDcratio()/100 );
      out.write("원</p>\r\n");
      out.write("\t\t\t<div id=\"imgBtns\">\r\n");
      out.write("\t\t\t\t<img src=\"../images/btn_buy.jpg\" alt=\"즉시 구매\" />\r\n");
      out.write("\t\t\t\t");
      out.write("\r\n");
      out.write("\t\t\t\t<img src=\"../images/btn_cart.jpg\" alt=\"장바구니\" id=\"cart\"/>\r\n");
      out.write("\t\t\t\t<!-- </a> -->\r\n");
      out.write("\t\t\t\t<img src=\"../images/btn_wish.jpg\" alt=\"위시리스트\" />\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
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
