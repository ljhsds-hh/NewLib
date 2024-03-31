using LibrarySystemForClient.Ljh.Model;
using LibrarySystemForClient.Ljh.Utils;
using LibrarySystemForClient.Ljh.Windows;
using MaterialDesignThemes.Wpf;
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
    /// ReturnInfo.xaml 的交互逻辑
    /// </summary>
    public partial class ReturnInfo : Page
    {
        public ReturnInfo()
        {
            InitializeComponent();
            InitDataGrid(1,12);
        }

        

        private void ReturnBook_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void ReborrowBook_Click(object sender, RoutedEventArgs e)
        {
            // 1.查看是否有逾期
            // 2.修改借书表
            // 3.修改图书表

            var button = (Button)sender;
            var dataContext = button.DataContext as Borrow;
            
            // 1.
            if (!BorrowBookUtil.IsOverdueReturnBook())
            {
                BookInfoWindow bookInfoWindow = new BookInfoWindow();
                BorrowBookUtil.SetBookInfoValue(dataContext, bookInfoWindow);
                bookInfoWindow.Visibility = Visibility.Visible;
            }
            else
            {
                MessageBoxResult result = MessageBox.Show(
                   "您有未归还图书，无法续借", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
            }
        }

        public void InitDataGrid(int PageNum,int PageSize)
        {
            BorrowBookInfoData.ItemsSource = SQLUtil.SelectAllBorrowInfoByPage(PageNum, PageSize,null);
        }


    }
}
