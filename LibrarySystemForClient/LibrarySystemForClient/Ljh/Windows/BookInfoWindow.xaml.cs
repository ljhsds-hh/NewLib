using LibrarySystemForClient.Ljh.Pages;
using LibrarySystemForClient.Ljh.Utils;
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
using System.Windows.Shapes;

namespace LibrarySystemForClient.Ljh.Windows
{
    /// <summary>
    /// BookInfo.xaml 的交互逻辑
    /// </summary>
    public partial class BookInfoWindow : Window
    {

       
        public BookInfoWindow()
        {
            InitializeComponent();
            //使该组件呈现在屏幕中部
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
        }

        private void BtnEnter_Click(object sender, RoutedEventArgs e)
        {
            MainBook CurrentWindows = Application.Current.Windows.OfType<MainBook>().FirstOrDefault();
            int bookId = Convert.ToInt32(BookIdEBI.Text.Split('.')[1]);
            DateTime NewDateTime = BorrowTime.SelectedDate.Value;
            if (CurrentWindows.mainFrame.Content is ReturnInfo returnInfo)
            {
                ReturnBookUtil.ReborrowBookFun(NewDateTime, this, bookId);
            }
            else
            {
                BorrowBookUtil.BorrowBookFun(NewDateTime, this, bookId);
            }
            //string UpdateBookInfoSQL = "update ls_bookinfo set bi_num = bi_num - 1 where bi_id = " + bookId+";";
            //int UpdateBookInfoRes = SQLUtil.NoQuerySQL(UpdateBookInfoSQL);
            
            
                
        }

        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }

    
}
