<%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
    <%@page isELIgnored="false" %>


<nav class="navbar navbar-expand-lg custom-navbar">
    <div class="container-fluid">

        <!-- Brand -->
        <a class="navbar-brand fw-bold" href="#">
            <i class="fa-solid fa-wallet me-1"></i> Expense Tracker
        </a>

        <!-- Toggle -->
        <button class="navbar-toggler text-white" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar Content -->
        <div class="collapse navbar-collapse" id="navbarNav">

            <!-- Left Menu -->
            <ul class="navbar-nav me-auto">
                
                <c:if test="${ empty loginUser}">
                
                   <li class="nav-item">
                    <a class="nav-link" href="index.jsp">
                         Home
                    </a>
                </li>
              
                 </c:if>
                
                
                <c:if test="${not empty loginUser}">
                
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">
                         Home
                    </a>
                </li>
                
                   <li class="nav-item">
                    <a class="nav-link" href="add_expense.jsp">
                        <i class="fa-solid fa-plus"></i> Add Expense
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="view_expense.jsp">
                        <i class="fa-solid fa-list"></i> View Expense
                    </a>
                </li>
                 </c:if>
                
            </ul>

            <!-- Right Menu -->
            <ul class="navbar-nav">
            
            <c:if test="${not empty loginUser}">
            
              <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fa-solid fa-circle-user"></i> ${loginUser.fullName }
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../logout">
                        <i class="fa-solid fa-right-to-bracket me-1"></i> Logout
                    </a>
                </li>
            
            </c:if>
            
            <c:if test="${ empty loginUser}">
            
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">
                        <i class="fa-solid fa-right-to-bracket me-1"></i> Login
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="register.jsp">
                        <i class="fa-solid fa-user-plus me-1"></i> Register
                    </a>
                </li>
                </c:if>
            </ul>

        </div>
    </div>
</nav>