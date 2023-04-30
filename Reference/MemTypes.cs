using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.Reference
{
    public class MemTypes
    {
        public int TypeID { get; set; }
        public string TypeName { get; set; }

        public MemTypes() { }

        public MemTypes(int TypeID, string TypeName)
        {
            this.TypeID = TypeID;
            this.TypeName = TypeName;
        }
    }


}