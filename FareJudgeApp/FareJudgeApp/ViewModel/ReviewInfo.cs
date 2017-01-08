using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FareJudgeApp.ViewModel
{
    class ReviewInfo
    {
        public int AutoId { get; set; }
        public int EstablishmentAutoId { get; set; }
        public string Meal { get; set; }
        public double Cost { get; set; }
        public DateTime CreateDate { get; set; }
        public int Rating { get; set; }
        public string Comments { get; set; }
        public string ImagePath { get; set; }
        public ReviewInfo(int _autoid,
            int _establishmentautoid,
            DateTime _createdate,
            string _meal,
            double _cost,
            string _comments,
            int _rating,
            string _imagepath
           )
        {
            this.AutoId = _autoid;
            this.EstablishmentAutoId = _establishmentautoid;
            this.Meal = _meal;
            this.Cost = _cost;
            this.CreateDate = _createdate;
            this.Rating = _rating;
            this.Comments = _comments;
            this.ImagePath = _imagepath;
        }
    }
}
