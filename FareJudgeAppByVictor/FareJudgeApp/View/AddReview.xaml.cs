using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using Microsoft.Phone.Controls;
using Microsoft.Phone.Shell;
using Coding4Fun.Toolkit.Controls;
using System.IO;
using FareJudgeApp.Model;
using System.Windows.Media.Imaging;
using System.Windows.Media;
using Microsoft.Phone.Tasks;
using System.IO.IsolatedStorage;

namespace FareJudgeApp.View
{
    public partial class AddReview : PhoneApplicationPage
    {
        const int TOAST_HIDDEN_TIME = 2000;
        private int currentEstablishmentAutoId;
        private string currentEstablishmentName;
        private bool isDateInput;
        private bool isMealInput;
        private bool isRatingInput;
        private int RatingMark;
        private DbHelper.SqlLiteDbHelper db = new DbHelper.SqlLiteDbHelper();
        private ToastPrompt ttShow = new ToastPrompt();
        string dbPath = Path.Combine(Windows.Storage.ApplicationData.Current.LocalFolder.Path, "FareJudge.db");
        BitmapImage ColorStar;
        BitmapImage BlackStar;


        public AddReview()
        {
            InitializeComponent();
            string parameterName = string.Empty;
            ColorStar = new BitmapImage(new Uri("/Images/star.png", UriKind.Relative));
            BlackStar = new BitmapImage(new Uri("/Images/black-star.png", UriKind.Relative));
            ApplicationBar = new ApplicationBar();
            ApplicationBarIconButton TakePhotoButton = new ApplicationBarIconButton();
            TakePhotoButton.IconUri = new Uri("/Images/camera.png", UriKind.Relative);
            TakePhotoButton.Text = "save";
            ApplicationBar.Buttons.Add(TakePhotoButton);
            //TakePhotoButton.Click += new EventHandler(TakePhotoButton_Click);
            ApplicationBarIconButton SaveReviewButton = new ApplicationBarIconButton();
            SaveReviewButton.IconUri = new Uri("/Images/save.png", UriKind.Relative);
            SaveReviewButton.Text = "save";
            ApplicationBar.Buttons.Add(SaveReviewButton);
            SaveReviewButton.Click += new EventHandler(SaveReviewButton_Click);

        }
        protected override void OnNavigatedTo(System.Windows.Navigation.NavigationEventArgs e)
        {
            base.OnNavigatedTo(e);
            string parameterAutoId = NavigationContext.QueryString["autoId"];
            currentEstablishmentAutoId = Convert.ToInt32(parameterAutoId);
            string parameterName = NavigationContext.QueryString["Name"];
            currentEstablishmentName = Convert.ToString(parameterName);

            PageTitle.Text = currentEstablishmentName;

        }
        //public void TakePhotoButton_Click(object sender, EventArgs e)
        //{
        //    CameraCaptureTask cameraCaptureTask;
        //    cameraCaptureTask = new CameraCaptureTask();
        //    cameraCaptureTask.Completed += new EventHandler<PhotoResult>(cameraCaptureTask_Completed);

        //    cameraCaptureTask.Show();
        //}

        //void cameraCaptureTask_Completed(object sender, PhotoResult e)
        //{
        //    if (null != e.ChosenPhoto && e.TaskResult == TaskResult.OK)
        //    {
        //        string datetime = DateTime.Now.ToString("yyyyMMdd_HHmmss");
        //        var image = new BitmapImage();
        //        image.SetSource(e.ChosenPhoto);
        //        SaveImageToIsolatedStorage(image, datetime + ".jpg");

        //    }
        //}
        ////public void SaveImageToIsolatedStorage(BitmapImage image, string fileName)
        //{
        //    using (var isolatedStorage = IsolatedStorageFile.GetUserStoreForApplication())
        //    {
        //        if (isolatedStorage.FileExists(fileName))
        //            isolatedStorage.DeleteFile(fileName);

        //        var fileStream = isolatedStorage.CreateFile(fileName);
        //        if (image != null)
        //        {
        //            var wb = new WriteableBitmap(image);
        //            wb.SaveJpeg(fileStream, wb.PixelWidth, wb.PixelHeight, 0, 100);
        //        }
        //        fileStream.Close();
        //        imgBox.Source = new BitmapImage(new Uri(fileStream.Name.ToString(), UriKind.Absolute));
        //        tbImgPath.Text = fileStream.Name.ToString();
        //    }
            
