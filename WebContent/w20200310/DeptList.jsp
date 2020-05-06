
<%@page import="goott_vo.DeptVO"%>
<%@page import="goott_dao.DeptDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dept List</title>
<style type="text/css">
   table{
      width : 600px;
      margin: 0 auto;/* 가운데 */
      
   }
   table, tr, th, td{
      bodrer:1px solid black;
      border-collspse: collapse;
      text-align;
   }
   th{
      background-color:#aaa;
      
   }
   </style>

</head>
<body>
<table>
   <tr>
      <th>부서번호</th>
      <th>부서이름</th>
      <th>부서위치</th>
   </tr>
   <%
   DeptDAO dao = new DeptDAO();
   
   ArrayList<DeptVO> list = dao.selectAll();
   
   for(DeptVO vo : list){
   
//    DeptDAO dao = new DeptDAO();
   
//    ArrayList<DeptVO> list = dao.selectAll();
   
//    for(DeptVO vo : list){
      
   
   %>
   
   <tr>  <!--정보 노출  -->
      <td><%=vo.getDeptno() %></td>
      <td><%=vo.getDname() %></td>
      <td><%=vo.getLoc() %></td>
   </tr>
   <%
   }
    
   %>
   
</table>
</body>
</html>