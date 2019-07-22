<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>

<div class="container">
    <h4>CMS Select</h4>
    <div class="row">
        <div class="col-md-2">
            <a href="<c:url value='/students'/>" class="btn btn-success">Students</a>
        </div>

        <div class="col-md-2">
            <a href="<c:url value='/teachers'/>" class="btn btn-success">Teachers</a>
        </div>

        <div class="col-md-2">
            <a href="<c:url value='/staffs'/>" class="btn btn-success">Staff</a>
        </div>
    </div>
    <div class="clearfix" style="margin-bottom: 10px;">
    </div>
</div>

<jsp:include page="footer.jsp"/>