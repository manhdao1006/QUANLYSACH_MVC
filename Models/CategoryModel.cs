using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QUANLYSACH_MVC.Models
{
    public class CategoryModel
    {
        public int id { get; set; }
        public string name { get; set; }
        public CategoryModel() { }
        public CategoryModel(int id, string name)
        {
            this.id = id;
            this.name = name;
        }
    }
}