using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QUANLYSACH_MVC.Models
{
    public class AdminModel
    {
        public int id { get; set; }
        public string username { get; set; }
        public string password { get; set; }

        public AdminModel() { }
        public AdminModel(int id, string username, string password)
        {
            this.id = id;
            this.username = username;
            this.password = password;
        }
    }
}