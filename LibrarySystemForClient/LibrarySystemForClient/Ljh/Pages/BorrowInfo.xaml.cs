using LibrarySystemForClient.Ljh.Model;
using LibrarySystemForClient.Ljh.Utils;
using LibrarySystemForClient.Ljh.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace LibrarySystemForClient.Ljh.Pages
{
    /// <summary>
    /// BorrowInfo.xaml 的交互逻辑
    /// </summary>
    public partial class BorrowInfo : Page
    {

        public string ValueOne = "";
        public string ValueTwo = "";

        public int PageNum = 1;
        public int PageSize = 12;
        public BorrowInfo()
        {
            InitializeComponent();
            InitDataGrid();
        }

        private void BorrowBook_Click(object sender, RoutedEventArgs e)
        {
            var button = (Button)sender;
            var dataContext = button.DataContext as Book;
           
                if (!BorrowBookUtil.IsOverdueReturnBook())
                {
                    if (SQLUtil.IsBorrowThisBook(dataContext.Id))
                    {
                        MessageBoxResult result = MessageBox.Show(
                "您已借过该书！！", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
                    }
                    else
                    {
                        BookInfoWindow bookInfoWindow = new BookInfoWindow();
                        BorrowBookUtil.SetBookInfoValue(dataContext, bookInfoWindow);
                        bookInfoWindow.Visibility = Visibility.Visible;
                    }

                }
                else
                {
                    MessageBoxResult result = MessageBox.Show(
                 "您有未归还图书，无法借书", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
                }
           
            

        }

        public void InitDataGrid()
        {
            string CountBorrow = "";
            int borrowTotal = 0;
            string SelectReborrowBookInfoSQLString = "";
            string whereCondition = "";
            if(!ValueOne.Equals("") || !ValueTwo.Equals(""))
            {
                if (!ValueOne.Equals("") && !ValueTwo.Equals(""))
                {
                    whereCondition = "and ( bi_id = " + ValueOne + " or bi_name like '%" + ValueTwo + "%' )";

                }
                else if (ValueOne.Equals(""))
                {
                    whereCondition = "and  bi_name like '%" + ValueTwo + "%' ";
                }
                else
                {
                    whereCondition = "and  bi_id = " + ValueOne + " ";
                }
            }
            SelectReborrowBookInfoSQLString = "SELECT bi_id, bi_name, bt_name, bi_press, bi_isbn, bi_author, bi_location, bi_price, bi_pages,bi_num FROM ls_bookinfo as t1 LEFT JOIN ls_booktype as t2 on t1.bt_id = t2.bt_id where bi_num > 0 " + whereCondition + " order by bi_id limit " + PageSize + " offset " + (PageNum - 1) * PageSize + " ;";
            CountBorrow = "select count(bi_id) from ls_bookinfo as t1 LEFT JOIN ls_booktype as t2 on t1.bt_id = t2.bt_id where bi_num > 0  " + whereCondition + ";";
            borrowTotal = SQLUtil.CountSQL(CountBorrow);
            int PageTotal = borrowTotal % PageSize == 0 ? borrowTotal / PageSize : (borrowTotal / PageSize + 1);
            MainBook CurrentWindows = Application.Current.Windows.OfType<MainBook>().FirstOrDefault();
            CurrentWindows.bookTotal = borrowTotal;
            CurrentWindows.pageTotal = PageTotal;
            ReborrowBookData.ItemsSource = SQLUtil.SelectBookInfoByPage(SelectReborrowBookInfoSQLString);
        }
    }
}
