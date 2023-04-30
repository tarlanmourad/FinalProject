using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.Reference
{
    public class Admins
    {
        public int AdminID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        public Admins() { }

        public Admins(int AdminID, string FirstName, string LastName, string Email, string Password)
        {
            this.AdminID = AdminID;
            this.FirstName = FirstName;
            this.LastName = LastName;
            this.Email = Email;
            this.Password = Password;
        }
    }
}