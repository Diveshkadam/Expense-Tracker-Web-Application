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

<div class="container d-flex justify-content-center align-items-center" style="min-height:90vh;">
    <div class="card shadow-sm" style="width:380px; border-radius:8px;">
        
        <!-- Header -->
        <div class="card-header text-center"
             style="font-size:20px; font-weight:600; background:#ffffff;">
            Add Expense
               <c:if test="${not empty msg }">
      <p>${msg }</p>
      <c:remove var="msg" />
</c:if>
            
        </div>

        <!-- Body -->
        <div class="card-body" style="padding:20px;">

            <form action="../saveExpense" method="post">

                <!-- Title -->
                <div class="mb-3">
                    <label class="form-label">Title</label>
                    <input type="text" name="title" class="form-control"
                           placeholder="Enter title"
                           style="height:42px;">
                </div>

                <!-- Date -->
                <div class="mb-3">
                    <label class="form-label">Date</label>
                    <input type="date" name="date" class="form-control"
                           style="height:42px;">
                </div>

                <!-- Time -->
                <div class="mb-3">
                    <label class="form-label">Time</label>
                    <input type="time" name="time" class="form-control"
                           style="height:42px;">
                </div>

                <!-- Description -->
                <div class="mb-3">
                    <label class="form-label">Description</label>
                    <textarea name="description" class="form-control" 
                              placeholder="Enter description"
                              rows="2"></textarea>
                </div>

                <!-- Price -->
                <div class="mb-3">
                    <label class="form-label">Price</label>
                    <input type="number" class="form-control"
                    name="price"
                           placeholder="Enter amount"
                           style="height:42px;">
                </div>

                <!-- Button -->
                <div class="d-grid">
                    <button type="submit"
                            class="btn"
                            style="background:#198754; color:white; height:42px; font-weight:500;">
                        Add
                    </button>
                </div>

            </form>

        </div>
    </div>
</div>

</body>
</html>