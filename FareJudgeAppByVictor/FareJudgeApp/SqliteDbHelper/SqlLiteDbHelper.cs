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
    class SqlLiteDbHelper
    {
        const int TOAST_TIME = 5000;
        private ToastPrompt _tostbox = new ToastPrompt();
        string sqlitedbPath = Path.Combine(Windows.Storage.ApplicationData.Current.LocalFolder.Path, "FareJudge.db");
        public List<Establishments> getEstablishmentInfo(string filter)
        {
            using (var _db = new SQLiteConnection(sqlitedbPath))
            {
                var EstablishmentInfoList = new List<Establishments>();
                var result = _db.Query<Establishment>("SELECT * FROM Establishment " + filter);
                foreach (var obj in result)
                {
                    EstablishmentInfoList.Add(new Establishments(obj.AutoId, obj.Id, obj.Name, obj.Type, obj.Food, obj.Phone, obj.Location));
                }
                return EstablishmentInfoList;
            }
        }
        
        public void deleteEstablishment(string filter)
        {

            using (var _db = new SQLiteConnection(sqlitedbPath))
            {
                var result = _db.Query<Establishment>("SELECT * FROM Establishment " + filter);
                if (result != null)
                {
                    _db.RunInTransaction(() =>
                    {
                        foreach (var obj in result)
                        {
                            _db.Delete(obj);
                        }
                    });
                }
                _tostbox.Title = "Trucate Database:";
                _tostbox.Message = result.Count.ToString();
                _tostbox.MillisecondsUntilHidden = TOAST_TIME;
                _tostbox.Show();
            }

        }

        public List<Reviews> getReviewInfo(string filter)
        {
            using (var db = new SQLiteConnection(sqlitedbPath))
            {
                var ReviewInfoList = new List<Reviews>();
                var result = db.Query<Review>("SELECT * FROM Review " + filter);
                foreach (var obj in result)
                {
                    ReviewInfoList.Add(new Reviews(obj.AutoId, obj.EstablishmentAutoId, obj.CreateDate, obj.Meal, obj.Cost, obj.Comments, obj.Rating, obj.ImagePath));
                }
                return ReviewInfoList;
            }
        }

    }
}
