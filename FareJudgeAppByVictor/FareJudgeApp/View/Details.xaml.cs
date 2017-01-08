using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using Microsoft.Phone.Controls;
using Microsoft.Phone.Shell;
using FareJudgeApp.ViewModel;
using FareJudgeApp.DbHelper;

namespace FareJudgeApp.View
{
    public partial class Details : PhoneApplicationPage
    {
        private DbHelper.SqlLiteDbHelper db = new DbHelper.SqlLiteDbHelper();
        private int currentAutoId;
        List<Establishments> EstablishmentInfoList = new List<Establishments>();
        public Details()
        {
            InitializeComponent();

        }
        protected override void OnNavigatedTo(System.Windows.Navigation.NavigationEventArgs e)
        {
            base.OnNavigatedTo(e);
            string parameterValue = NavigationContext.QueryString["autoId"];
            currentAutoId = Convert.ToInt32(parameterValue);
            if (DetailsPivot.SelectedItem == pivotItem_review)
            {
                resultListBox.ItemsSource = FetchReviewInfo(currentAutoId);
            }
        }

        private void PhoneApplicationPage_Loaded(object sender, RoutedEventArgs e)
        {
            string parameter = string.Empty;
            if (NavigationContext.QueryString.TryGetValue("autoId", out parameter))
            {
                string EstablishmentAutoIdFilter = " WHERE autoId = '" + parameter + "'";
                EstablishmentInfoList = db.getEstablishmentInfo(EstablishmentAutoIdFilter);
                if (EstablishmentInfoList.Count > 0)
                {
                    lbEstId.Text = EstablishmentInfoList[0].Id;
                    lbEstName.Text = EstablishmentInfoList[0].Name;
                    lbEstType.Text = EstablishmentInfoList[0].Type;
                    lbEstPhone.Text = EstablishmentInfoList[0].Phone;
                    lbEstLocality.Text = EstablishmentInfoList[0].Location;
                }

            }
        }

        private void DeleteButton_Click(object sender, EventArgs e)
        {
            string EstablishmentIdFilter = "";
            EstablishmentIdFilter = " WHERE autoId = " + currentAutoId;
            db.deleteEstablishment(EstablishmentIdFilter);
            System.Threading.ThreadPool.QueueUserWorkItem(obj =>
            {
                System.Threading.Thread.Sleep(2000);

                Dispatcher.BeginInvoke(() =>
                {
                    NavigationService.GoBack();
                });
            });


        }
        private void AddReviewButton_Click(object sender, EventArgs e)
        {
            NavigationService.Navigate(new Uri("/View/AddReview.xaml?autoId=" + currentAutoId + "&Name=" + lbEstName.Text.ToString(), UriKind.Relative));
        }

        private void DetailsPivot_LoadedPivotItem(object sender, PivotItemEventArgs e)
        {
            switch (e.Item.Name.ToString())
            {
                case "pivotItem_detail":
                    ApplicationBar = new ApplicationBar();
                    ApplicationBarIconButton DeleteButton = new ApplicationBarIconButton();
                    DeleteButton.IconUri = new Uri("/Images/delete.png", UriKind.Relative);
                    DeleteButton.Text = "save";
                    ApplicationBar.Buttons.Add(DeleteButton);
                    DeleteButton.Click += new EventHandler(DeleteButton_Click);
                    break;
                case "pivotItem_review":
                    ApplicationBar = new ApplicationBar();
                    ApplicationBarIconButton AddReviewButton = new ApplicationBarIconButton();
                    AddReviewButton.IconUri = new Uri("/Images/add.png", UriKind.Relative);
                    AddReviewButton.Text = "save";
                    ApplicationBar.Buttons.Add(AddReviewButton);
                    AddReviewButton.Click += new EventHandler(AddReviewButton_Click);
                    resultListBox.ItemsSource = FetchReviewInfo(currentAutoId);
                    break;
                default:

                    break;
            }
        }
        private List<Reviews> FetchReviewInfo(int autoId)
        {
            List<Reviews> ReviewInfoList = new List<Reviews>();
            ReviewInfoList = db.getReviewInfo("WHERE EstablishmentAutoId = " + autoId);
            return ReviewInfoList;
        }


    }

}