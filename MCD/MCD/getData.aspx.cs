using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Newtonsoft.Json;
using System.Data;

namespace MCD
{
    public partial class getData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string type = Request["type"] ?? "";
            string result = "";
            string Con = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Steven"].ConnectionString;
            string Com = "";
            string Com2 = "";
            string Com3 = "";
            SqlConnection con = new SqlConnection(Con);
            SqlCommand com;
            SqlCommand com2;
            SqlCommand com3;
            SqlDataReader reader;
            con.Open();
            switch (type)
            {
                case "get_memberInfo":
                    Com = "SELECT * FROM MemberInfo FOR JSON PATH";
                    com = new SqlCommand(Com, con);
                    reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        result += reader.GetValue(0).ToString();
                    }
                    reader.Close();
                    Response.Write(result);
                    break;
                case "week_get":
                    Com = "SELECT * FROM WeekShiftTable ORDER BY SetUpTime DESC FOR JSON PATH";
                    com = new SqlCommand(Com, con);
                    reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        result += reader.GetValue(0).ToString();
                    }
                    reader.Close();
                    Response.Write(result);
                    break;
                case "week_set":
                    string status = Request["status"] ?? "";
                    string creater = Request["creater"] ?? "";
                    string json = Request["data"] ?? "";
                    string SD = Request["date"] ?? "";
                    if (status == "0")
                    {
                        DataSet Ds = JsonConvert.DeserializeObject<DataSet>(json);
                        DataTable Dt = Ds.Tables[0];
                        SqlCommand DelCom = new SqlCommand("DELETE FROM WeeKShiftTable WHERE ShiftDate = @SD",con);
                        DelCom.Parameters.AddWithValue("@SD", SD);
                        DelCom.ExecuteNonQuery();
                        foreach (DataRow row in Dt.Rows)
                        {
                            Com = "INSERT INTO WeekShiftTable VALUES (CONVERT(VARCHAR, GETDATE(), 120),@creater,@EN,@1,@2,@3,@4,@5,@6,@7,'0',@SD)";
                            com = new SqlCommand(Com, con);
                            com.Parameters.AddWithValue("@creater", creater);
                            com.Parameters.AddWithValue("@SD", SD);
                            com.Parameters.AddWithValue("@EN", row["name"]);
                            com.Parameters.AddWithValue("@1", row["data1"]);
                            com.Parameters.AddWithValue("@2", row["data2"]);
                            com.Parameters.AddWithValue("@3", row["data3"]);
                            com.Parameters.AddWithValue("@4", row["data4"]);
                            com.Parameters.AddWithValue("@5", row["data5"]);
                            com.Parameters.AddWithValue("@6", row["data6"]);
                            com.Parameters.AddWithValue("@7", row["data7"]);
                            com.ExecuteNonQuery();
                        }
                    }
                    else
                    {
                        DataSet Ds = JsonConvert.DeserializeObject<DataSet>(json);
                        DataTable Dt = Ds.Tables[0];
                        SqlCommand DelCom = new SqlCommand("DELETE FROM WeeKShiftTable WHERE ShiftDate = @SD", con);
                        DelCom.Parameters.AddWithValue("@SD", SD);
                        DelCom.ExecuteNonQuery();
                        foreach (DataRow row in Dt.Rows)
                        {
                            Com = "INSERT INTO WeekShiftTable VALUES (CONVERT(VARCHAR, GETDATE(), 120),@creater,@EN,@1,@2,@3,@4,@5,@6,@7,'1',@SD)";
                            com = new SqlCommand(Com, con);
                            com.Parameters.AddWithValue("@creater", creater);
                            com.Parameters.AddWithValue("@SD", SD);
                            com.Parameters.AddWithValue("@EN", row["name"]);
                            com.Parameters.AddWithValue("@1", row["data1"]);
                            com.Parameters.AddWithValue("@2", row["data2"]);
                            com.Parameters.AddWithValue("@3", row["data3"]);
                            com.Parameters.AddWithValue("@4", row["data4"]);
                            com.Parameters.AddWithValue("@5", row["data5"]);
                            com.Parameters.AddWithValue("@6", row["data6"]);
                            com.Parameters.AddWithValue("@7", row["data7"]);
                            com.ExecuteNonQuery();
                        }
                        Com2 = "SELECT * FROM WeekShiftTable ORDER BY Status FOR JSON PATH";
                        com2 = new SqlCommand(Com2, con);
                        reader = com2.ExecuteReader();
                        while (reader.Read())
                        {
                            result += reader.GetValue(0).ToString();
                        }
                        reader.Close();
                        Response.Write(result);
                    }
                    break;
                case "day_get":
                    Com = "SELECT * FROM DayShiftTable FOR JSON PATH";
                    com = new SqlCommand(Com, con);
                    reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        result += reader.GetValue(0).ToString();
                    }
                    reader.Close();
                    Response.Write(result);
                    break;
                case "day_set":
                    Com = "INSERT INTO DayShiftTable";
                    com = new SqlCommand(Com, con);
                    break;
                case "salary_get":
                    Com = "SELECT * FROM Salary FOR JSON PATH";
                    com = new SqlCommand(Com, con);
                    reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        result += reader.GetValue(0).ToString();
                    }
                    reader.Close();
                    Response.Write(result);
                    break;
                case "salary_set":
                    Com = "INSERT INTO Salary";
                    com = new SqlCommand(Com, con);
                    break;
                case "absenceNote_get":
                    Com = "SELECT * FROM AbsenceNote ORDER BY applicationTime DESC FOR JSON PATH";
                    com = new SqlCommand(Com, con);
                    reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        result += reader.GetValue(0).ToString();
                    }
                    reader.Close();
                    Response.Write(result);
                    break;
                case "absenceNote_send":
                    string userName = Request["user"] ?? "";
                    string userAC = Request["ac"] ?? "";
                    string time = Request["time"] ?? "";
                    string month = Request["month"] ?? "";
                    string remarks = Request["remarks"] ?? "";
                    string json2 = Request["date"] ?? "";
                    int length = int.Parse(Request["length"]);
                    Com2 = "SELECT * FROM AbsenceNote";
                    com2 = new SqlCommand(Com2, con);
                    DataSet Ds2 = JsonConvert.DeserializeObject<DataSet>(json2);
                    DataTable Date = Ds2.Tables[0];
                    
                    foreach(DataRow row in Date.Rows)
                    {
                        bool ifExist = false;
                        reader = com2.ExecuteReader();
                        while (reader.Read())
                        {
                            if (row["date"].ToString().Trim() == reader["Date"].ToString().Trim())
                            {
                                ifExist = true;
                            }
                        }
                        reader.Close();
                        if (!ifExist)
                        {
                            Com = "INSERT INTO AbsenceNote VALUES (@1,@2,@3,@4,@5,@6,CONVERT(VARCHAR, GETDATE(), 120))";
                            com = new SqlCommand(Com, con);
                            com.Parameters.AddWithValue("@1", userName);
                            com.Parameters.AddWithValue("@2", userAC);
                            com.Parameters.AddWithValue("@3", remarks);
                            com.Parameters.AddWithValue("@4", month);
                            com.Parameters.AddWithValue("@5", row["date"].ToString());
                            com.Parameters.AddWithValue("@6", time);
                            com.ExecuteNonQuery();
                        }
                        else
                        {
                            Com3 = "DELETE FROM AbsenceNote WHERE Date = @1 AND UserAc = @2";
                            com3 = new SqlCommand(Com3, con);
                            com3.Parameters.AddWithValue("@1", row["date"].ToString());
                            com3.Parameters.AddWithValue("@2",userAC);
                            com3.ExecuteNonQuery();
                            Com = "INSERT INTO AbsenceNote VALUES (@1,@2,@3,@4,@5,@6,CONVERT(VARCHAR, GETDATE(), 120))";
                            com = new SqlCommand(Com, con);
                            com.Parameters.AddWithValue("@1", userName);
                            com.Parameters.AddWithValue("@2", userAC);
                            com.Parameters.AddWithValue("@3", remarks);
                            com.Parameters.AddWithValue("@4", month);
                            com.Parameters.AddWithValue("@5", row["date"].ToString());
                            com.Parameters.AddWithValue("@6", time);
                            com.ExecuteNonQuery();
                        }
                    }

                    break;
            }

            con.Close();
        }
    }
}