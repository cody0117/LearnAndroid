using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FareJudgeApp.Model
{
    class Review
    {
        [PrimaryKey, AutoIncrement]
        public int AutoId { get; set; }
        public int EstablishmentAutoId { get; set; }
        public string Meal { get; set; }
        public double Cost { get; set; }
        public DateTime CreateDate { get; set; }
        public int Rating { get; set; }
        public string Comments { get; set; }
        public string ImagePath { get; set; }
    }
}
