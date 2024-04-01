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
    /// MainBook.xaml 的交互逻辑
    /// </summary>
    public partial class MainBook : Window
    {

        private Button styleButton;
        private BookInfo bookInfo;
        private BorrowInfo borrowInfo;
        private ReturnInfo returnInfo;
        private ManageBookInfo manageBookInfo;
        public MainBook()
        {
            InitializeComponent();
            bookInfo = new BookInfo();
            mainFrame.Content = bookInfo;
            styleButton = MenuOne;
        }

        private void Menu_Click(object sender, RoutedEventArgs e)
        {
            var Button = (Button)sender;
            if (Button != styleButton)
            {
                OtherUtil.SetMenuStyle(Button, styleButton, this);
                styleButton = Button;

                if (styleButton.Name.Equals("MenuOne"))
                {
                    if (bookInfo == null)
                    {
                        bookInfo = new BookInfo();
                    }
                    
                    mainFrame.Content = bookInfo;
                }
                if (styleButton.Name.Equals("MenuTwo"))
                {
                    if (manageBookInfo == null)
                    {
                        manageBookInfo = new ManageBookInfo();
                    }

                    mainFrame.Content = manageBookInfo;
                }
                if (styleButton.Name.Equals("MenuFour"))
                {
                    if (borrowInfo == null)
                    {
                        borrowInfo = new BorrowInfo();
                    }
                    borrowInfo.InitDataGrid(1, 12);
                    mainFrame.Content = borrowInfo;
                }

                if (styleButton.Name.Equals("MenuFive"))
                {
                    if (returnInfo == null)
                    {
                        returnInfo = new ReturnInfo();
                    }
                    returnInfo.InitDataGrid(1,12);
                    mainFrame.Content = returnInfo;
                }
            }


        }
    }
}
