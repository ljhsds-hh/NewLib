using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibrarySystemForClient.Ljh.Model
{
    public class Book
    {
        public int Id { get; set; }
        public string BookName { get; set; }
        public string BookType { get; set; }
        public string BookPress { get; set; }
        public string BookISBN { get; set; }
        public string BookAuthor { get; set; }
        public string BookLocation { get; set; }
        public decimal BookPrice { get; set; }
        public int PageNum { get; set; }
        public int BookNum { get; set; }

        public byte[] BookPhoto { get; set; }
    }
}
