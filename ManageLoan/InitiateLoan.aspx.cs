using ManageLoan.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ManageLoan
{    
    public partial class InitiateLoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]        
        public static string btnGetClientDetails_click(string clientNo)
        {
            var client = XMLReader.ClientXMLReader().ClientList.Where(item => item.ClientNo == clientNo).SingleOrDefault();
            string clientDetails = string.Empty;
            if (client != null)
            {
                clientDetails = JsonConvert.SerializeObject(client);
            }
            return clientDetails;
        }
    }
}