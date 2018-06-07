using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;

/// <summary>
/// Summary description for RequestorsDAL
/// </summary>
public static class RequestorsDAL
{
    public static List<string> GetRequestors()
    {
        List<string> requestors = new List<string>();
        
        SqlConnection conn = null;
        SqlCommand cmd = null;
        SqlDataReader reader = null;

        try
        {
            using (conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MLBStyleGuideConnectionString1"].ConnectionString))
            {
                conn.Open();
                using (cmd = conn.CreateCommand())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "mlbstyleguide.uspRequestorSelect";
                    reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                    while (reader.Read())
                    {
                        requestors.Add(reader.GetString(2) + ", " + reader.GetString(1));
                    }
                }
            }
        }
        catch (Exception e)
        {
            return requestors;
            throw e;
        }
        return requestors;
    }
}