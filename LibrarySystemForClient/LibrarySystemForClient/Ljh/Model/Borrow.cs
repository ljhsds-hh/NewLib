using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibrarySystemForClient.Ljh.Model
{
    public class Borrow
    {
        public int Id { get; set; }

        public int RId { get; set; }
        public int BookId { get; set; }
        public string BorrowBookTime { get; set; }
        public string PredictReturnBookTime { get; set; }
        public string RealReturnBookTime { get; set; }
        public string IsReborrow { get; set; }
        public int ReborrowDay { get; set; }
    }
}
