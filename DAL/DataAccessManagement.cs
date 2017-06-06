using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;
using System.Data.Common;

namespace Restaurant.DAL
{
    public class DataAccessManagement
    {
        public DataAccessManagement()
            : base()
        {
            DatabaseFactory.CreateDatabase("ConnString");
        }

        #region User Registration
        public void RegisterUser(string fname, string lname, string dob, string email, string password)
        {
            DataTable dtUser = null;
            try
            {
                Database db = DatabaseFactory.CreateDatabase("ConnString");
                DbCommand dbCommand = db.GetStoredProcCommand("USP_Rest_UserManagement_RegisterUser");
                db.AddInParameter(dbCommand, "@fName", DbType.String, fname);
                db.AddInParameter(dbCommand, "@lName", DbType.String, lname);
                db.AddInParameter(dbCommand, "@dob", DbType.String, dob);
                db.AddInParameter(dbCommand, "@email", DbType.String, email);
                db.AddInParameter(dbCommand, "@pwd", DbType.String, password);
                db.ExecuteNonQuery(dbCommand);
            }
            catch (Exception exp)
            {
            }
        }
        #endregion

        #region Login User
        public bool ValidateUser(string email, string password)
        {
            try
            {
                DataTable dtUser = new DataTable();
                Database db = DatabaseFactory.CreateDatabase("ConnString");
                DbCommand dbc = db.GetStoredProcCommand("USP_Rest_UserManagement_ValidateUser");
                db.AddInParameter(dbc, "@email", DbType.String, email);
                db.AddInParameter(dbc, "@pwd", DbType.String, password);
                dtUser = db.ExecuteDataSet(dbc).Tables[0];
                if (dtUser.Rows.Count > 0)
                    return true;
                return false;
            }
            catch(Exception exp)
            {
                return false;
            }
        }
        #endregion

    }
}