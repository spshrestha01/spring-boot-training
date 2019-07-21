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
        <div class="row">
            <div class="col-sm-6">

                <div style="margin-top:15px;">
                    <a class="btn btn-default text-success" href="<c:url value='/'/>">
                        <i class="glyphicon glyphicon-home"></i>
                    </a>
                </div>

                <div class="panel-heading lead">
                    <div class="row">
                        <div class="text-success"><i class="glyphicon glyphicon-info-sign"></i> View Student Details</div>
                    </div>
                </div>
                <table class="table">
                    <tbody>
                    <tr>
                        <td class="text-success"><i class="glyphicon glyphicon-user"></i> Full Name</td>
                        <td>${student.firstName} ${student.lastName}</td>
                    </tr>
                    <tr>
                        <td class="text-success"><i class="glyphicon glyphicon-tag"></i>Student ID</td>
                        <td>${student.id}</td>
                    </tr>
                    <tr>
                        <td class="text-success"><i class="glyphicon glyphicon-book"></i> GPA</td>
                        <td>${student.gpa}</td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    </body>
</html>