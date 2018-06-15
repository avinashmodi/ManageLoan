<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InitiateLoan.aspx.cs" Inherits="ManageLoan.InitiateLoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="Scripts/WebForms/MSAjax/MicrosoftAjax.js"></script>
    <script src="Scripts/WebForms/MSAjax/MicrosoftAjaxApplicationServices.js"></script>
    <script src="Scripts/WebForms/MSAjax/MicrosoftAjaxTimer.js"></script>
    <script src="Scripts/WebForms/MSAjax/MicrosoftAjaxWebForms.js"></script>
    <script src="Scripts/InititateLoan.js"></script>

    <div class="container-fluid" style="background-color: #7ec3f1">
        <h1 style="line-height: 3">Manage Loan</h1>
    </div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="nav nav-pills mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Dashboard.aspx">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="InitiateLoan.aspx">Initiate Loan</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>

    <div>
        <h4 class="text-right" style="margin-right: 70px">Welcome : Avinash<span id="spnUser"></span></h4>
    </div>

    <br />

    <form >
        <div class="container" style="max-width: 800px; margin-left: 60px">
            <%-- <div class="form-group row">
            <label for="ClientNo" class="col-sm-2 col-form-label">Client Number</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="ClientNo" placeholder="">
            </div>
        </div>--%>

            <div class="form-group row input-group mb-3">
                <label for="ClientNumber" class="col-sm-2 col-form-label">Client Num</label>
                <%--<div class="col-sm-10">--%>
                <input type="text" class="form-control" runat="server" style="margin-left: 20px" id="ClientNumber" placeholder="">
                <%--</div>--%>
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary" runat="server" id="btnGetClientDetails"  type="button">Get Client details</button>
                    <%--<asp:Button class="btn btn-outline-secondary" runat="server" ID="btnGetClientDetails" Text="Get Client details" OnClick="btnGetClientDetails_Click" /></asp:button>--%>
                </div>
            </div>

            <div class="form-group row">
                <label for="ClientName" class="col-sm-2 col-form-label">Client Name</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" runat="server" id="ClientName" placeholder="">
                </div>
            </div>
            <div class="form-group row">
                <label for="AccNo" class="col-sm-2 col-form-label">Account Num</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" runat="server" id="AccNo" placeholder="">
                </div>
            </div>

            <div class="form-group row input-group mb-3">
                <label class="col-sm-2 col-form-label" for="LoanType">Loan Type</label>

                <select class="custom-select form-control" style="margin-left: 20px" id="LoanType">
                    <option selected>Mortgage Loan</option>
                    <option value="1">Private Loan</option>
                </select>
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button">Button</button>
                </div>
            </div>



            <div class="form-group row">
                <label for="LoanID" class="col-sm-2 col-form-label">Loan ID</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="LoanID" placeholder="">
                </div>
            </div>
            <div class="form-group row">
                <label for="LoanAmount" class="col-sm-2 col-form-label">Loan Amount</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="LoanAmount" placeholder="">
                </div>
            </div>

            <div class="form-group row input-group mb-3">
                <label class="col-sm-2 col-form-label" for="Collaterals">Collaterals</label>

                <select class="custom-select form-control" style="margin-left: 20px" id="Collaterals">
                    <option selected>Mortgage</option>
                    <option value="1">Insurance</option>
                    <option value="2">Securities</option>
                    <option value="3">Bonds</option>
                </select>
            </div>

            <%--<div class="form-group row">
            <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputPassword3" placeholder="Password">
            </div>
        </div>--%>

            <div class="form-group row">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Proceed</button>
                </div>
            </div>

        </div>

        <div class="container" style="max-width: 800px; margin-left: 60px">

            <div class="form-group row">
                <label for="CreditScore" class="col-sm-2 col-form-label">Credit Score</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="CreditScore" placeholder="80">
                </div>
            </div>

            <div class="form-group row">
                <label for="InterestRate" class="col-sm-2 col-form-label">Interest Rate</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="InterestRate" placeholder="">
                </div>
            </div>

            <div class="form-group row">
                <label for="LoanTerm" class="col-sm-2 col-form-label">Loan Term</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="LoanTerm" placeholder="">
                </div>
            </div>

            <div class="form-group row">
                <label for="Fees" class="col-sm-2 col-form-label">Fees</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="Fees" placeholder="">
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Confirm</button>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
