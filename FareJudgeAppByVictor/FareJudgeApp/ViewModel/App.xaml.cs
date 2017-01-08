using System;
using System.Diagnostics;
using System.Resources;
using System.Windows;
using System.Windows.Markup;
using System.Windows.Navigation;
using Microsoft.Phone.Controls;
using Microsoft.Phone.Shell;
using FareJudgeApp.Resources;
using System.IO;
using SQLite;
using System.Threading.Tasks;
using FareJudgeApp.Model;
using Sqlite;
using Windows.Storage;
using SQLiteWinRT;
using System.Threading;

namespace FareJudgeApp
{
    public partial class App : Application
    {
        /// <summary>
        /// Provides easy access to the root frame of the Phone Application.
        /// </summary>
        /// <returns>The root frame of the Phone Application.</returns>
        public static PhoneApplicationFrame RootFrame { get; private set; }

        /// <summary>
        /// Constructor for the Application object.
        /// </summary>

        static SQLiteWinRT.Database db; //Working with SQLite 
        static ManualResetEvent DBLoaded = new ManualResetEvent(false);

        public static Task<SQLiteWinRT.Database> GetDatabaseAsync()
        {
            return Task.Run(() =>
            {
                DBLoaded.WaitOne();
                return db;
            });
        }
        public App()
        {
            // Global handler for uncaught exceptions.
            UnhandledException += Application_UnhandledException;

            // Standard XAML initialization
            InitializeComponent();

            // Phone-specific initialization
            InitializePhoneApplication();

            // Language display initialization
            InitializeLanguage();

            // Database initialization
            InitializeDatabase();

            // Show graphics profiling information while debugging.
            if (Debugger.IsAttached)
            {
                // Display the current frame rate counters.
                Application.Current.Host.Settings.EnableFrameRateCounter = true;

                // Show the areas of the app that are being redrawn in each frame.
                //Application.Current.Host.Settings.EnableRedrawRegions = true;

                // Enable non-production analysis visualization mode,
                // which shows areas of a page that are handed off to GPU with a colored overlay.
                //Application.Current.Host.Settings.EnableCacheVisualization = true;

                // Prevent the screen from turning off while under the debugger by disabling
                // the application's idle detection.
                // Caution:- Use this under debug mode only. Application that disables user idle detection will continue to run
                // and consume battery power when the user is not using the phone.
                PhoneApplicationService.Current.UserIdleDetectionMode = IdleDetectionMode.Disabled;
            }

        }
        private async void InitializeDatabase()
        {

            string dbPath = Path.Combine(Windows.Storage.ApplicationData.Current.LocalFolder.Path, "FareJudge.db");
            if (!FileExists("FareJudge.db").Result)
            {
                
                var db = new SQLiteWinRT.Database(ApplicationData.Current.LocalFolder, "FareJudge.db");
                await db.OpenAsync();
                string sql = "";
                string description = "";
                sql = @"CREATE TABLE IF NOT EXISTS 
                        Establishment ( AutoId  INTEGER PRIMARY KEY AUTOINCREMENT, 
                                        Id  TEXT, 
                                        Name  TEXT, 
                                        Type  TEXT, 
                                        Phone  TEXT, 
                                        Food  TEXT, 
                                        Location  TEXT );";
                description = "Create Establistment table";
                await ExecuteSQLStatement(db, sql, description);
                sql = @"CREATE TABLE IF NOT EXISTS
                        Review ( AutoId  INTEGER PRIMARY KEY AUTOINCREMENT,
                                EstablishmentAutoId  TEXT,
                                CreateDate  TEXT,
                                Meal  TEXT,
                                Cost  REAL,
                                Rating  INTEGER,
                                Comments  TEXT,
                                ImagePath   TEXT,
                                CONSTRAINT fk_est_AutoId FOREIGN KEY (EstablishmentAutoId) REFERENCES Establishment (AutoId) ON DELETE CASCADE
                                );";
                description = "create Review table";
                await ExecuteSQLStatement(db, sql, description);

                sql = @"INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Fla', 'Flavours of India', 'Restaurants', '(02) 6241 4558', 'American Indian/Alaska Native Foods', '25 Gribble St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Tai', 'MY Restaurant', 'Food', ' 6241 2401', 'Baby Foods', 'Kaleen Shopping Centre Maribyrnong Ave');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Sea', 'The SeaFood Kitchen', 'Nightlife', ' 6262 6889', 'Baked Products', 'Shop2/ 28 Challis St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('XXX', 'XXX Leaves Thai Restaurant', 'Shopping', ' 6299 2000', 'Beef Products', '24 Lowe St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('TAZ', 'Taze Mediterranean Cuisine', 'Bar', ' 6262 6601', 'Beverages', 'Shp 4/ 21 Genge St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('KK', 'KK Asian Noodle House', 'Breakfast', ' 6247 5145', 'Breakfast Cereals', '34 Northbourne Ave');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('EU', 'AX Cafe', 'Bruch', ' 6295 6915', 'Cereal Grains and Pasta', '4 Barker St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('123', '1234 Restaurant', 'Coffee', ' 6247 4437', 'Dairy and Egg Products', '15 Edgar St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('YES', 'YES''s Restaurant & Bar', 'Restaurants', ' 6256 9298', 'Fast Foods', '110 Benjamin Way');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Pro', 'UB Cafe The', 'Food', '6269 8810', 'Fats and Oils', 'Commonwealth Ave');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Fir', 'Fire Firestone', 'Nightlife', '6247 4447', 'Finfish and Shellfish Products', '14 Woolley St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Tak', 'Roast Inn', 'Shopping', '6257 4939', 'Fruits and Fruit Juices', '10 Woolley St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Fal', 'Pizza Snack Bar', 'Bar', '6241 2784', 'Lamb, Veal, and Game Products', 'Gwydir Sq');";
                await ExecuteSQLStatement(db, sql, description);
                // Turn on Foreign Key constraints
                sql = @"PRAGMA foreign_keys = ON";
                description = "enable foreign key constraints";
                await ExecuteSQLStatement(db, sql, description);
                DBLoaded.Set();
            }

        }

