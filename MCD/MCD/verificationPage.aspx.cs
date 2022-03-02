using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

namespace MCD
{
    public partial class verificationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ac = Request["ac"] ?? "";
            string pwd = Request["pwd"] ?? "";
            string name = "";
            string positon = "";
            bool status = false;

            string Con = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Steven"].ConnectionString;
            string Com = "SELECT * FROM MemberInfo";

            JavaScriptSerializer serializer = new JavaScriptSerializer();
            SqlConnection con = new SqlConnection(Con);
            SqlCommand com = new SqlCommand(Com, con);
            con.Open();

            SqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                if (reader["userAc"].ToString() == ac && reader["userPwd"].ToString()==pwd )
                {
                    status = true;
                    name = reader["userName"].ToString();
                    positon = reader["position"].ToString();
                    Session["status"] = status;
                    Session["userName"] = name;
                    Session["userAC"] = ac;
                    Session["userPosition"] = positon;
                    break;
                }
            }
            reader.Close();
            if (status)
            {
                Response.Write(serializer.Serialize(new
                {
                    status = status
                }));
            }
            else
            {
                Response.Write(serializer.Serialize(new
                {
                    status = status
                }));
            }
            con.Close();
        }
    }
}