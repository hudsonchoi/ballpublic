using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;

/// <summary>
/// Summary description for BAMUsersDAL
/// </summary>
public static class BAMUsersDAL
{
    public static void AddBAMUser(Guid token)
    {
        SqlConnection conn = null;
        SqlCommand cmd = null;
        try
        {
            using (conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MLBStyleGuideConnectionString1"].ConnectionString))
            {
                conn.Open();
                using (cmd = conn.CreateCommand())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "mlbstyleguide.uspInsertBAMUser";
                    cmd.Parameters.AddWithValue("token", token);
                    cmd.ExecuteNonQuery();
                }
            }
        }
        catch (Exception e)
        {
            throw e;
        }
    }
}