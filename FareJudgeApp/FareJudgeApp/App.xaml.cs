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

        static SQLiteWinRT.Database db;
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
                db = new SQLiteWinRT.Database(ApplicationData.Current.LocalFolder, "FareJudge.db");
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
                description = "create Establistment table";
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
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Tai', 'Tai Pan Restaurant', 'Food', '(02) 6241 2401', 'Baby Foods', 'Kaleen Shopping Centre Maribyrnong Ave');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('The', 'The East Kitchen', 'Nightlife', '(02) 6262 6889', 'Baked Products', 'Shop2/ 28 Challis St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Lim', 'Lime Leaves Thai Restaurant', 'Shopping', '(02) 6299 2000', 'Beef Products', '24 Lowe St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Taz', 'Taze Mediterranean Cuisine', 'Bar', '(02) 6262 6601', 'Beverages', 'Shp 4/ 21 Genge St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Civ', 'Civic Asian Noodle House', 'Breakfast', '(02) 6247 5145', 'Breakfast Cereals', '34 Northbourne Ave');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('E.U', 'E.U Cafe', 'Bruch', '(02) 6295 6915', 'Cereal Grains and Pasta', '4 Barker St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('260', '2602 Restaurant Ainslie', 'Coffee', '(02) 6247 4437', 'Dairy and Egg Products', '15 Edgar St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Ben', 'Benjamin''s Restaurant & Bar', 'Restaurants', '(02) 6256 9298', 'Fast Foods', '110 Benjamin Way');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Pro', 'Promenade Cafe The', 'Food', '(02) 6269 8810', 'Fats and Oils', 'Commonwealth Ave');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Fir', 'Firestone', 'Nightlife', '(02) 6247 4447', 'Finfish and Shellfish Products', '14 Woolley St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Tak', 'Tak Kee Roast Inn', 'Shopping', '(02) 6257 4939', 'Fruits and Fruit Juices', '10 Woolley St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Kal', 'Kaleen Pizza Snack Bar', 'Bar', '(02) 6241 2784', 'Lamb, Veal, and Game Products', 'Gwydir Sq');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Hog', 'Hog''s Breath Cafe', 'Breakfast', '(02) 6257 8501', 'Legumes and Legume Products', 'Bailey''s Cnr, London Cct');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Lak', 'Lakeside Chinese Restaurant', 'Bruch', '(02) 6293 1838', 'Meals, Entrees, and Side Dishes', '232 Cowlieshaw St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Hil', 'Hill Station Historical Property', 'Coffee', '(02) 6260 1393', 'Nut and Seed Products', '51 Sheppard St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Dea', 'Deakin Thai Cuisine', 'Restaurants', '(02) 6260 3100', 'Pork Products', 'Duff Pl');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('The', 'The Maram', 'Food', '(02) 6281 4896', 'Poultry Products', 'Gardside St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Alt', 'Alto Restaurant', 'Nightlife', '(02) 6247 5518', 'Restaurant Foods', 'Level 4, Telstra Tower Black Mountain');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Taj', 'Taj Agra', 'Shopping', '(02) 6251 7747', 'Sausages and Luncheon Meats', 'Cnr Josephson & Luxton Sts');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Vas', 'Vasco''s Portuguese Charcoal Grill', 'Bar', '(02) 6232 7034', 'Snacks', '46 Giles St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('The', 'The Waterfront Restaurant', 'Breakfast', '(02) 6262 3299', 'Soups, Sauces, and Gravies', '51a Strayleaf Crs');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Tha', 'Thai Ayutthaya', 'Bruch', '(02) 6253 3151', 'Spices and Herbs', '2/ 84 Emu Bank Drv');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Bar', 'Barocca', 'Coffee', '(02) 6248 0253', 'Sweets', 'Cnr Marcus Clarke St & Barry Drv');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Hap', 'Happy''s Chinese Restaurant', 'Restaurants', '(02) 6249 7015', 'Vegetables and Vegetable Products', 'Garema Pl');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('The', 'The Fellows Bar & Cafe', 'Food', '(02) 6125 5289', 'American Indian/Alaska Native Foods', '1 Balmain Crs');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('The', 'The First Floor Restaurant & Bar', 'Nightlife', '(02) 6260 6311', 'Baby Foods', 'Green Square, Jardine St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Min', 'Ming''s Restaurant', 'Shopping', '(02) 6282 9799', 'Baked Products', '7 Botany St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Fam', 'Family Food Court Restaurant', 'Bar', '(02) 6247 2477', 'Beef Products', '28 Woolley St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Mat', 'Matador Restaurant', 'Breakfast', '(02) 6162 0889', 'Beverages', '5 Narupai St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Eth', 'Ethiopian Cuisine Fekerte''s', 'Bruch', '(02) 6262 5799', 'Breakfast Cereals', '74/ 2 Cape St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Kin', 'King Fook', 'Coffee', '(02) 6258 1877', 'Cereal Grains and Pasta', '43 Kesteven St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Tea', 'Teatro Vivaldi Restaurant', 'Restaurants', '(02) 6257 2718', 'Dairy and Egg Products', 'University Ave');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Div', 'Diversity of Manuka', 'Food', '(02) 6260 7398', 'Fast Foods', '36- 38 Franklin St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Wat', 'Water''s Edge Restaurant', 'Nightlife', '(02) 6273 5066', 'Fats and Oils', '1 Commonwealth Pl');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Han', 'Hangari Kimchi', 'Shopping', '(02) 6248 7705', 'Finfish and Shellfish Products', '19 Woolley St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Pis', 'Pistachio Dining at Torrens', 'Bar', '(02) 6286 2966', 'Fruits and Fruit Juices', 'Shop3A Torrens Pl');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Cha', 'Chalisa Indian Restaurant', 'Breakfast', '(02) 6293 1711', 'Lamb, Veal, and Game Products', 'Hyperdome House & Home Shop 9, 76 Athlon Drive');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Lis', 'Lisboa Cafe & Bar', 'Bruch', '(02) 6282 5688', 'Legumes and Legume Products', 'Shp81/ Bradley St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Lan', 'Lanterne Rooms', 'Coffee', '(02) 6249 6889', 'Meals, Entrees, and Side Dishes', '3 Blamey Pl');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Bel', 'Belluci''s', 'Restaurants', '(02) 6239 7424', 'Nut and Seed Products', 'Cnr Franklin & Furneaux St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Kit', 'Kitschen', 'Food', '(02) 6247 2946', 'Pork Products', 'Cnr Lonsdale & Elouera Sts');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Ott', 'Ottoman Cuisine', 'Nightlife', '(02) 6273 6111', 'Poultry Products', 'Cnr Broughton & Blackall Sts');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Min', 'Minque', 'Shopping', '(02) 6295 8866', 'Restaurant Foods', 'Franklin St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('The', 'The Hermitage', 'Bar', '(02) 6230 0857', 'Sausages and Luncheon Meats', '170 London Cct Civic Sq');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Veg', 'Vegetarian House', 'Breakfast', '(02) 6293 9788', 'Snacks', 'Shop 7 Homeworld Shopping Cntr');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Tur', 'Turkish Halal Pide House', 'Bruch', '(02) 6281 1991', 'Soups, Sauces, and Gravies', '45 Nova St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Tur', 'Turkish Halal Pide House', 'Coffee', '(02) 6281 1991', 'Spices and Herbs', '47 Novar St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Sup', 'Superior Peking Chinese Restaurant', 'Restaurants', '(02) 6257 4308', 'Sweets', '100 Northbourne Ave');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Rem', 'Remi Food and Wine Bar', 'Food', '(02) 6257 3777', 'Vegetables and Vegetable Products', '14 Moore St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('San', 'Sanur''s Balinese Restaurant', 'Nightlife', '(02) 6162 1688', 'American Indian/Alaska Native Foods', '1/ 114 Emu Bnk');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Tha', 'Thai Amarin Erindale', 'Shopping', '(02) 6231 9566', 'Baby Foods', '6/ 20 Gartside St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Yar', 'Yarralumla Gallery & The Oaks Brasserie', 'Bar', '(02) 6260 5253', 'Baked Products', 'Weston Park Rd');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Lee', 'Lee''s Inn Chinese', 'Breakfast', '(02) 6295 8953', 'Beef Products', 'Canberra Ave');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Poa', 'Poachers Pantry Smokehouse Cafe', 'Bruch', '(02) 6230 2487', 'Beverages', '431 Nanima Rd');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Ban', 'Banana Leaf Restaurant & Cafe', 'Coffee', '(02) 6248 5522', 'Breakfast Cereals', '240- 250 City Wlk');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Sho', 'Shogun Japanese Restaurant', 'Restaurants', '(02) 6248 8888', 'Cereal Grains and Pasta', '1st Floor, Garema Centre, Bunda St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Du ', 'Du Jour Restaurant', 'Food', '(02) 6162 4588', 'Dairy and Egg Products', 'New Acton Pavillion 1/15 Edinburgh Ave');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Sin', 'Sin Yau Garden Chinese Restaurant', 'Nightlife', '(02) 6288 5828', 'Fast Foods', 'Chapman Shopng Cntr');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Taj', 'Taj Agra', 'Shopping', '(02) 6251 7747', 'Fats and Oils', 'Cnr Josephson & Luxton Sts');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Lit', 'Little Dragon City', 'Bar', '(02) 6284 2999', 'Finfish and Shellfish Products', '103 Uriarra Rd');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Emb', 'Embers Bar-Cafe', 'Breakfast', '(02) 6162 1838', 'Fruits and Fruit Juices', 'U62/ 1 Beissel St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('La ', 'La Cantina Restaurant', 'Bruch', '(02) 6239 5556', 'Lamb, Veal, and Game Products', '4 Iluka St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Fig', 'Figaro Restaurant', 'Coffee', '(02) 6232 6922', 'Legumes and Legume Products', '17 Kennedy St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Ind', 'Industry Cafe', 'Restaurants', '(02) 6280 8159', 'Meals, Entrees, and Side Dishes', 'Shop 1/ 100 Barrier St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Fir', 'Firestone Pizzeria Bar', 'Food', '(02) 6247 4447', 'Nut and Seed Products', '14 Woolley St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Tos', 'Tosolini''s Restaurant & Cafe', 'Nightlife', '(02) 6247 4317', 'Pork Products', 'Cnr London Cct & East Row');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Con', 'Connect Cafe & Bar', 'Shopping', '(02) 6241 5664', 'Poultry Products', 'Hibberson St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Tan', 'Tandoor House', 'Bar', '(02) 6295 7318', 'Restaurant Foods', '39 Kennedy St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Gri', 'Griffith Vietnamese Restaurant', 'Breakfast', '(02) 6295 6505', 'Sausages and Luncheon Meats', '6 Barker St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Can', 'Can Tho Vietmanese & Chinese Restaurant', 'Bruch', '(02) 6251 3682', 'Snacks', 'U1/ 38 Weedon Cl');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Fek', 'Fekerte''s Ethiopian Cuisine', 'Coffee', '(02) 6262 5799', 'Soups, Sauces, and Gravies', '74/ 2 Cape St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Tu ', 'Tu Do Vietnamese Restaurant', 'Restaurants', '(02) 6248 6030', 'Spices and Herbs', '7 Sargood St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Pea', 'Pearl City', 'Food', '(02) 6262 6212', 'Sweets', 'Sydney Building 19 East Rd');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Bab', 'Babar Gourmet', 'Nightlife', '(02) 6282 2289', 'Vegetables and Vegetable Products', 'Upper Level, Woden Plaza Corinna St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Bru', 'Bruschetta At University of Canberra', 'Shopping', '(02) 6201 5026', 'American Indian/Alaska Native Foods', 'Bldg 1, Kirinari St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Gol', 'Golden King Restaurant', 'Bar', '(02) 6282 3874', 'Baby Foods', '13 Dundas Crt');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Leg', 'Legends Spanish Restaurant', 'Breakfast', '(02) 6295 3966', 'Baked Products', '17 Franklin St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Pel', 'Pellegrino''s', 'Bruch', '(02) 6228 1101', 'Beef Products', '49 Wollongong St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Caf', 'Cafe Pronto', 'Coffee', '(02) 6247 0730', 'Beverages', '14 Lonsdale St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('At ', 'At The Lobby Restaurant', 'Restaurants', '(02) 6273 1563', 'Breakfast Cereals', 'King George Tce');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Cou', 'Courgette Restaurant', 'Food', '(02) 6247 4042', 'Cereal Grains and Pasta', '54 Marcus Clarke St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Lit', 'Little Thailand Restaurant', 'Nightlife', '(02) 6262 9991', 'Dairy and Egg Products', '76/ 2 Cape St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Nic', 'Nico''s Restaurant @ Koonaburra Vineyard', 'Shopping', '(02) 6236 9019', 'Fast Foods', '44 Summerhill Rd');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Iro', 'Iron Chef Chinese & Malaysian Restaurant', 'Bar', '(02) 6286 8678', 'Fats and Oils', 'U11/ 93 Mawson Pl');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Tan', 'Tandoor Indian Restaurant', 'Breakfast', '(02) 6253 1733', 'Finfish and Shellfish Products', 'Northpoint Plaza Chandler St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Mez', 'Mezzalira Ristorante', 'Bruch', '(02) 6230 0025', 'Fruits and Fruit Juices', 'Cnr London Cct & West Row');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('San', 'Santa Lucia', 'Coffee', '(02) 6295 1813', 'Lamb, Veal, and Game Products', 'The Atrium, Shop 10, 84 Ainsworth Street');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Por', 'Porkbarrel', 'Restaurants', '(02) 6273 1455', 'Legumes and Legume Products', 'King George Tce');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('La ', 'La Porchetta Tuggeranong', 'Food', '(02) 6293 2799', 'Meals, Entrees, and Side Dishes', '191- 203 Anketell St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('The', 'The Deck at Regatta Point', 'Nightlife', '(02) 6230 7234', 'Nut and Seed Products', 'Barrine Drv');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Ras', 'Rasa Sayang Restaurant', 'Shopping', '(02) 6249 7284', 'Pork Products', '43 Woolley St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Chi', 'China Town Restaurant', 'Bar', '(02) 6288 8380', 'Poultry Products', '15 Trenerry St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('MY''', 'MY''s Restaurant', 'Breakfast', '(02) 6288 6565', 'Restaurant Foods', 'Cooleman Crt, 13 Whitney Pl');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Gre', 'Green Herring Restaurant', 'Bruch', '(02) 6230 2657', 'Sausages and Luncheon Meats', 'Gold Creek Vlge');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Wok', 'Wok It Up Pty Ltd', 'Coffee', '(02) 6162 3939', 'Snacks', '102 Emu Bnk');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Hel', 'Hellenic Club in the City', 'Restaurants', '(02) 6162 6777', 'Soups, Sauces, and Gravies', '13 Moore St');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Bof', 'Boffins', 'Food', '(02) 6125 5285', 'Spices and Herbs', '1 Balmain Crs');
INSERT INTO 'Establishment' ('Id', 'Name', 'Type', 'Phone', 'Food', 'Location') VALUES ('Zef', 'Zeffirelli Pizza Restaurant', 'Nightlife', '(02) 6262 5500', 'Sweets', '5/ 55 Woolley St');
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('1', '2014/3/1', 'Meatloaf', '101.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('4', '2014/3/4', 'Chili', '104.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('5', '2014/3/5', 'Cheesy Beef & Hashbrowns', '105.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('6', '2014/3/6', 'Stir Fry Beef', '106.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('7', '2014/3/7', 'Pot Roast', '107.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('8', '2014/3/8', 'Veggie Beef Stew', '108.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('9', '2014/3/9', 'Burgers', '109.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('10', '2014/3/10', 'Steaks', '110.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('11', '2014/3/11', 'Apple Chicken over Rice', '111.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('12', '2014/3/12', 'Garlic Chicken over Rice', '112.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('13', '2014/3/13', 'Pizza Chicken', '113.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('14', '2014/3/14', 'Chicken Tacos', '114.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('15', '2014/3/15', 'Chicken Kiev Bundles (fr. Rachael Ray)', '115.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('16', '2014/3/16', 'Chicken Tenders', '116.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('17', '2014/3/17', 'Aloha Chicken', '117.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('18', '2014/3/18', 'Chicken Pot Pie', '118.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('19', '2014/3/19', 'Pineapple Pork Chops', '119.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('20', '2014/3/20', 'Orange Pork Chops', '120.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('21', '2014/3/21', 'Breakfast Casserole', '121.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('22', '2014/3/22', 'Corn Dog Muffins', '122.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('23', '2014/3/23', 'Pasta', '123.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('24', '2014/3/24', 'Tortillinis', '124.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('25', '2014/3/25', 'Raviolis', '125.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('26', '2014/3/26', 'Spaghetti w/Homemade Italian Meatballs (recipe fr. my Italian MIL)', '126.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('27', '2014/3/27', 'Baked Ziti & Meatball Casserole (YUM & easy!)', '127.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('28', '2014/3/28', 'Meatloaf', '128.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('29', '2014/3/29', 'Beef & Mac Casserole', '129.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('30', '2014/3/30', 'Tacos', '130.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('31', '2014/3/31', 'Chili', '131.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('32', '2014/4/1', 'Cheesy Beef & Hashbrowns', '132.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('33', '2014/4/2', 'Stir Fry Beef', '133.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('34', '2014/4/3', 'Pot Roast', '134.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('35', '2014/4/4', 'Veggie Beef Stew', '135.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('36', '2014/4/5', 'Burgers', '136.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('37', '2014/4/6', 'Steaks', '137.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('38', '2014/4/7', 'Apple Chicken over Rice', '138.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('39', '2014/4/8', 'Garlic Chicken over Rice', '139.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('40', '2014/4/9', 'Pizza Chicken', '140.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('41', '2014/4/10', 'Chicken Tacos', '141.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('42', '2014/4/11', 'Chicken Kiev Bundles (fr. Rachael Ray)', '142.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('43', '2014/4/12', 'Chicken Tenders', '143.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('44', '2014/4/13', 'Aloha Chicken', '144.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('45', '2014/4/14', 'Chicken Pot Pie', '145.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('46', '2014/4/15', 'Pineapple Pork Chops', '146.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('47', '2014/4/16', 'Orange Pork Chops', '147.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('48', '2014/4/17', 'Breakfast Casserole', '148.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('49', '2014/4/18', 'Corn Dog Muffins', '149.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('50', '2014/4/19', 'Pasta', '150.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('51', '2014/4/20', 'Tortillinis', '151.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('52', '2014/4/21', 'Raviolis', '152.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('53', '2014/4/22', 'Spaghetti w/Homemade Italian Meatballs (recipe fr. my Italian MIL)', '153.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('54', '2014/4/23', 'Baked Ziti & Meatball Casserole (YUM & easy!)', '154.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('55', '2014/4/24', 'Meatloaf', '155.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('56', '2014/4/25', 'Beef & Mac Casserole', '156.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('57', '2014/4/26', 'Tacos', '157.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('58', '2014/4/27', 'Chili', '158.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('59', '2014/4/28', 'Cheesy Beef & Hashbrowns', '159.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('60', '2014/4/29', 'Stir Fry Beef', '160.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('61', '2014/4/30', 'Pot Roast', '161.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('62', '2014/5/1', 'Veggie Beef Stew', '162.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('63', '2014/5/2', 'Burgers', '163.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('64', '2014/5/3', 'Steaks', '164.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('65', '2014/5/4', 'Apple Chicken over Rice', '165.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('66', '2014/5/5', 'Garlic Chicken over Rice', '166.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('67', '2014/5/6', 'Pizza Chicken', '167.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('68', '2014/5/7', 'Chicken Tacos', '168.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('69', '2014/5/8', 'Chicken Kiev Bundles (fr. Rachael Ray)', '169.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('70', '2014/5/9', 'Chicken Tenders', '170.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('71', '2014/5/10', 'Aloha Chicken', '171.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('72', '2014/5/11', 'Chicken Pot Pie', '172.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('73', '2014/5/12', 'Pineapple Pork Chops', '173.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('74', '2014/5/13', 'Orange Pork Chops', '174.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('75', '2014/5/14', 'Breakfast Casserole', '175.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('76', '2014/5/15', 'Corn Dog Muffins', '176.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('77', '2014/5/16', 'Pasta', '177.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('78', '2014/5/17', 'Tortillinis', '178.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('79', '2014/5/18', 'Raviolis', '179.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('80', '2014/5/19', 'Spaghetti w/Homemade Italian Meatballs (recipe fr. my Italian MIL)', '180.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('81', '2014/5/20', 'Baked Ziti & Meatball Casserole (YUM & easy!)', '181.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('82', '2014/5/21', 'Meatloaf', '182.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('83', '2014/5/22', 'Beef & Mac Casserole', '183.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('84', '2014/5/23', 'Tacos', '184.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('85', '2014/5/24', 'Chili', '185.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('86', '2014/5/25', 'Cheesy Beef & Hashbrowns', '186.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('87', '2014/5/26', 'Stir Fry Beef', '187.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('88', '2014/5/27', 'Pot Roast', '188.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('89', '2014/5/28', 'Veggie Beef Stew', '189.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('90', '2014/5/29', 'Burgers', '190.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('91', '2014/5/30', 'Steaks', '191.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('92', '2014/5/31', 'Apple Chicken over Rice', '192.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('93', '2014/6/1', 'Garlic Chicken over Rice', '193.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('94', '2014/6/2', 'Pizza Chicken', '194.0', '4', 'Good', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('95', '2014/6/3', 'Chicken Tacos', '195.0', '5', 'Great', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('96', '2014/6/4', 'Chicken Kiev Bundles (fr. Rachael Ray)', '196.0', '1', 'Worst', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('97', '2014/6/5', 'Chicken Tenders', '197.0', '2', 'Bad', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('98', '2014/6/6', 'Aloha Chicken', '198.0', '3', 'Normal', NULL);
INSERT INTO 'Review' ('EstablishmentAutoId', 'CreateDate', 'Meal', 'Cost', 'Rating', 'Comments', 'ImagePath') VALUES ('99', '2014/6/7', 'Chicken Pot Pie', '199.0', '4', 'Good', NULL);";
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