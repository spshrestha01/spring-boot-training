<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>

<div class="container">
    <div class="row">
        <div class="col-sm-6">

            <div style="margin-top:15px;">
                <a class="btn btn-default text-success" href="<c:url value='/teachers'/>">
                    <i class="glyphicon glyphicon-home"></i>
                </a>
            </div>

            <div class="panel-heading lead">
                <div class="row">
                    <div class="text-success"><i class="glyphicon glyphicon-info-sign"></i> View Teacher Details</div>
                </div>
            </div>

            <table class="table">
                <tbody>
                <tr>
                    <td class="text-success"><i class="glyphicon glyphicon-tag"></i>Teacher ID</td>
                    <td>${teacher.id}</td>
                </tr>
                <tr>
                    <td class="text-success"><i class="glyphicon glyphicon-user"></i>Full Name</td>
                    <td>${teacher.firstName} ${teacher.lastName}</td>
                </tr>
                <tr>
                    <td class="text-success"><i class="glyphicon glyphicon-book"></i>Subject</td>
                    <td>${teacher.subject}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>