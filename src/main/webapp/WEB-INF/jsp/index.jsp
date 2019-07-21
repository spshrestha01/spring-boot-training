<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>CMS</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>All Students</h2>

    <div>
        <form class="form-inline" action="info">
            <input type="text" name="studentId" class="form-control mb-2 mr-sm-2 mb-sm-0" id="inlineFormInput" placeholder="Enter Student ID">
            <button type="submit" class="btn btn-primary">Search</button>
        </form>
    </div>

    <br>
    <br>

    <div class="panel-heading lead">
        <div class="row">
            <div class="text-success">
                <a class="btn btn-default text-success" href="<c:url value='/insert'/>">
                    <i class="glyphicon glyphicon-plus"></i>
                </a>
            </div>
        </div>
    </div>
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
                <td>${student.firstName}  ${student.lastName}</td>
                <td>${student.gpa}</td>
                <td>
                    <a href="<c:url value='/edit/${student.id}'/>"> <btn class="btn btn-primary" name="edit-button">Edit</btn> </a>
                    &nbsp;
                    <a href="<c:url value='/delete/${student.id}'/>"><btn class="btn btn-danger" name="edit-button">Delete</btn></a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

</body>
</html>
