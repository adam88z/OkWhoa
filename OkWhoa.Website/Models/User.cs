﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OkWhoa.Website.Models
{
    public class User
    {
        public User()
        {
        }
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public Nullable<System.DateTime> DateCreated { get; set; }
    }
}