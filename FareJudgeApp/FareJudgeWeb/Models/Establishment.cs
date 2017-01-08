using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace FareJudgeWeb.Model
{
    public class Establishment
    {

        public int AutoId { get; set; }
        public string Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public string Food { get; set; }
        public string Phone { get; set; }
        public string Location { get; set; }
        public int Rating { get; set; }

    }
    public class User
    {

        public string userId { get; set; }
        public List<Establishment> detailList { get; set; }

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
