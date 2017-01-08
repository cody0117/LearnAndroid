using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FareJudgeApp.Model
{
    class Establishment
    {
        [PrimaryKey, AutoIncrement]
        public int AutoId { get; set; }
        public string Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public string Food { get; set; }
        public string Phone { get; set; }
        public string Location { get; set; }
    }
}