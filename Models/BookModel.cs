using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QUANLYSACH_MVC.Models
{
    public class BookModel
    {
        public string id { get; set; }
        public string name { get; set; }
        public string image { get; set; }
        public string author { get; set; }
        public decimal price { get; set; }
        public int quantity { get; set; }
        public int publishingYear { get; set; }
        public string language { get; set; }
        public int numberPage { get; set; }
        public string form { get; set; }
        public int weight { get; set; }
        public CategoryModel categoryModel { get; set; }
        public PublishingCompanyModel publishingCompanyModel { get; set; }
        public BookModel(string id, string name, string image, string author, decimal price, 
            int quantity, int publishingYear, string language, int numberPage, string from, int weight, 
            CategoryModel categoryModel, PublishingCompanyModel publishingCompanyModel)
        {
            this.id = id;
            this.name = name;
            this.image = image;
            this.author = author;
            this.price = price;
            this.quantity = quantity;
            this.publishingYear = publishingYear;
            this.language = language;
            this.numberPage = numberPage;
            this.form = form;
            this.weight = this.weight;
            this.categoryModel = categoryModel;
            this.publishingCompanyModel = publishingCompanyModel;
        }
    }
}