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
            var Button = (Button)sender as Button;
            var dataContent = Button.DataContext as Borrow;
           
                DateTime predictReturnBookTime = DateTime.Now;
                DateTime.TryParse(dataContent.PredictReturnBookTime, out predictReturnBookTime);

                if (predictReturnBookTime < DateTime.Now)
                {
                    int OverDay = (DateTime.Now - predictReturnBookTime).Days;
                    double punish = OverDay * 2.08;
                    MessageBoxResult OverTimeReturn = MessageBox.Show("该图书您逾期未归还！！！需要缴纳 " + punish + "元 的罚款(每天需支付2.08元,具体为 " + OverDay + " * 2.08 = " + punish + ")，您确定您要归还吗", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
                    if (OverTimeReturn == MessageBoxResult.OK)
                    {
                        ReturnBookFun(dataContent.BookId);
                        ReturnBookUtil.HandlePunishTable();
                    }
                    else
                    {
                        MessageBoxResult OverTimeReturnToNext = MessageBox.Show("您拒绝了归还逾期的图书！您将无法在借书！！！", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
                    }

                }
                else
                {
                    MessageBoxResult IsReturn = MessageBox.Show("您确定要归还图书吗", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
                    if (IsReturn == MessageBoxResult.OK)
                    {
                        ReturnBookFun(dataContent.BookId);
                    }

                }
        }
            
    

        private void ReturnBookFun(int bookId)
        {
            bool ReturnRes = ReturnBookUtil.IsSuccessReturnBook(bookId);
            if (ReturnRes)
            {
                MessageBoxResult result = MessageBox.Show("您已成功还书！", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
                if (result == MessageBoxResult.OK || result == MessageBoxResult.Cancel || result == MessageBoxResult.No)
                {
                    //获取已经显示的页面
                    MainBook CurrentWindows = Application.Current.Windows.OfType<MainBook>().FirstOrDefault();
                    if (CurrentWindows.mainFrame.Content is ReturnInfo returnInfo)
                    {
                        InitDataGrid(1, 12);
                    }
                }
            }
            else
            {
                MessageBox.Show("还书失败", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
            }
        }

        private void ReborrowBook_Click(object sender, RoutedEventArgs e)
        {
            var button = (Button)sender;
            var dataContext = button.DataContext as Borrow;

            if (!OtherUtil.IsNeedHandlerNoExistBorrowInfo(dataContext.BookId))
            {
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
        }


        public void InitDataGrid(int PageNum,int PageSize)
        {
            BorrowBookInfoData.ItemsSource = SQLUtil.SelectAllBorrowInfoByPage(PageNum, PageSize,null);
        }


    }
}
