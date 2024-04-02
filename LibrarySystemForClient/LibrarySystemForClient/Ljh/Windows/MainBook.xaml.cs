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
            DeleteAll.Visibility = Visibility.Hidden;
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
                    DeleteAll.Visibility = Visibility.Hidden;
                    mainFrame.Content = bookInfo;
                }
                if (styleButton.Name.Equals("MenuTwo"))
                {
                    if (manageBookInfo == null)
                    {
                        manageBookInfo = new ManageBookInfo();
                    }
                    DeleteAll.Visibility = Visibility.Visible;
                    mainFrame.Content = manageBookInfo;
                }
                if (styleButton.Name.Equals("MenuFour"))
                {
                    if (borrowInfo == null)
                    {
                        borrowInfo = new BorrowInfo();
                    }
                    DeleteAll.Visibility = Visibility.Hidden;
                    borrowInfo.InitDataGrid(1, 12);
                    mainFrame.Content = borrowInfo;
                }

                if (styleButton.Name.Equals("MenuFive"))
                {
                    if (returnInfo == null)
                    {
                        returnInfo = new ReturnInfo();
                    }
                    DeleteAll.Visibility = Visibility.Hidden;
                    returnInfo.InitDataGrid(1,12);
                    mainFrame.Content = returnInfo;
                }
            }


        }

        private void DeleteAll_Click(object sender, RoutedEventArgs e)
        {
            int deleteNum = manageBookInfo.CheckTrueNum;
            if (deleteNum == 0)
            {
                MessageBox.Show("您未选择任何数据无法删除！！", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
            }
            else
            {
                List<int> deleteList;
                if (deleteNum == manageBookInfo.manageBookViewModels.Count)
                {
                    MessageBoxResult resultAll = MessageBox.Show("您确定要删除所有数据吗？？", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
                    //|| result == MessageBoxResult.Cancel || result == MessageBoxResult.No
                    if (resultAll == MessageBoxResult.OK)
                    {
                        deleteList = manageBookInfo.manageBookViewModels.Select(item => item.Id).ToList();
                        SQLUtil.DeleteInfoByIdsAndTableName("ls_bookinfo", deleteList);
                    }
                }
                else
                {
                    deleteList = manageBookInfo.manageBookViewModels.Where(item => item.CheckBoxValue == true).Select(item => item.Id).ToList();
                    string deleteString = OtherUtil.GetAddString(deleteList);
                    MessageBoxResult resultList = MessageBox.Show("您确定要删除Id为：" + deleteString + " 的数据吗？？", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
                    //|| result == MessageBoxResult.Cancel || result == MessageBoxResult.No
                    if (resultList == MessageBoxResult.OK)
                    {
                        SQLUtil.DeleteInfoByIdsAndTableName("ls_bookinfo", deleteList);
                    }
                }
                manageBookInfo.InitDataGrid(1, 12);
            }
        }


        private void SourceAllInfo_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
