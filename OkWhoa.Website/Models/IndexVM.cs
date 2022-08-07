using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OkWhoa.Website.Models
{
    public class IndexVM
    {
        public IndexVM()
        {
            lstFirstName = new List<string>();
            lstLastName = new List<string>();  
            lstEmail = new List<string>();
            Users = new List<User>();

        }
        public List<User> Users { get; set; }
        public List<string> lstFirstName { get; set; }
        public List<string> lstLastName { get; set; }
        public List<string> lstEmail { get; set; }
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public Nullable<System.DateTime> DateCreated { get; set; }
    }
}