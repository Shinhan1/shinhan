/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.31
 * Generated at: 2020-03-26 00:46:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.w20200325;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class jQueryEx16_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = null;
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>jQueryEx16</title>\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t$(function(){\r\n");
      out.write("// \t\t$('h2').click(function(){\r\n");
      out.write("// \t\t\t$(this).html(function(index,html){\r\n");
      out.write("// \t\t\t\treturn html + \"*\";\r\n");
      out.write("// \t\t\t});\r\n");
      out.write("// \t\t});\r\n");
      out.write("\t\t\t\r\n");
      out.write("// \t\t$('h2').click(function(){\r\n");
      out.write("// \t\t\t$(this).append(\"*\");\r\n");
      out.write("// \t\t});\t\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("// \t\t$('#box1').click(function(){\r\n");
      out.write("// \t\t\tvar w = $('#box1').width();\r\n");
      out.write("// \t\t\tvar h = $('#box1').height();\r\n");
      out.write("\t\t\t\r\n");
      out.write("// \t\t\tvar ww = w+100;\r\n");
      out.write("// \t\t\tvar hh = h+100;\r\n");
      out.write("\t\t\t\r\n");
      out.write("// \t\t\t$(this).animate({marginLeft : 200}, 500, function(){\r\n");
      out.write("// \t\t\t\t$(this).animate({width :ww }, 500, function(){\r\n");
      out.write("// \t\t\t\t\t$(this).animate({height :hh}, 500);\r\n");
      out.write("// \t\t\t\t});\r\n");
      out.write("// \t\t\t});\r\n");
      out.write("\t\t\t\r\n");
      out.write("// \t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t//강사님 코드\r\n");
      out.write("\t\t$('#box1').click(function(){\r\n");
      out.write("\t\t\t$(this).animate({marginLeft : '+=100px'}, 1000)\r\n");
      out.write("\t\t\t.animate({width : '+=100'}, 1000)\r\n");
      out.write("\t\t\t.animate({height : '+=100' }, 1000)\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});//#div1 end\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$('#box2').click(function(){\r\n");
      out.write("\t\t\t$(this).animate({marginleft : '+=100px'}, 1000)\r\n");
      out.write("\t\t\t.animate({width : '+=100'},1000)\r\n");
      out.write("\t\t\t.animate({heigth : '+=100'}, 1000);\r\n");
      out.write("\t\t\t//여기까지 수행하는데 3초가 걸립니다 그뒤에 함수를 실행시켜야 이어서 사용할수 있습니다\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t//3초후 다음함수 실행\r\n");
      out.write("\t\t\tsetTimeout(function(){\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t//애니메이션 큐 제거\r\n");
      out.write("\t\t\t\t$('#div2').clearQueue()\r\n");
      out.write("\t\t\t\t\t$('#div2').hide();\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t}, 3000);\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}); //div2 end\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$('h1').click(function(){\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(this).html(function(index, html){\r\n");
      out.write("\t\t\t\t\treturn html + '★'; \r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}); //h1 end\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tsetInterval(function(){\r\n");
      out.write("\t\t\t\t$('h1').append(\"★\");\r\n");
      out.write("\t\t\t\t}, 1000);\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\t#box1{\r\n");
      out.write("\t\twidth : 150px;\r\n");
      out.write("\t\theight : 150px;\r\n");
      out.write("\t\tpadding : 10px;\t\t\r\n");
      out.write("\t\tbackground : red;\r\n");
      out.write("\t}\r\n");
      out.write("\t#box2{\r\n");
      out.write("\t\twidth : 150px;\r\n");
      out.write("\t\theight : 150px;\r\n");
      out.write("\t\tpadding : 10px;\r\n");
      out.write("\t\tbackground : green;\r\n");
      out.write("\t\tmargin-top : 40px;\t\r\n");
      out.write("\t}\t\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div id=\"box1\">\r\n");
      out.write("\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"box2\">\r\n");
      out.write("\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<h1>STAR :<span></span></h1>\r\n");
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
