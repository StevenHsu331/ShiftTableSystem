using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using System.Data;

namespace MCD
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ac = Request["ac"] ?? "";
            string pwd = Request["pwd"] ?? "";
            string name = Request["name"] ?? "";
            string id = Request["ID"] ?? "";
            string num = Request["num"] ?? "";
            string gen = Request["gen"] ?? "";
            bool flagShow = true;
            bool[] status = new bool[] {true, true, true, true } ;
            JavaScriptSerializer serializer = new JavaScriptSerializer();

            string Con = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Steven"].ConnectionString;
            string Com = "SELECT * FROM MemberInfo";
            string Com2 = "INSERT INTO MemberInfo VALUES (@name,@ac,@pwd,@num,@gen,@id)";
            SqlConnection con = new SqlConnection(Con);
            SqlCommand checkCom = new SqlCommand(Com,con);
            SqlCommand insertCom = new SqlCommand(Com2,con);
            con.Open();

            SqlDataReader reader = checkCom.ExecuteReader();
            while (reader.Read())
            {
                if (reader["userAc"].ToString() == ac)
                {
                    status[0] = false;
                    flagShow = false;
                }
                if (reader["userPwd"].ToString() == pwd)
                {
                    status[1] = false;
                    flagShow = false;
                }
                if (reader["userNum"].ToString() == num)
                {
                    status[2] = false;
                    flagShow = false;
                }
                if (reader["userID"].ToString() == id)
                {
                    status[3] = false;
                    flagShow = false;
                }
            }
            reader.Close();

            if (flagShow)
            {
                insertCom.Parameters.AddWithValue("@ac",ac);
                insertCom.Parameters.AddWithValue("@pwd",pwd);
                insertCom.Parameters.AddWithValue("@name",name);
                insertCom.Parameters.AddWithValue("@id",id);
                insertCom.Parameters.AddWithValue("@gen",gen);
                insertCom.Parameters.AddWithValue("@num",num);
                insertCom.ExecuteNonQuery();
                Response.Write(serializer.Serialize(new {
                    status = true
                }));
            }
            else
            {
                string result = checkVal(status);
                Response.Write(result);
            }

            con.Close();

        }
        static string checkVal(bool[] status)
        {
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            string result = "";
            result = serializer.Serialize(new
            {
                status = false,
                ac = status[0],
                pwd = status[1],
                num = status[2],
                id = status[3]

            });
            return result;
        }

    }
}