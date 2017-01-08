using FareJudgeApp.Model;
using FareJudgeApp.ViewModel;
using Microsoft.Phone.Shell;
using SQLite;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FareJudgeApp.GlobalClass;
using Coding4Fun.Toolkit.Controls;
namespace FareJudgeApp.DbHelper
{
    class DbHelper
    {
        const int TOAST_HIDDEN_TIME = 1000;
        private ToastPrompt ttShow = new ToastPrompt();
        string dbPath = Path.Combine(Windows.Storage.ApplicationData.Current.LocalFolder.Path, "FareJudge.db");
        public List<EstablishmentInfo> getEstablishmentInfo(string filter)
        {
            using (var db = new SQLiteConnection(dbPath))
            {
                var EstablishmentInfoList = new List<EstablishmentInfo>();
                var result = db.Query<Establishment>("select * from Establishment " + filter);
                foreach (var obj in result)
                {
                    EstablishmentInfoList.Add(new EstablishmentInfo(obj.AutoId, obj.Id, obj.Name, obj.Type, obj.Food, obj.Phone, obj.Location));
                }
                return EstablishmentInfoList;
            }
        }
        
        public void deleteEstablishment(string filter)
        {

            using (var db = new SQLiteConnection(dbPath))
            {
                var result = db.Query<Establishment>("select * from Establishment " + filter);
                if (result != null)
                {
                    db.RunInTransaction(() =>
                    {
                        foreach (var obj in result)
                        {
                            db.Delete(obj);
                        }
                    });
                }
                ttShow.Title = "Deleted Record(s):";
                ttShow.Message = result.Count.ToString();
                ttShow.MillisecondsUntilHidden = TOAST_HIDDEN_TIME;
                ttShow.Show();
            }

        }

        public List<ReviewInfo> getReviewInfo(string filter)
        {
            using (var db = new SQLiteConnection(dbPath))
            {
                var ReviewInfoList = new List<ReviewInfo>();
                var result = db.Query<Review>("select * from Review " + filter);
                foreach (var obj in result)
                {
                    ReviewInfoList.Add(new ReviewInfo(obj.AutoId, obj.EstablishmentAutoId, obj.CreateDate, obj.Meal, obj.Cost, obj.Comments, obj.Rating, obj.ImagePath));
                }
                return ReviewInfoList;
            }
        }

    }
}
