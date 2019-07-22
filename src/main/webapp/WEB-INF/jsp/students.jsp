<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>

<div class="container">

    <div style="margin-top:15px;">
        <a class="btn btn-default text-success" href="<c:url value='/'/>">
            <i class="glyphicon glyphicon-home"></i>
        </a>
    </div>

    <h2>All Students</h2>

    <div>
        <form class="form-inline" action="students/info">
            <input type="text" name="studentId" class="form-control mb-2 mr-sm-2 mb-sm-0" id="inlineFormInput"
                   placeholder="Enter Student ID">
            <button type="submit" class="btn btn-primary">Search</button>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

            <a class="text-success btn btn-default text-success float-right" href="<c:url value="/students/add"/>">
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
            <th>Gpa</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${students}" var="student">
            <tr>
                <td>${student.id}</td>
                <td>${student.firstName} ${student.lastName}</td>
                <td>${student.gpa}</td>
                <td>
                    <a href="<c:url value='/students/${student.id}/edit'/>">
                        <btn class="btn btn-primary" name="edit-button">Edit</btn>
                    </a>
                    &nbsp;
                    <a href="<c:url value='/students/${student.id}/delete'/>">
                        <btn class="btn btn-danger" name="delete-button">Delete</btn>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<jsp:include page="footer.jsp"/>
