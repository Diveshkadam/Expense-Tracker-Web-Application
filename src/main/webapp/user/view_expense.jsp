<%@page import="com.entity.Expense"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.db.ConfigurationUtil"%>
<%@page import="com.dao.ExpenseDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
    <%@page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/all_css.jsp" %>
</head>
<body style="background:#f4f6f9;">

<c:if test="${ empty loginUser }">
<c:redirect url="../login.jsp"></c:redirect>
</c:if>

<%@include file="../component/navbar.jsp" %>

<div class="container mt-5">

    <!-- Card -->
    <div class="card shadow-sm" style="border-radius:6px;">

        <!-- Header -->
        <div class="card-header text-center"
             style="font-size:20px; font-weight:600; background:white;">
            All Expenses
            
                 <c:if test="${not empty msg }">
      <p>${msg }</p>
      <c:remove var="msg" />
</c:if>
            
        </div>

        <!-- Table -->
        <div class="card-body p-0">
            <table class="table table-striped table-hover mb-0 text-center">
                
                <thead style="background:#f8f9fa;">
                    <tr>
                        <th style="padding:12px;">Title</th>
                        <th>Description</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>
                
                <%
                
                User user=(User)session.getAttribute("loginUser"); 
                
                ExpenseDao dao=new ExpenseDao(ConfigurationUtil.getSessionFactory());
                List<Expense> list = dao.getAllExpenseByUser(user);
                
                for(Expense ex:list){
                	%>
                	
                	<tr>
                	         
                        <td> <%= ex.getTitle() %> </td>
                        <td><%= ex.getDescription() %></td>
                        <td><%= ex.getDate() %></td>
                        <td><%= ex.getTime() %></td>
                        <td><%= ex.getPrice() %></td>
                        <td>
                            <a href="edit_expense.jsp?id=<%=ex.getId() %>" class="btn btn-sm btn-primary me-1">Edit</a>
                            <a href="../deleteExpense?id=<%=ex.getId()%>" class="btn btn-sm btn-danger me-1" >Delete</a>
                        </td>
                    </tr>
                	
                	<% 
                }
                
                %>
                
                    
                </tbody>

            </table>
        </div>
    </div>

</div>

</body>
</html>