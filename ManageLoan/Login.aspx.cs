using ManageLoan.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ManageLoan
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            EmployeeCollection EmpColl = XMLReader.EmpXMLReader();

            var employee = EmpColl.EmployeeList.Where(item => item.EmpID.ToLower() == employeeID.Value.ToLower() && item.Password.ToLower() == password.Value.ToLower()).SingleOrDefault();

            if (employee != null)
            {
                Session["EmpDetails"] = employee;
                Response.Redirect("~/Dashboard.aspx");
            }
            else
            {

            }
        }
    }
}