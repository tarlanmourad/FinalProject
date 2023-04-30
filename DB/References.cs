using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI.WebControls;
using FinalProject.DB;
using FinalProject.Reference;

namespace FinalProject.DB
{
    public class References
    {
        // GETTING CONNECTION STRING FROM DB FOLER
        SqlConnection conn = new SqlConnection(ConnStr.GetConnStr);
        SqlCommand cmd;
        int res;
        bool result;
        string query;
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        SqlDataAdapter sda;
        SqlDataReader dr;

        public void ConnOpener()
        {
            if (conn.State != ConnectionState.Open) conn.Open();
        }

        public void ConnCloser()
        {
            if (conn.State != ConnectionState.Closed) conn.Close();
        }

        public bool InsertMsg(string FullName, string Email, string Subject, string Message)
        {
            query = "INSERT INTO Contact VALUES(@FullName, @Email, @Subject, @Message)";
            cmd = new SqlCommand(query, conn);

            cmd.Parameters.AddWithValue("@FullName", FullName);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Subject", Subject);
            cmd.Parameters.AddWithValue("@Message", Message);

            try
            {
                ConnOpener();
                res = cmd.ExecuteNonQuery();
                if (res > 0) result = true;
            }

            catch { throw; }

            finally { ConnCloser(); }

            return result;
        }

        public bool InsertMember(string FirstName, string LastName, string Email, string Weight, string Height, string Phone, string Gender, int BirthYear, string MembershipType, string Trainer)
        {
            query = "INSERT INTO Members(FirstName, LastName, Email, Weight, Height, Phone, Gender, BirthYear, TrainerID, TypeID)" +
                    "VALUES(@firstName, @lastName, @email, @weight, @height, @phone, @gender, @birthYear, @trainerId, @membershipTypeId)";

            cmd = conn.CreateCommand();
            cmd.CommandText = query;

            cmd.Parameters.AddWithValue("@firstName", FirstName);
            cmd.Parameters.AddWithValue("@lastName", LastName);
            cmd.Parameters.AddWithValue("@email", Email);
            cmd.Parameters.AddWithValue("@phone", Phone);
            cmd.Parameters.AddWithValue("@weight", Weight);
            cmd.Parameters.AddWithValue("@height", Height);
            cmd.Parameters.AddWithValue("@gender", Gender);
            cmd.Parameters.AddWithValue("@birthYear", BirthYear);

            switch (MembershipType)
            {
                case "Monthly":
                    cmd.Parameters.AddWithValue("@membershipTypeId", 1);
                    break;
                case "Annually":
                    cmd.Parameters.AddWithValue("@membershipTypeId", 2);
                    break;
                case "Pay-as-you-go":
                    cmd.Parameters.AddWithValue("@membershipTypeId", 3);
                    break;
                default:
                    break;
            }

            switch (Trainer)
            {
                case "Chris Bumstead":
                    cmd.Parameters.AddWithValue("@trainerId", 1);
                    break;
                case "Wesley Vissers":
                    cmd.Parameters.AddWithValue("@trainerId", 2);
                    break;
                case "Nataliya Kuznetsova":
                    cmd.Parameters.AddWithValue("@trainerId", 3);
                    break;
                case "Dorian Yates":
                    cmd.Parameters.AddWithValue("@trainerId", 4);
                    break;
                default:
                    break;
            }

            try
            {
                ConnOpener();
                res = cmd.ExecuteNonQuery();
                if (res > 0) result = true;
            }

            catch { throw; }

            finally { ConnCloser(); }

            return result;
        }

        public DataTable FillDrpList()
        {
            ConnOpener();
            cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT FullName FROM Trainers";
            sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            ConnCloser();
            return dt;
        }

        public DataSet FillEval()
        {
            ConnOpener();
            cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM TrainerClass";
            sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;
            ds = new DataSet();
            sda.Fill(ds);
            ConnCloser();
            return ds;
        }