        private static async Task ExecuteSQLStatement(
                                SQLiteWinRT.Database db, string sql, string description)
        {
            try
            {
                await db.ExecuteStatementAsync(sql);
                Debug.WriteLine(description + " executed OK");
            }
            catch (Exception ex)
            {
                var result = SQLiteWinRT.Database.GetSqliteErrorCode(ex.HResult);
                throw new ApplicationException(description + " Failed with error " + result);
            }
        }
        private async Task<bool> FileExists(string fileName)
        {
            var result = false;
            try
            {
                var store = await Windows.Storage.ApplicationData.Current.LocalFolder.GetFileAsync(fileName);
                result = true;
            }
            catch
            {
                return result;
            }
            return result;

        }
        // Code to execute when the application is launching (eg, from Start)
        // This code will not execute when the application is reactivated
        private void Application_Launching(object sender, LaunchingEventArgs e)
        {
        }

        // Code to execute when the application is activated (brought to foreground)
        // This code will not execute when the application is first launched
        private void Application_Activated(object sender, ActivatedEventArgs e)
        {
        }

        // Code to execute when the application is deactivated (sent to background)
        // This code will not execute when the application is closing
        private void Application_Deactivated(object sender, DeactivatedEventArgs e)
        {
        }

        // Code to execute when the application is closing (eg, user hit Back)
        // This code will not execute when the application is deactivated
        private void Application_Closing(object sender, ClosingEventArgs e)
        {
        }

        // Code to execute if a navigation fails
        private void RootFrame_NavigationFailed(object sender, NavigationFailedEventArgs e)
        {
            if (Debugger.IsAttached)
            {
                // A navigation has failed; break into the debugger
                Debugger.Break();
            }
        }

        // Code to execute on Unhandled Exceptions
        private void Application_UnhandledException(object sender, ApplicationUnhandledExceptionEventArgs e)
        {
            if (Debugger.IsAttached)
            {
                // An unhandled exception has occurred; break into the debugger
                Debugger.Break();
            }
        }

