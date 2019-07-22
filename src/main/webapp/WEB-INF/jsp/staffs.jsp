<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>

<div class="container">

    <div style="margin-top:15px;">
        <a class="btn btn-default text-success" href="<c:url value='/'/>">
            <i class="glyphicon glyphicon-home"></i>
        </a>
    </div>

    <h2>All Staffs</h2>

    <div>
        <form class="form-inline" action="staffs/info">
            <input type="text" name="staffId" class="form-control mb-2 mr-sm-2 mb-sm-0" id="inlineFormInput"
                   placeholder="Enter Staff ID">
            <button type="submit" class="btn btn-primary">Search</button>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

            <a class="text-success btn btn-default text-success float-right" href="<c:url value="/staffs/add"/>">
                <i class="glyphicon glyphicon-plus"></i>
            </a>
        </form>
    </div>

    <br>
    <br>

    <table class="table">
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Department</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${staffs}" var="staff">
            <tr>
                <td>${staff.id}</td>
                <td>${staff.firstName} ${staff.lastName}</td>
                <td>${staff.department}</td>
                <td>
                    <a href="<c:url value='/staffs/${staff.id}/edit'/>">
                        <btn class="btn btn-primary" name="edit-button">Edit</btn>
                    </a>
                    &nbsp;
                    <a href="<c:url value='/staffs/${staff.id}/delete'/>">
                        <btn class="btn btn-danger" name="delete-button">Delete</btn>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<jsp:include page="footer.jsp"/>
