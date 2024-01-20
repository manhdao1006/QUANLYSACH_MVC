using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QUANLYSACH_MVC.Models
{
    public class AccountModel
    {
        public int id { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string email { get; set; }
        public int phoneNumber { get; set; }
        public AccountModel() { }
        public AccountModel(int id, string username, string password, string email, int phoneNumber)
        {
            this.id = id;
            this.username = username;
            this.password = password;
            this.email = email;
            this.phoneNumber = phoneNumber;
        }                   
    }                       
}