        #region Phone application initialization

        // Avoid double-initialization
        private bool phoneApplicationInitialized = false;

        // Do not add any additional code to this method
        private void InitializePhoneApplication()
        {
            if (phoneApplicationInitialized)
                return;

            // Create the frame but don't set it as RootVisual yet; this allows the splash
            // screen to remain active until the application is ready to render.
            RootFrame = new PhoneApplicationFrame();
            RootFrame.Navigated += CompleteInitializePhoneApplication;

            // Handle navigation failures
            RootFrame.NavigationFailed += RootFrame_NavigationFailed;

            // Handle reset requests for clearing the backstack
            RootFrame.Navigated += CheckForResetNavigation;

            // Ensure we don't initialize again
            phoneApplicationInitialized = true;
        }

        // Do not add any additional code to this method
        private void CompleteInitializePhoneApplication(object sender, NavigationEventArgs e)
        {
            // Set the root visual to allow the application to render
            if (RootVisual != RootFrame)
                RootVisual = RootFrame;

            // Remove this handler since it is no longer needed
            RootFrame.Navigated -= CompleteInitializePhoneApplication;
        }

        private void CheckForResetNavigation(object sender, NavigationEventArgs e)
        {
            // If the app has received a 'reset' navigation, then we need to check
            // on the next navigation to see if the page stack should be reset
            if (e.NavigationMode == NavigationMode.Reset)
                RootFrame.Navigated += ClearBackStackAfterReset;
        }

        private void ClearBackStackAfterReset(object sender, NavigationEventArgs e)
        {
            // Unregister the event so it doesn't get called again
            RootFrame.Navigated -= ClearBackStackAfterReset;

            // Only clear the stack for 'new' (forward) and 'refresh' navigations
            if (e.NavigationMode != NavigationMode.New && e.NavigationMode != NavigationMode.Refresh)
                return;

            // For UI consistency, clear the entire page stack
            while (RootFrame.RemoveBackEntry() != null)
            {
                ; // do nothing
            }
        }

        #endregion

        // Initialize the app's font and flow direction as defined in its localized resource strings.
        //
        // To ensure that the font of your application is aligned with its supported languages and that the
        // FlowDirection for each of those languages follows its traditional direction, ResourceLanguage
        // and ResourceFlowDirection should be initialized in each resx file to match these values with that
        // file's culture. For example:
        //
        // AppResources.es-ES.resx
        //    ResourceLanguage's value should be "es-ES"
        //    ResourceFlowDirection's value should be "LeftToRight"
        //
        // AppResources.ar-SA.resx
        //     ResourceLanguage's value should be "ar-SA"
        //     ResourceFlowDirection's value should be "RightToLeft"
        //
        // For more info on localizing Windows Phone apps see http://go.microsoft.com/fwlink/?LinkId=262072.
        //
        private void InitializeLanguage()
        {
            try
            {
                // Set the font to match the display language defined by the
                // ResourceLanguage resource string for each supported language.
                //
                // Fall back to the font of the neutral language if the Display
                // language of the phone is not supported.
                //
                // If a compiler error is hit then ResourceLanguage is missing from
                // the resource file.
                RootFrame.Language = XmlLanguage.GetLanguage(AppResources.ResourceLanguage);

                // Set the FlowDirection of all elements under the root frame based
                // on the ResourceFlowDirection resource string for each
                // supported language.
                //
                // If a compiler error is hit then ResourceFlowDirection is missing from
                // the resource file.
                FlowDirection flow = (FlowDirection)Enum.Parse(typeof(FlowDirection), AppResources.ResourceFlowDirection);
                RootFrame.FlowDirection = flow;
            }
            catch
            {
                // If an exception is caught here it is most likely due to either
                // ResourceLangauge not being correctly set to a supported language
                // code or ResourceFlowDirection is set to a value other than LeftToRight
                // or RightToLeft.

                if (Debugger.IsAttached)
                {
                    Debugger.Break();
                }

                throw;
            }
        }
    }
}