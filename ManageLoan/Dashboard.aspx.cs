using ManageLoan.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ManageLoan
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Employee emp = Session["EmpDetails"] as Employee;

            var loanCollection = XMLReader.LoanXMLReader();
            List<LoanDetails> filteredLoans = new List<LoanDetails>();
            //if (emp.EmpID != "Admin")
            filteredLoans = loanCollection.LoanList;
            //.Where(item => item.InitiatedBy == "46250").ToList();
            //else
            //    filteredLoans = loanCollection.LoanList;

            StringBuilder html = new StringBuilder();

            //Table start.
            html.Append("<table class='table table-striped'>");
            html.Append("<thead class='table-primary'><tr><th scope='col'>Loan ID</th><th scope='col'>Loan Account</th><th scope='col'>Client No</th><th scope='col'>Client Name</th><th scope='col'>Interest Rate</th><th scope='col'>Loan Amount</th><th scope='col'>Initiated By</th><th scope='col'>Loan Status</th><th scope='col'></th></tr></thead><tbody>");


            foreach (var LoanDetails in filteredLoans)
            {
                html.Append("<tr>");
                html.Append(string.Format("<th scope='row'>{0}</th>", LoanDetails.loanNo));
                html.Append(string.Format("<td>{0}</td>", LoanDetails.loanAccount));
                html.Append(string.Format("<td>{0}</td>", LoanDetails.ClientNo));
                html.Append(string.Format("<td>{0}</td>", LoanDetails.ClientName));
                html.Append(string.Format("<td>{0}</td>", LoanDetails.InterestRate));
                html.Append(string.Format("<td>{0}</td>", LoanDetails.loanAmount));
                html.Append(string.Format("<td>{0}</td>", LoanDetails.InitiatedBy));
                html.Append(string.Format("<td>{0}</td>", LoanDetails.loanStatus));
                html.Append(string.Format("<td><a class='nav-link' href='InitiateLoan.aspx?LoanID={0}'>View</a></td>", LoanDetails.loanNo));
                html.Append("</tr>");
            }

            html.Append("</tbody></table>");

            divTable.InnerHtml = html.ToString();
        }
    }
}
}