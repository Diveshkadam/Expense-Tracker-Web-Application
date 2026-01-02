<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
    <%@page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>


<%@include file="component/all_css.jsp" %>

<style>
    body {
        background: linear-gradient(135deg, #1d976c, #93f9b9);
        min-height: 100vh;
    }
    .register-card {
        border-radius: 15px;
        overflow: hidden;
    }
    .card-header {
        background: linear-gradient(135deg, #0f5132, #198754);
        color: white;
        text-align: center;
        font-size: 24px;
        font-weight: 600;
    }
    .btn-register {
        background: linear-gradient(135deg, #198754, #0f5132);
        border: none;
    }
    .btn-register:hover {
        opacity: 0.9;
    }
</style>
</head>

<body>

<%@include file="component/navbar.jsp" %>

<div class="container d-flex justify-content-center align-items-center mt-5">
    <div class="card register-card shadow-lg col-md-5">
        
        <div class="card-header py-3">
            Create Account
        </div>
        
        <c:if test="${not empty msg }">
      <p>${msg }</p>
      <c:remove var="msg" />
</c:if>

        <div class="card-body p-4">
            <form action="Register" method="post">

                <!-- Full Name -->
                <div class="mb-3">
                    <label class="form-label">Full Name</label>
                    <input type="text" class="form-control" name="fullName" placeholder="Enter full name" required>
                </div>

                <!-- Email -->
                <div class="mb-3">
                    <label class="form-label">Email address</label>
                    <input type="email" class="form-control" name="email" placeholder="Enter email" required>
                </div>

                <!-- Password -->
                <div class="mb-3">
                    <label class="form-label">Password</label>
                    <input type="password" class="form-control" name="password" placeholder="Enter password" required>
                </div>

                <!-- About -->
                <div class="mb-3">
                    <label class="form-label">About</label>
                    <textarea class="form-control" rows="1" name="about" ></textarea>
                </div>

                <!-- Button -->
                <div class="d-grid">
                    <button type="submit" class="btn btn-register text-white py-2">
                        Register
                    </button>
                </div>

            </form>
        </div>
    </div>
</div>

</body>
</html>