        public DataSet FillGrid()
        {
            ConnOpener();
            cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT MemberID, FirstName, LastName, Weight, Height, Phone, BirthYear, Gender, Email, JoinDate, TrainerID, TypeID FROM Members";
            sda = new SqlDataAdapter(cmd);
            ds = new DataSet();
            sda.Fill(ds);
            return ds;
        }

        public bool GrdMembersUpdate(int id, string firstName, string lastName, string email, string weight, string height, string phone, string gender, int birthYear, string joinDate, int trainerId, int typeId)
        {
            try
            {
                ConnOpener();
                cmd = conn.CreateCommand();
                cmd.CommandText = "UPDATE Members SET firstName='" + firstName + "', LastName='" + lastName + "', Email='" + email + "', " +
                                  "Weight='" + weight + "', Height='" + height + "', Phone='" + phone + "', Gender='" + gender + "', BirthYear='" + birthYear + "', " +
                                  "JoinDate='" + joinDate + "', TrainerID='" + trainerId + "', TypeID='" + typeId + "' WHERE MemberID='" + id + "'";

                res = cmd.ExecuteNonQuery();
                if (res == 1)
                {
                    result = true;
                }
            }

            catch { throw; }

            finally { ConnCloser(); }

            return result;

        }

        public DataSet FillGrdMessage()
        {
            ConnOpener();
            cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT MessageID, FullName, Email, Subject, Message FROM Contact";
            sda = new SqlDataAdapter(cmd);
            ds = new DataSet();
            sda.Fill(ds);
            return ds;
        }
        

        public bool GrdMembersDelete(int id)
        {
            try
            {
                ConnOpener();
                cmd = conn.CreateCommand();
                cmd.CommandText = "DELETE FROM Members WHERE MemberID='" + id + "'";

                res = cmd.ExecuteNonQuery();

                if(res == 1) result = true;
            }

            catch { throw; }

            finally { ConnCloser(); }

            return result;
        }

        public bool GrdMessagesDelete(int id)
        {
            try
            {
                ConnOpener();
                cmd = conn.CreateCommand();
                cmd.CommandText = "DELETE FROM Contact WHERE MessageID='" + id + "'";

                res = cmd.ExecuteNonQuery();

                if (res == 1) result = true;
            }

            catch { throw; }

            finally { ConnCloser(); }

            return result;
        }

        public List<MemTypes> GetMemTypes()
        {
            ConnOpener();
            cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM MembershipTypes";
            dr = cmd.ExecuteReader();

            List<MemTypes> memTypes = new List<MemTypes>();

            while (dr.Read())
            {
                memTypes.Add(new MemTypes
                {
                    TypeID = Convert.ToInt32(dr["TypeID"]),
                    TypeName = dr["TypeName"].ToString()
                });
            }
            ConnCloser();

            return memTypes;
        }

        public List<Admins> GetAdmins()
        {
            ConnOpener();
            cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM Admins";
            dr = cmd.ExecuteReader();

            List<Admins> admins = new List<Admins>();

            while (dr.Read())
            {
                admins.Add(new Admins
                {
                    AdminID = Convert.ToInt32(dr["AdminID"]),
                    FirstName = dr["FirstName"].ToString(),
                    LastName = dr["LastName"].ToString().ToString(),
                    Email = dr["Email"].ToString(),
                    Password = dr["Password"].ToString(),
                });
            }
            ConnCloser();

            return admins;
        }

        public bool IsValidEmail(string email)
        {
            string regex = @"^[^@\s]+@[^@\s]+\.(com|net|org|gov|ru)$";

            return Regex.IsMatch(email, regex, RegexOptions.IgnoreCase);
        }

        public bool IsValidPhone(string phone)
        {
            string regex = @"^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$";

            return Regex.IsMatch(phone, regex, RegexOptions.IgnoreCase);
        }
    }
}