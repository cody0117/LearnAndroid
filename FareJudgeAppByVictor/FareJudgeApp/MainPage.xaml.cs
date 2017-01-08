using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using Microsoft.Phone.Controls;
using Microsoft.Phone.Shell;
using System.IO;
using FareJudgeApp.Model;
using FareJudgeApp.ViewModel;
using System.Threading.Tasks;
using Windows.Devices.Geolocation;
using System.IO.IsolatedStorage;
using System.Net.Http;
using Newtonsoft.Json;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;
using FareJudgeApp.GlobalClass;
using SQLite;
using FareJudgeApp.DbHelper;
using System.Text;
using System.Web;
using System.Net.Http.Headers;
using Coding4Fun.Toolkit.Controls;

namespace FareJudgeApp
{
    public partial class MainPage : PhoneApplicationPage
    {
        const int TOAST_TIME = 2000;
        private bool _isIdInput;
        private bool _isNameInput;
        private bool _isTypeInput;
        private DbHelper.SqlLiteDbHelper _db = new DbHelper.SqlLiteDbHelper();
        private ToastPrompt ttShow = new ToastPrompt();
        string dbPath = Path.Combine(Windows.Storage.ApplicationData.Current.LocalFolder.Path, "FareJudge.db");
        List<Establishments> EstablishmentInfoList = new List<Establishments>();

