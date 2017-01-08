using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FareJudgeApp.ViewModel
{
    public class User
    {
        public string userId { get; set; }
        public List<EstablishmentInfo> detailList { get; set; }
        public User(string _userId, List<EstablishmentInfo> _detailList)
        {
            this.userId = _userId;
            this.detailList = _detailList;
       }
    }

   


    public class EstablishmentInfo
    {
        public int AutoId { get; set; }
        public string Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public string Food { get; set; }
        public string Phone { get; set; }
        public string Location { get; set; }
       
        public EstablishmentInfo(int _autoid,
            string _id,
            string _name,
            string _type,
            string _food,
            string _phone,
            string _location
           )
        {
            this.AutoId = _autoid;
            this.Id = _id;
            this.Name = _name;
            this.Type = _type;
            this.Food = _food;
            this.Phone = _phone;
            this.Location = _location;
        }
    }

    public class Response
    {
        public string uploadResponseCode { get; set; }
        public string userId { get; set; }
        public int number { get; set; }
        public string name { get; set; }
        public string message { get; set; }
    }
}
