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
        const int TOAST_HIDDEN_TIME = 2000;
        private bool isIdInput;
        private bool isNameInput;
        private bool isTypeInput;
        private DbHelper.DbHelper db = new DbHelper.DbHelper();
        private ToastPrompt ttShow = new ToastPrompt();
        string dbPath = Path.Combine(Windows.Storage.ApplicationData.Current.LocalFolder.Path, "FareJudge.db");
        List<EstablishmentInfo> EstablishmentInfoList = new List<EstablishmentInfo>();

        public MainPage()
        {
            InitializeComponent();
        }
        private void SaveButton_Click(object sender, EventArgs e)
        {
            if (validInput())
            {
                string inputContent = Environment.NewLine;
                inputContent += "id: " + tbEstId.Text.ToString().Trim() + Environment.NewLine;
                inputContent += "name: " + tbEstName.Text.ToString().Trim() + Environment.NewLine;
                inputContent += "type: " + tbEstType.Text.ToString().Trim() + Environment.NewLine;
                inputContent += "food served: " + tbEstFood.Text.ToString().Trim() + Environment.NewLine;
                inputContent += "phone: " + tbEstPhone.Text.ToString().Trim() + Environment.NewLine;
                inputContent += "location: " + tbEstLocality.Text.ToString().Trim() + Environment.NewLine;

                if (MessageBox.Show("the following contents will be saved" + inputContent, "save record", MessageBoxButton.OKCancel) == MessageBoxResult.OK)
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
                }

            }
            else
            {
                string missingField = Environment.NewLine;
                if (!(isIdInput)) { missingField += "id" + Environment.NewLine; }
                if (!(isNameInput)) { missingField += "name" + Environment.NewLine; }
                if (!(isTypeInput)) { missingField += "type" + Environment.NewLine; }
                MessageBox.Show("the following field(s) is required" + missingField, "missing content", MessageBoxButton.OK);
            }


        }
        private void CancelButton_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("all fields will be cleared", "clear fields", MessageBoxButton.OKCancel) == MessageBoxResult.OK)
            {
                tbEstId.Text = "";
                tbEstName.Text = "";
                tbEstFood.Text = "";
                tbEstType.Text = "";
                tbEstPhone.Text = "";
                tbEstLocality.Text = "";
            }
        }
        private void DeleteButton_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("delete all listed record(s)?", "delete item", MessageBoxButton.OKCancel) == MessageBoxResult.OK)
            {
                string EstablishmentNameFilter = "";
                EstablishmentNameFilter = " WHERE Name like '%" + tbFilter.Text.Trim().ToString() + "%'";
                db.deleteEstablishment(EstablishmentNameFilter);
                FetchEstablishment("");
            }
        }
        private void UploadButton_Click(object sender, EventArgs e)
        {
            List<EstablishmentInfo> AllEstablishment = new List<EstablishmentInfo>();
            List<User> AllMyEstablishment = new List<User>();
            using (var db = new SQLiteConnection(dbPath))
            {
                var result = db.Query<Establishment>("select * from Establishment ");
                foreach (var obj in result)
                {
                    AllEstablishment.Add(new EstablishmentInfo(obj.AutoId, obj.Id, obj.Name, obj.Type, obj.Food, obj.Phone, obj.Location));
                }
            }
            AllMyEstablishment.Add(new User("pp331", AllEstablishment));
            string json = "\"" + JsonConvert.SerializeObject(AllMyEstablishment).ToString().Replace("\"", "'") + "\"";

            var webClient = new WebClient();
            Uri uri = new Uri("http://192.168.9.53:53583/api/Establishment/");
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
                    ttShow.MillisecondsUntilHidden = TOAST_HIDDEN_TIME;
                    ttShow.Show();
                }

            }
        }

        private void MainPivot_LoadedPivotItem(object sender, PivotItemEventArgs e)
        {
            FetchEstablishment("");
            if (EstablishmentInfoList.Count == 0)
            {
                using (var db = new SQLite.SQLiteConnection(dbPath))
                {
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "a1", Name = "a1", Type = "a1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "a2", Name = "a2", Type = "a2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "b1", Name = "b1", Type = "b1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "b2", Name = "b2", Type = "b2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "c1", Name = "c1", Type = "c1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "c2", Name = "c2", Type = "c2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "d1", Name = "d1", Type = "d1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "d2", Name = "d2", Type = "d2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "e1", Name = "e1", Type = "e1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "e2", Name = "e2", Type = "e2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "f1", Name = "f1", Type = "f1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "f2", Name = "f2", Type = "f2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "g1", Name = "g1", Type = "g1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "g2", Name = "g2", Type = "g2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "h1", Name = "h1", Type = "h1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "h2", Name = "h2", Type = "h2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "i1", Name = "i1", Type = "i1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "i2", Name = "i2", Type = "i2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "j1", Name = "j1", Type = "j1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "j2", Name = "j2", Type = "j2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "ab1", Name = "ab1", Type = "a1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "ab2", Name = "ab2", Type = "a2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "bc1", Name = "bc1", Type = "b1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "bc2", Name = "bc2", Type = "b2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "cd1", Name = "cd1", Type = "c1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "cd2", Name = "cd2", Type = "c2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "de1", Name = "de1", Type = "d1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "de2", Name = "de2", Type = "d2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "ef1", Name = "ef1", Type = "e1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "ef2", Name = "ef2", Type = "e2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "fg1", Name = "fg1", Type = "f1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "fg2", Name = "fg2", Type = "f2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "gh1", Name = "gh1", Type = "g1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "gh2", Name = "gh2", Type = "g2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "hi1", Name = "hi1", Type = "h1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "hi2", Name = "hi2", Type = "h2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "ij1", Name = "ij1", Type = "i1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "ij2", Name = "ij2", Type = "i2", Food = "see food", Phone = "222", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "jk1", Name = "jk1", Type = "j1", Food = "see food", Phone = "111", Location = "" }); });
                    db.RunInTransaction(() => { db.Insert(new Establishment() { Id = "jk2", Name = "jk2", Type = "j2", Food = "see food", Phone = "222", Location = "" }); });
                }
            }
            //ApplicationBar.IsVisible = (e.Item == pivotItem_new);
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
                isIdInput = true;
                isNameInput = true;
                isTypeInput = true;
                if (isEmpty(tbEstId.Text.ToString().Trim())) { isIdInput = false; }
                if (isEmpty(tbEstName.Text.ToString().Trim())) { isNameInput = false; }
                if (isEmpty(tbEstType.Text.ToString().Trim())) { isTypeInput = false; }
                if ((!(isIdInput)) || (!(isNameInput)) || (!(isTypeInput)))
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
                    MessageBoxResult result = MessageBox.Show("can I use your position?", "location", MessageBoxButton.OKCancel);
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

            EstablishmentInfoList = db.getEstablishmentInfo(EstablishmentNameFilter);
            List<AlphaKeyGroup<EstablishmentInfo>> DataSource = AlphaKeyGroup<EstablishmentInfo>.CreateGroups(EstablishmentInfoList,
                System.Threading.Thread.CurrentThread.CurrentUICulture,
                (EstablishmentInfo s) => { return s.Name; }, true);
            EstablishmentList.ItemsSource = DataSource;

        }

        private void tbFilter_TextChanged(object sender, TextChangedEventArgs e)
        {
            FetchEstablishment(tbFilter.Text.Trim().ToString());
        }

        private void ContentPanel_Tap(object sender, System.Windows.Input.GestureEventArgs e)
        {

            var _selectedItem = (sender as StackPanel).DataContext as EstablishmentInfo;
            if (_selectedItem != null)
            {
                var _autoId = _selectedItem.AutoId;
                NavigationService.Navigate(new Uri("/View/Details.xaml?autoId=" + _autoId, UriKind.Relative));
            }

        }

    }


}