        public MainPage()
        {
            InitializeComponent();
        }
        private void SaveButton_Click(object sender, EventArgs e)
        {
            if (validInput())
            {
            
                if (MessageBox.Show("Are you sure you want to saved?? ","Save ?", MessageBoxButton.OKCancel) == MessageBoxResult.OK)
                {
                    using (var db = new SQLite.SQLiteConnection(dbPath))
                    {
                        db.RunInTransaction(() =>
                        {
                            db.Insert(new Establishment()
                            {
                                Id = tbEstId.Text.ToString().Trim(),
                                Name = tbEstName.Text.ToString().Trim(),
                                Type = tbEstType.Text.ToString().Trim(),
                                Food = tbEstFood.Text.ToString().Trim(),
                                Phone = tbEstPhone.Text.ToString().Trim(),
                                Location = tbEstLocality.Text.ToString().Trim(),
                            });
                        }

                       );
                    }
                    NavigationService.Navigate(new Uri("/MainPage.xaml?item=3",UriKind.RelativeOrAbsolute));
                }

            }
            else
            {
                string missingField = Environment.NewLine;
                if (!(_isIdInput)) { missingField += "User Id" + Environment.NewLine; }
                if (!(_isNameInput)) { missingField += "Establishment Name" + Environment.NewLine; }
                if (!(_isTypeInput)) { missingField += "Type of Establishment" + Environment.NewLine; }
                MessageBox.Show("The following field is required" + missingField, "missing content", MessageBoxButton.OK);
            }


        }
        private void CancelButton_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("All fields will be cleared", "Clear", MessageBoxButton.OKCancel) == MessageBoxResult.OK)
            {
                tbEstId.Text = Environment.NewLine;
                tbEstName.Text = Environment.NewLine;
                tbEstFood.Text = Environment.NewLine;
                tbEstType.Text = Environment.NewLine;
                tbEstPhone.Text = Environment.NewLine;
                tbEstLocality.Text = Environment.NewLine;
            }
        }
        private void DeleteButton_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Delete all ??", "Delete item", MessageBoxButton.OKCancel) == MessageBoxResult.OK)
            {
                string EstablishmentNameFilter = "";
                EstablishmentNameFilter = " WHERE Name like '%" + tbFilter.Text.Trim().ToString() + "%'";
                _db.deleteEstablishment(EstablishmentNameFilter);
                FetchEstablishment("");
            }
        }
        private void UploadButton_Click(object sender, EventArgs e)
        {
            List<Establishments> AllEstablishment = new List<Establishments>();
            List<User> AllMyEstablishment = new List<User>();
            using (var _db = new SQLiteConnection(dbPath))
            {
                var result = _db.Query<Establishment>("select * from Establishment ");
                foreach (var obj in result)
                {
                    AllEstablishment.Add(new Establishments(obj.AutoId, obj.Id, obj.Name, obj.Type, obj.Food, obj.Phone, obj.Location));
                }
            }
            AllMyEstablishment.Add(new User("ht342", AllEstablishment));
            string json = "\"" + JsonConvert.SerializeObject(AllMyEstablishment).ToString().Replace("\"", "'") + "\"";

            var webClient = new WebClient();
            Uri uri = new Uri("http://192.168.10.117:53583/api/Establishment");
            webClient.Headers[HttpRequestHeader.ContentType] = "application/json";
            webClient.UploadStringCompleted += this.sendPostCompleted;
            webClient.UploadStringAsync(uri, "POST", json.ToString());
            Console.WriteLine("UploadStarted");
        }

        private void sendPostCompleted(object sender, UploadStringCompletedEventArgs e)
        {
            // Handle result

            if (e.Result.ToString() != null)
            {
                List<Response> response = JsonConvert.DeserializeObject<List<Response>>(e.Result.ToString().Replace("\"", ""));
                if (response.Count > 0)
                {
                    tbkUploadResponseCode.Text = response[0].uploadResponseCode;
                    tbkUserId.Text = response[0].userId;
                    tbkNumber.Text = response[0].number.ToString();
                    tbkName.Text = response[0].name;

                    // show toast
                    ttShow.Title = response[0].uploadResponseCode;
                    ttShow.Message = response[0].message;
                    ttShow.MillisecondsUntilHidden = TOAST_TIME;
                    ttShow.Show();
                }

            }
        }

        private void MainPivot_LoadedPivotItem(object sender, PivotItemEventArgs e)
        {
            FetchEstablishment("");
           // ApplicationBar.IsVisible = (e.Item == pivotItem_new);
            switch (e.Item.Name.ToString())
            {
                case "pivotItem_new":
                    ApplicationBar = new ApplicationBar();
                    ApplicationBarIconButton SaveButton = new ApplicationBarIconButton();
                    SaveButton.IconUri = new Uri("/Images/save.png", UriKind.Relative);
                    SaveButton.Text = "save";
                    ApplicationBar.Buttons.Add(SaveButton);
                    SaveButton.Click += new EventHandler(SaveButton_Click);
                    ApplicationBarIconButton CancelButton = new ApplicationBarIconButton();
                    CancelButton.IconUri = new Uri("/Images/cancel.png", UriKind.Relative);
                    CancelButton.Text = "cancel";
                    ApplicationBar.Buttons.Add(CancelButton);
                    CancelButton.Click += new EventHandler(CancelButton_Click);
                    break;
                case "pivotItem_list":
                    ApplicationBar = new ApplicationBar();
                    ApplicationBarIconButton DeleteButton = new ApplicationBarIconButton();
                    DeleteButton.IconUri = new Uri("/Images/delete.png", UriKind.Relative);
                    DeleteButton.Text = "save";
                    ApplicationBar.Buttons.Add(DeleteButton);
                    DeleteButton.Click += new EventHandler(DeleteButton_Click);
                    FetchEstablishment("");

                    break;
                case "pivotItem_upload":
                    ApplicationBar = new ApplicationBar();
                    ApplicationBarIconButton UploadButton = new ApplicationBarIconButton();
                    UploadButton.IconUri = new Uri("/Images/upload.png", UriKind.Relative);
                    UploadButton.Text = "save";
                    ApplicationBar.Buttons.Add(UploadButton);
                    UploadButton.Click += new EventHandler(UploadButton_Click);
                    break;
                default:

                    break;
            }


        }
        private bool validInput()
        {
            try
            {
                _isIdInput = true;
                _isNameInput = true;
                _isTypeInput = true;
                if (isEmpty(tbEstId.Text.ToString().Trim())) { _isIdInput = false; }
                if (isEmpty(tbEstName.Text.ToString().Trim())) { _isNameInput = false; }
                if (isEmpty(tbEstType.Text.ToString().Trim())) { _isTypeInput = false; }
                if ((!(_isIdInput)) || (!(_isNameInput)) || (!(_isTypeInput)))
                { return false; }
                else
                { return true; }
            }
            catch
            { return false; }

        }

        private bool isEmpty(string s)
        {
            return (string.IsNullOrEmpty(s.ToString().Trim()));
        }

        protected override void OnNavigatedTo(System.Windows.Navigation.NavigationEventArgs e)
        {
            if (MainPivot.SelectedItem == pivotItem_list)
            {
                FetchEstablishment(tbFilter.Text.Trim().ToString());
            }
        }

        private void AskForUseLocation()
        {
            if (IsolatedStorageSettings.ApplicationSettings.Contains("LocationConsent"))
            {
                if ((bool)IsolatedStorageSettings.ApplicationSettings["LocationConsent"] == true)
                    return;
                else
                {
                    bool resultBool = false;
                    MessageBoxResult result = MessageBox.Show("Can I use your position?", "location", MessageBoxButton.OKCancel);
                    if (result == MessageBoxResult.OK) { resultBool = true; }
                    IsolatedStorageSettings.ApplicationSettings["LocationConsent"] = resultBool;
                    IsolatedStorageSettings.ApplicationSettings.Save();
                }
            }
            else
            {
                bool resultBool = false;
                MessageBoxResult result = MessageBox.Show("can I use your position?", "location", MessageBoxButton.OKCancel);
                if (result == MessageBoxResult.OK) { resultBool = true; }
                IsolatedStorageSettings.ApplicationSettings["LocationConsent"] = resultBool;
                IsolatedStorageSettings.ApplicationSettings.Save();
            }
        }

        private async void Button_Click(object sender, RoutedEventArgs e)
        {
            AskForUseLocation();
            if ((bool)IsolatedStorageSettings.ApplicationSettings["LocationConsent"] != true)
            {
                // The user has opted out of Location.
                MessageBox.Show("please approve to use location service ", "alert", MessageBoxButton.OK);
                return;
            }
            Geolocator geolocator = new Geolocator();
            geolocator.DesiredAccuracyInMeters = 50;
            geolocator.DesiredAccuracy = Windows.Devices.Geolocation.PositionAccuracy.High;
            try
            {
                Geoposition geoposition = await geolocator.GetGeopositionAsync(
                                   maximumAge: TimeSpan.FromTicks(1),
                                   timeout: TimeSpan.FromSeconds(10)
                                   );
                RetrieveGeolocation(geoposition.Coordinate.Latitude.ToString(), geoposition.Coordinate.Longitude.ToString());
            }
            catch (Exception ex)
            {
                if ((uint)ex.HResult == 0x80004004)
                {
                    MessageBox.Show("location service is disabled in phone settings", "alert", MessageBoxButton.OK);
                }
                else
                {
                    MessageBox.Show("something goes wrong, reboot your device and try again", "alert", MessageBoxButton.OK);
                }

            }
        }

        public async void RetrieveGeolocation(string lati, string longi)
        {

            string uri = "http://dev.virtualearth.net/REST/v1/Locations/{0},{1}?o=json&key={2}";
            string requestUri = string.Format(uri,
                HttpUtility.UrlEncode(lati),
                HttpUtility.UrlEncode(longi),
                "Ag3Pug2Awjb16oJvcJFLFizT8KmpDjQayhT5xMWcZJIpEEyFAJbmB0QGeXzdFrdF");

            HttpClient client = new HttpClient();
            var response = await client.GetAsync(requestUri);
            response.EnsureSuccessStatusCode();
            var result = await response.Content.ReadAsAsync<BingLocationResult>();
            if (result.resourceSets.Length > 0)
            {
                if (result.resourceSets[0].resources.Length > 0)
                {
                    if (!string.IsNullOrEmpty(result.resourceSets[0].resources[0].name))
                    {
                        tbEstLocality.Text = Convert.ToString(result.resourceSets[0].resources[0].name).ToString().Trim();
                    }
                    else
                    {
                        tbEstLocality.Text = "cannot get location name";
                    }

                }
            }

        }

        private void FetchEstablishment(string filter)
        {
            string EstablishmentNameFilter = "";
            if (filter.Trim().Length == 0)
            {
                EstablishmentNameFilter = " WHERE 1=1";
            }
            else
            {
                EstablishmentNameFilter = " WHERE Name like '%" + filter.Trim() + "%'";
            }

            EstablishmentInfoList = _db.getEstablishmentInfo(EstablishmentNameFilter);
            List<AlphaKeyGroup<Establishments>> DataSource = AlphaKeyGroup<Establishments>.CreateGroups(EstablishmentInfoList,
                System.Threading.Thread.CurrentThread.CurrentUICulture,
                (Establishments s) => { return s.Name; }, true);
            EstablishmentList.ItemsSource = DataSource;

        }

        private void tbFilter_TextChanged(object sender, TextChangedEventArgs e)
        {
            FetchEstablishment(tbFilter.Text.Trim().ToString());
        }

        private void ContentPanel_Tap(object sender, System.Windows.Input.GestureEventArgs e)
        {

            var _selectedItem = (sender as StackPanel).DataContext as Establishments;
            if (_selectedItem != null)
            {
                var _autoId = _selectedItem.AutoId;
                NavigationService.Navigate(new Uri("/View/Details.xaml?autoId=" + _autoId, UriKind.Relative));
            }

        }

    }


}