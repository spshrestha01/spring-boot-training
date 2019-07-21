
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

    <div style="margin-top:15px;">
        <a class="btn btn-default text-success" href="<c:url value='/'/>">
            <i class="glyphicon glyphicon-home"></i>
        </a>
    </div>


    <h2>Edit Student</h2>

    <form class="form-horizontal" action="/update">
        <div class="form-group">
            <label class="control-label col-sm-2" for="id">ID:</label>
            <div class="col-sm-6">
                <input type="input" class="form-control" id="id" placeholder="" value="${student.id}" disabled>
                <input type="hidden" name="studentId" class="form-control"  placeholder="" value="${student.id}" hidden >
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="firstName">First Name:</label>
            <div class="col-sm-6">
                <input type="input" name="firstName" class="form-control" id="firstName" placeholder="" value="${student.firstName}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="lastName">Last Name:</label>
            <div class="col-sm-6">
                <input type="input" name="lastName" class="form-control" id="lastName" placeholder="" value="${student.lastName}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="gpa">GPA:</label>
            <div class="col-sm-6">
                <input type="input" name="gpa" class="form-control" id="gpa" placeholder="" value="${student.gpa}">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>
