/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.31
 * Generated at: 2020-03-17 07:21:47 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.w20200310;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>register.jsp</title>\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t$(document).ready(function(){\r\n");
      out.write("\t\t$(\"#reg\").on('click', function(){\r\n");
      out.write("\t\t\t// console.log(\"click\");\r\n");
      out.write("\t\t\t// var id = document.getElementById(\"id\");\r\n");
      out.write("\t\t\t/*\r\n");
      out.write("\t\t\tvar id = document.frm.id.value;\r\n");
      out.write("\t\t\t// console.log(\"id\");\r\n");
      out.write("\t\t\tvar pw = document.frm.pw.value;\r\n");
      out.write("\t\t\tvar name = document.frm.name.value;\r\n");
      out.write("\t\t\tvar birth = document.frm.birth.value;\r\n");
      out.write("\t\t\tvar mp1 = document.frm.mp1.value;\r\n");
      out.write("\t\t\tvar mp2 = document.frm.mp2.value;\r\n");
      out.write("\t\t\tvar email = document.frm.email.value;\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tconsole.log(id + \", \" + pw + \", \" + recheck + \", \" + name + \", \" + birth + \", \" + mp1 + \", \" + mp2 + \", \" + email);\r\n");
      out.write("\t\t\t*/\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t/*\r\n");
      out.write("\t\t\tvar id = $(\"#id\");\r\n");
      out.write("\t\t\tconsole.log(id);\r\n");
      out.write("\t\t\t*/\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t// 포커스\r\n");
      out.write("\t\t\tif($(\"#id\").val()==\"\"){\r\n");
      out.write("\t\t\t\talert(\"아이디를 입력하세요\");\r\n");
      out.write("\t\t\t\t//$(\"#id\").focus();\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}else if($(\"#pw\").val()==\"\") {\r\n");
      out.write("\t\t\t\talert(\"비밀번호를 입력하세요\");\r\n");
      out.write("\t\t\t\t$(\"#pw\").focus();\r\n");
      out.write("\t\t\t\treturn\r\n");
      out.write("\t\t\t}else if($(\"#recheck\").val()==\"\") {\r\n");
      out.write("\t\t\t\talert(\"비밀번호 확인을 입력하세요\");\r\n");
      out.write("\t\t\t\t$(\"#recheck\").focus();\r\n");
      out.write("\t\t\t\treturn\r\n");
      out.write("\t\t\t}else if($(\"#name\").val()==\"\") {\r\n");
      out.write("\t\t\t\talert(\"이름을 입력하세요\");\r\n");
      out.write("\t\t\t\t$(\"#name\").focus();\r\n");
      out.write("\t\t\t\treturn\r\n");
      out.write("\t\t\t}else if($(\"#mp1\").val()==\"\") {\r\n");
      out.write("\t\t\t\talert(\"가운데 번호를 입력하세요\");\r\n");
      out.write("\t\t\t\t$(\"#mp1\").focus();\r\n");
      out.write("\t\t\t\treturn\r\n");
      out.write("\t\t\t}else if($(\"#mp2\").val()==\"\") {\r\n");
      out.write("\t\t\t\talert(\"마지막 번호를 입력하세요\");\r\n");
      out.write("\t\t\t\t$(\"#mp2\").focus();\r\n");
      out.write("\t\t\t\treturn\r\n");
      out.write("\t\t\t}else if($(\"#email\").val()==\"\") {\r\n");
      out.write("\t\t\t\talert(\"이메일을 입력하세요\");\r\n");
      out.write("\t\t\t\t$(\"#email\").focus();\r\n");
      out.write("\t\t\t\treturn\r\n");
      out.write("\t\t\t}else if($(\"#pw\").val()!=$(\"#recheck\").val()) {\r\n");
      out.write("\t\t\t\talert(\"비밀번호가 서로 다릅니다.\");\r\n");
      out.write("\t\t\t\t$(\"#pw\").focus();\r\n");
      out.write("\t\t\t\treturn\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tdocument.frm.action = \"registerOk.jsp\";\r\n");
      out.write("\t\t\tdocument.frm.method = \"get\";\r\n");
      out.write("\t\t\tdocument.frm.submit();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t$(\"#del\").on('click', function(){\r\n");
      out.write("\t\t\tdocument.frm.action = \"Update_Delete.jsp\";\r\n");
      out.write("\t\t\tdocument.frm.submit();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\t#regDiv{\r\n");
      out.write("\twidth:500px;\r\n");
      out.write("\tmargin : 0 auto;\r\n");
      out.write("\t\r\n");
      out.write("\t}\r\n");
      out.write("\ttable, tr, th, td {\r\n");
      out.write("\tborder : 1px solid black;\r\n");
      out.write("\tborder-collapse: collapse;\r\n");
      out.write("\t\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#bt {\r\n");
      out.write("\tbackground-color : yellow;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#mp0 {\r\n");
      out.write("\tbackground-color: #aaa;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div id=\"regDiv\">\r\n");
      out.write("\t\t<form action=\"#\" name = \"frm\" >\r\n");
      out.write("\t\t\t<table>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>ID</th>\r\n");
      out.write("\t\t\t\t\t<td><input type=\"text\" name=\"id\" id=\"id\" /></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>PW</th>\r\n");
      out.write("\t\t\t\t\t<td><input type=\"text\" name=\"pw\" id=\"pw\" /></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>PwCheck</th>\r\n");
      out.write("\t\t\t\t\t<td><input type=\"text\" name=\"recheck\" id=\"recheck\" /></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>NAME</th>\r\n");
      out.write("\t\t\t\t\t<td><input type=\"text\" name=\"name\" id=\"name\" /></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>BIRTH</th>\r\n");
      out.write("\t\t\t\t\t<td><input type=\"text\" name=\"birth\" id=\"birth\" placeholder = \"생년월일 6자리 입력\"/></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>MP</th>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"mp0\" id=\"mp0\" value = \"010\" size = \"2\" />\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"mp1\" id=\"mp1\" size=\"3\" />\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"mp2\" id=\"mp2\" size=\"3\"/>\t\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>EMAIL</th>\r\n");
      out.write("\t\t\t\t\t<td><input type=\"text\" name=\"email\" id=\"email\" /></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr id=\"bt\">\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"button\" value=\"가입\" id=\"reg\"  />\r\n");
      out.write("\t\t\t\t\t\t<input type=\"reset\" value=\"reset\" id=\"reset\" />\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
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
