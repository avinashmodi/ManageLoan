<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ManageLoan.Login" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <%--  <div class="container-fluid" style="background-color: #7ec3f1">
        <h1 style="line-height: 8; align-content: center">Manage Loan Demo</h1>
    </div>--%>
    <div class="jumbotron" style="background-color: #7ec3f1">
        <h1 class="display-4">Manage Loan Demo</h1>
        <p class="lead"></p>
        <hr class="my-4">
        <p>Demo application for showcasing CI-CD pipeline</p>
        <%--<p class="lead">
            <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
        </p>--%>
    </div>
    <br />
    <br />
    <form runat="server">

        <div class="container" style="max-width: 650px">
            <!-- Content here -->

            <div class="form-group">
                <label for="employeeID">Email address</label>
                <input type="text" class="form-control" runat="server" id="employeeID" placeholder="Enter employee ID">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" runat="server" id="password" placeholder="Password">
            </div>
            <asp:Button ID="btnLogin" class="btn btn-primary" OnClick="btnLogin_Click" runat="server" Text="Login" />
            <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
        </div>
    </form>
</body>
</html>
