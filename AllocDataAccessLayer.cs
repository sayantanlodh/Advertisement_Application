namespace Advertisement_Application
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Data;
    using System.Configuration;
    using System.Net;
    using System.IO;
    using System.Data.SqlClient;
    using System.Collections;

 

        public class AllocDataAccessLayer
        {
            public SqlConnection db;
            public SqlConnection dbDistribution;
            public SqlConnection nsfaDistribution;
            public AllocDataAccessLayer()
            {
                db = new SqlConnection();
                db.ConnectionString = ConfigurationManager.ConnectionStrings["MyDbConn12"].ToString();

                dbDistribution = new SqlConnection();
                dbDistribution.ConnectionString = ConfigurationManager.ConnectionStrings["MyDbConnAlloc"].ToString();
                nsfaDistribution = new SqlConnection();
                nsfaDistribution.ConnectionString = ConfigurationManager.ConnectionStrings["MyDbConn1"].ToString();
            }
            public string Return_Scalar(string MySql)
            {
                string rs;
                SqlCommand MySqlCmd = new SqlCommand(MySql, db);
                db.Open();
                try
                {
                    rs = MySqlCmd.ExecuteScalar().ToString();
                }
                catch
                {
                    rs = "0";
                }
                finally
                {
                    db.Close();
                }
                return rs;
            }

            public int Data_Process(string sql)
            {
                SqlCommand MySqlCmd;
                try
                {
                    db.Open();
                    MySqlCmd = new SqlCommand(sql, db);
                    MySqlCmd.ExecuteNonQuery();
                    return 0;
                }
                catch
                {
                    return 1;
                }
                finally
                {
                    db.Close();
                }
            }

            public DataTable DataTable_Populate(string MySql)
            {
                DataTable dt;
                try
                {
                    db.Open();
                    SqlDataAdapter MyDataAdapter = new SqlDataAdapter(MySql, db);
                    DataSet MyDataSet = new DataSet();
                    // DataTable_Populate = New DataTable
                    MyDataAdapter.Fill(MyDataSet, "MyTable");
                    dt = MyDataSet.Tables["MyTable"];
                    MyDataSet.Dispose();
                    MyDataAdapter.Dispose();
                }
                catch
                {
                    dt = null;
                }
                finally
                {
                    db.Close();
                }
                return dt;

            }
            public DataView Populate_Data(string MySql)
            {
                DataView dv;
                try
                {

                    db.Open();
                    SqlDataAdapter MyDataAdapter = new SqlDataAdapter(MySql, db);
                    DataSet MyDataSet = new DataSet();
                    MyDataAdapter.Fill(MyDataSet, "MyData");
                    dv = MyDataSet.Tables["MyData"].DefaultView;
                    MyDataSet.Dispose();
                    MyDataAdapter.Dispose();
                }
                catch
                {
                    dv = null;
                }
                finally
                {
                    db.Close();
                }
                return dv;

            }
            public int Call_procedure(string SpName, ArrayList mParameters, ArrayList mParametersVal, SqlConnection ndb)
            {
                int retval = 0;
                try
                {

                    SqlCommand cmd = new SqlCommand(SpName, ndb);
                    ndb.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    cmd.CommandTimeout = 0;
                    cmd.CommandType = CommandType.StoredProcedure;

                    for (int i = 0; i < mParameters.Count; i++)
                    {

                        cmd.Parameters.AddWithValue(mParameters[i].ToString(), mParametersVal[i]);

                    }
                    cmd.ExecuteNonQuery();
                    ndb.Close();
                    retval = 1;

                }
                catch (Exception ex)
                {

                    retval = 0;
                }
                return retval;


            }
        }

    }
