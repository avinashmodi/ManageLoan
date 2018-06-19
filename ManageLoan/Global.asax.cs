using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace ManageLoan
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Exception exception = Server.GetLastError();
            Server.ClearError(); // otherwise it continue to show error

            //Guid errorID = Logger.Write("Application error", exception);

            Response.Redirect("/error?id=" , true);    // END RESPONSE or something could trigger a loop
        }
    }
}