        //}
        public void SaveReviewButton_Click(object sender, EventArgs e)
        {
            if (validInput())
            {
                if (MessageBox.Show("Save Review?", "Save it", MessageBoxButton.OKCancel) == MessageBoxResult.OK)
                {
                    using (var db = new SQLite.SQLiteConnection(dbPath))
                    {
                        db.RunInTransaction(() =>
                        {
                            db.Insert(new Review()
                            {
                                EstablishmentAutoId = currentEstablishmentAutoId,
                                CreateDate = Convert.ToDateTime(dpCreateDate.Value),
                                Meal = tbMeal.Text.ToString(),
                                Cost = Convert.ToDouble(tbCost.Text),
                                Comments = tbComments.Text.ToString(),
                                Rating = RatingMark = 2,
                               // ImagePath = tbImgPath.Text.ToString()
                            });
                        }
                            );
                    }
                    ttShow.Title = "Review Saved: ";
                    ttShow.Message = "Well Done";
                    ttShow.MillisecondsUntilHidden = TOAST_HIDDEN_TIME;
                    ttShow.Show();
                    //System.Threading.ThreadPool.QueueUserWorkItem(obj =>
                    //{
                    //    System.Threading.Thread.Sleep(5000);

                    //    Dispatcher.BeginInvoke(() =>
                    //    {
                           NavigationService.GoBack();
                     //   });
                    //});

                }
            }
            else
            {
                string missingField = Environment.NewLine;
                if (!(isDateInput)) { missingField += "Date" + Environment.NewLine; }
                if (!(isMealInput)) { missingField += "Meal" + Environment.NewLine; }
                if (!(isRatingInput)) { missingField += "Rating" + Environment.NewLine; }
                MessageBox.Show("The following are required" + missingField, "missing", MessageBoxButton.OK);
            }

        }

        private bool validInput()
        {
            isDateInput = true;
            isMealInput = true;
            isRatingInput = true;
            try
            {

                if (String.IsNullOrEmpty(dpCreateDate.ValueString.Trim().ToString()))
                {
                    isDateInput = false;
                }
                if (String.IsNullOrEmpty(tbMeal.Text.Trim().ToString()))
                {
                    isMealInput = false;
                }
                if (RatingMark == 0)
                {
                    isRatingInput = false;
                }
                if ((!(isDateInput)) || (!(isMealInput)) || (!(isRatingInput)))
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            catch
            {
                return false;
            }

        }
        private void star_1_MouseLeftButtonDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            star_1.Source = ColorStar;
            star_2.Source = BlackStar;
            star_3.Source = BlackStar;
            star_4.Source = BlackStar;
            star_5.Source = BlackStar;
            RatingMark = 1;
        }
        private void star_2_MouseLeftButtonDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            star_1.Source = ColorStar;
            star_2.Source = ColorStar;
            star_3.Source = BlackStar;
            star_4.Source = BlackStar;
            star_5.Source = BlackStar;
            RatingMark = 2;
        }
        private void star_3_MouseLeftButtonDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            star_1.Source = ColorStar;
            star_2.Source = ColorStar;
            star_3.Source = ColorStar;
            star_4.Source = BlackStar;
            star_5.Source = BlackStar;
            RatingMark = 3;
        }
        private void star_4_MouseLeftButtonDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            star_1.Source = ColorStar;
            star_2.Source = ColorStar;
            star_3.Source = ColorStar;
            star_4.Source = ColorStar;
            star_5.Source = BlackStar;
            RatingMark = 4;
        }
        private void star_5_MouseLeftButtonDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            star_1.Source = ColorStar;
            star_2.Source = ColorStar;
            star_3.Source = ColorStar;
            star_4.Source = ColorStar;
            star_5.Source = ColorStar;
            RatingMark = 5;
        }

        private void dpCreateDate_ValueChanged(object sender, DateTimeValueChangedEventArgs e)
        {
            if (DateTime.Compare(e.NewDateTime.Value, DateTime.Today) > 0)
            {
                MessageBox.Show("you cannot choose the date after today", "date", MessageBoxButton.OK);
                dpCreateDate.Value = e.OldDateTime.Value;
            }
        }

    }
}