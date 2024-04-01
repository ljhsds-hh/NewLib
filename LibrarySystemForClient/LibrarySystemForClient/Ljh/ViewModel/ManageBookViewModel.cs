using LibrarySystemForClient.Ljh.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibrarySystemForClient.Ljh.ViewModel
{
    public class ManageBookViewModel : INotifyPropertyChanged
    {
        // INotifyPropertyChanged属性（页面试试更新数据） 必须设置1
        public event PropertyChangedEventHandler PropertyChanged;

        ManageBook _manageBook;
        public ManageBookViewModel()
        {
            _manageBook = new ManageBook()
            {
                CheckBoxValue = false,
                Id = 0,
                BookName = "",
                BookTypeId = 0,
                BookPress = "",
                BookISBN = "",
                BookAuthor = "",
                BookLocation = "",
                BookPrice = 0,
                PageNum = 0,
                BookAddTime = "",
                BookNum = 0,
                BookPhoto = null
            };
        }
        public bool CheckBoxValue
        {
            get { return _manageBook.CheckBoxValue; }
            set { _manageBook.CheckBoxValue = value; RaisePropertyChanged("CheckBoxValue"); }
        }
        public int Id {
            get { return _manageBook.Id; }
            set { _manageBook.Id = value; RaisePropertyChanged("Id"); }
        }
        public string BookName {
            get { return _manageBook.BookName; }
            set { _manageBook.BookName = value; RaisePropertyChanged("BookName"); }
        }
        public int BookTypeId
        {
            get { return _manageBook.BookTypeId; }
            set { _manageBook.BookTypeId = value; RaisePropertyChanged("BookTypeId"); }
        }
        public string BookPress
        {
            get { return _manageBook.BookPress; }
            set { _manageBook.BookPress = value; RaisePropertyChanged("BookPress"); }
        }
        public string BookISBN
        {
            get { return _manageBook.BookISBN; }
            set { _manageBook.BookISBN = value; RaisePropertyChanged("BookISBN"); }
        }
        public string BookAuthor
        {
            get { return _manageBook.BookAuthor; }
            set { _manageBook.BookAuthor = value; RaisePropertyChanged("BookAuthor"); }
        }
        public string BookLocation {
            get { return _manageBook.BookLocation; }
            set { _manageBook.BookLocation = value; RaisePropertyChanged("BookLocation"); }
        }
        public decimal BookPrice
        {
            get { return _manageBook.BookPrice; }
            set { _manageBook.BookPrice = value; RaisePropertyChanged("BookPrice"); }
        }
        public int PageNum {
            get { return _manageBook.PageNum; }
            set { _manageBook.PageNum = value; RaisePropertyChanged("PageNum"); }
        }
        public string BookAddTime
        {
            get { return _manageBook.BookAddTime; }
            set { _manageBook.BookAddTime = value; RaisePropertyChanged("BookAddTime"); }
        }
        public int BookNum
        {
            get { return _manageBook.BookNum; }
            set { _manageBook.BookNum = value; RaisePropertyChanged("BookNum"); }
        }
        public byte[] BookPhoto
        {
            get { return _manageBook.BookPhoto; }
            set { _manageBook.BookPhoto = value; RaisePropertyChanged("BookPhoto"); }
        }



        //属性更改方法 （页面试试更新数据） 必须设置2
        private void RaisePropertyChanged(string propertyName)
        {
            PropertyChangedEventHandler handler = PropertyChanged;
            if (handler != null)
            {
                handler(this, new PropertyChangedEventArgs(propertyName));
            }
        }

    }
}
