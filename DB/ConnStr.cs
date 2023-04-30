using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.DB
{
    public class ConnStr
    {
        public static string GetConnStr
        {
            get
            {
                return "Data Source = tarlan\\localhost; Initial Catalog = Gym; Integrated Security = True";
            }
        }
    }
}