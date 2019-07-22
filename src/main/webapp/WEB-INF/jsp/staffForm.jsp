<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<jsp:include page="header.jsp"/>

<div class="container">

    <div style="margin-top:15px;">
        <a class="btn btn-default text-success" href="<c:url value='/staffs'/>">
            <i class="glyphicon glyphicon-home"></i>
        </a>
    </div>


    <h2>${formType} Staff Record</h2>

    <form:form action="/staffs" modelAttribute="staff" method="post" class="form-horizontal">

        <c:choose>
            <c:when test="${id > 0}">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="id">ID:</label>
                    <div class="col-sm-6">
                        <form:input type="text" readonly="true" class="form-control" id="id" path="id"></form:input>
                    </div>
                </div>
            </c:when>
        </c:choose>

        <div class="form-group">
            <label class="control-label col-sm-2" for="firstName">First Name:</label>
            <div class="col-sm-6">
                <form:input type="text" class="form-control" id="firstName" path="firstName"></form:input>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="lastName">Last Name:</label>
            <div class="col-sm-6">
                <form:input type="text" class="form-control" id="lastName" path="lastName"></form:input>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="department">Department:</label>
            <div class="col-sm-6">
                <form:input type="text" class="form-control" id="department" path="department"></form:input>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-6">
                <button type="submit" class="btn btn-primary pull-right">Submit</button>
            </div>
            <div class="col-sm-6">
                <a class="btn btn-danger" href="<c:url value='/'/>">Cancel</a>
            </div>
        </div>
    </form:form>
</div>

<jsp:include page="footer.jsp"/>

