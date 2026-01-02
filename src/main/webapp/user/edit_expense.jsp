<%@page import="com.entity.Expense"%>
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


<%
int id=Integer.parseInt(request.getParameter("id"));

ExpenseDao dao=new ExpenseDao(ConfigurationUtil.getSessionFactory());
Expense ex=dao.getExpenseById(id);

%>


<%@include file="../component/navbar.jsp" %>

<div class="container d-flex justify-content-center align-items-center" style="min-height:90vh;">
    <div class="card shadow-sm" style="width:380px; border-radius:8px;">
        
        <!-- Header -->
        <div class="card-header text-center"
             style="font-size:20px; font-weight:600; background:#ffffff;">
            Edit Expense
             
            
        </div>

        <!-- Body -->
        <div class="card-body" style="padding:20px;">

            <form action="../updateExpense" method="post">

                <!-- Title -->
                <div class="mb-3">
                    <label class="form-label">Title</label>
                    <input type="text" name="title" class="form-control"
                     value="<%=ex.getTitle() %>"
                           placeholder="Enter title"
                           style="height:42px;">
                </div>

                <!-- Date -->
                <div class="mb-3">
                    <label class="form-label">Date</label>
                    <input type="date" name="date" class="form-control"
                    value="<%=ex.getDate() %>"
                           style="height:42px;">
                </div>

                <!-- Time -->
                <div class="mb-3">
                    <label class="form-label">Time</label>
                    <input type="time" name="time" class="form-control"
                    value="<%=ex.getTime() %>"
                           style="height:42px;">
                </div>

                <!-- Description -->
                <div class="mb-3">
                    <label class="form-label">Description</label>
                    <textarea name="description" class="form-control" 
                       value="<%=ex.getDescription() %>"
                              placeholder="Enter description"
                              rows="2"></textarea>
                </div>

                <!-- Price -->
                <div class="mb-3">
                    <label class="form-label">Price</label>
                    <input type="number" class="form-control"
                    name="price"   value="<%=ex.getPrice() %>"
                           placeholder="Enter amount"
                           style="height:42px;">
                </div>
                       
                       <input type="hidden" name="id" value="<%=ex.getId() %>">
                       
                <!-- Button -->
                <div class="d-grid">
                    <button type="submit"
                            class="btn"
                            style="background:#198754; color:white; height:42px; font-weight:500;">
                        Update
                    </button>
                </div>

            </form>

        </div>
    </div>
</div>

</body>
</html>