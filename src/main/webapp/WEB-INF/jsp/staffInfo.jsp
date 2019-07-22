<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>

<div class="container">
    <div class="row">
        <div class="col-sm-6">

            <div style="margin-top:15px;">
                <a class="btn btn-default text-success" href="<c:url value='/staffs'/>">
                    <i class="glyphicon glyphicon-home"></i>
                </a>
            </div>

            <div class="panel-heading lead">
                <div class="row">
                    <div class="text-success"><i class="glyphicon glyphicon-info-sign"></i>View Staff Details</div>
                </div>
            </div>

            <table class="table">
                <tbody>
                <tr>
                    <td class="text-success"><i class="glyphicon glyphicon-tag"></i>Staff ID</td>
                    <td>${staff.id}</td>
                </tr>
                <tr>
                    <td class="text-success"><i class="glyphicon glyphicon-user"></i>Full Name</td>
                    <td>${staff.firstName} ${staff.lastName}</td>
                </tr>
                <tr>
                    <td class="text-success"><i class="glyphicon glyphicon-folder-open"></i>Department</td>
                    <td>${staff.department}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>