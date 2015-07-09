using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ImportData
{
    class Program
    {
        static void Main(string[] args)
        {

            const string CSV_CONNECTIONSTRING = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=\"localhost\";Extended Properties=\"text;HDR=YES;FMT=Delimited\"";
            string CSVpath = "C:\\CSVFiles";  // CSV file Path
            var AllFiles = new DirectoryInfo(CSVpath).GetFiles("*.CSV");
            string File_Name = string.Empty;
            string ConStr = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;

            for (int i = 0; i < AllFiles.Length; i++)
            {
                try
                {
                    File_Name = AllFiles[i].Name;
                    DataTable dt = new DataTable();
                    using (OleDbConnection con = new OleDbConnection(string.Format(CSV_CONNECTIONSTRING, CSVpath)))
                    {
                        using (OleDbDataAdapter da = new OleDbDataAdapter("select * from [" + File_Name + "]", con))
                        {
                            da.Fill(dt);
                        }
                    }
                    using (SqlBulkCopy bulkCopy = new SqlBulkCopy(ConStr))
                    {
                        bulkCopy.ColumnMappings.Add(0, "Column1");
                        bulkCopy.ColumnMappings.Add(1, "Column2");
                        bulkCopy.ColumnMappings.Add(2, "Column3");
                        bulkCopy.DestinationTableName = "myTable";
                        bulkCopy.BatchSize = dt.Rows.Count;
                        bulkCopy.WriteToServer(dt);
                        bulkCopy.Close();
                    }
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }
        public void BulkCopyCTC(List<EmployeeDet> list)
    {
        DataTable dt =new DataTable();
        dt.Columns.Add(new DataColumn("employee_id",typeof(System.String)));
        dt.Columns.Add(new DataColumn("employee_name",typeof(System.String)));
        dt.Columns.Add(new DataColumn("emp_ctc",typeof(System.Decimal)));

        foreach(EmployeeDet item in list)
        {
            DataRow dr = dt.NewRow();
            dr["employee_id"]= item.GetID();
            dr["employee_name"]= item.GetName();
            dr["emp_ctc"]= item.GetCTC();
            dt.Rows.Add(dr);
        }
       

        MySqlConnection con =new MySqlConnection(newConnectionUtils().GetConnectionString());
        if(con.State==ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        MySqlCommand cmd =new MySqlCommand("SP_InsertCTC", con);
        cmd.CommandType=CommandType.StoredProcedure;

        cmd.UpdatedRowSource=UpdateRowSource.None;

        cmd.Parameters.Add("?e_id",MySqlDbType.String).SourceColumn="employee_id";
        cmd.Parameters.Add("?e_name",MySqlDbType.String).SourceColumn=  "employee_name";
        cmd.Parameters.Add("?emp_ctc",MySqlDbType.Decimal).SourceColumn=  "emp_ctc";   

        MySqlDataAdapter da =new MySqlDataAdapter();
        da.InsertCommand= cmd;
        da.UpdateBatchSize=100;
        int records = da.Update(dt);
        con.Close();
    }
}

    internal class EmployeeDet
    {
    }
}
}
