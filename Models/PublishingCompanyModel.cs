using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QUANLYSACH_MVC.Models
{
    public class PublishingCompanyModel
    {
        public int id { get; set; }
        public string name { get; set; }
        public string image { get; set; }
        public PublishingCompanyModel() { }
        public PublishingCompanyModel(int id, string name, string image)
        {
            this.id = id;
            this.name = name;
            this.image = image;
        }
    }
}