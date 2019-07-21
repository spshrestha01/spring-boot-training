
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


    <h2>Add Student Record</h2>

    <form class="form-horizontal" action="/add">
        <div class="form-group">
            <label class="control-label col-sm-2" for="id">ID:</label>
            <div class="col-sm-6">
                <input type="input" name="studentId" class="form-control"  id="id" placeholder="ID" value="${student.id}"  >
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="firstName">First Name:</label>
            <div class="col-sm-6">
                <input type="input" name="firstName" class="form-control" id="firstName" placeholder="First Name" value="${student.firstName}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="lastName">Last Name:</label>
            <div class="col-sm-6">
                <input type="input" name="lastName" class="form-control" id="lastName" placeholder="Last Name" value="${student.lastName}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="gpa">GPA:</label>
            <div class="col-sm-6">
                <input type="input" name="gpa" class="form-control" id="gpa" placeholder="GPA" value="${student.gpa}">
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
