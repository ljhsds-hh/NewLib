using LibrarySystemForClient.Ljh.Pages;
using LibrarySystemForClient.Ljh.Utils;
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
        public int pageNum = 1;
        public int pageSize = 12;
        public int bookTotal = 0;
        public int pageTotal = 0;

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
            TextBox textOne = FindName("TextOne") as TextBox;
            
            if (Button != styleButton)
            {
                OtherUtil.SetMenuStyle(Button, styleButton, this);
                styleButton = Button;
                pageNum = 1;
                pageSize = 12;
                if (styleButton.Name.Equals("MenuOne"))
                {
                    if (bookInfo == null)
                    {
                        bookInfo = new BookInfo();
                    }
                    TextOne.SetValue(HintAssist.HintProperty, "请输入图书ID");
                    TextTwo.SetValue(HintAssist.HintProperty, "请输入图书名称");
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
                    SetPageInfo();
                    mainFrame.Content = manageBookInfo;
                }
                if (styleButton.Name.Equals("MenuFour"))
                {
                    if (borrowInfo == null)
                    {
                        borrowInfo = new BorrowInfo();
                    }
                    DeleteAll.Visibility = Visibility.Hidden;
                    TextOne.SetValue(HintAssist.HintProperty, "请输入图书编号");
                    TextTwo.SetValue(HintAssist.HintProperty, "请输入图书名称");
                    SetPageInfo();
                    mainFrame.Content = borrowInfo;
                }

                if (styleButton.Name.Equals("MenuFive"))
                {
                    if (returnInfo == null)
                    {
                        returnInfo = new ReturnInfo();
                    }
                    DeleteAll.Visibility = Visibility.Hidden;
                    TextOne.SetValue(HintAssist.HintProperty, "请输入借书ID");
                    TextTwo.SetValue(HintAssist.HintProperty, "请输入借书原定归还时间");
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
                manageBookInfo.InitDataGrid();
            }
        }


        private void SourceAllInfo_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                

                if (styleButton == MenuTwo)
                {
                    if (!TextOne.Text.Equals(""))
                    {
                        Convert.ToInt32(TextOne.Text);
                    }
                    manageBookInfo.ValueOne = TextOne.Text;
                    manageBookInfo.ValueTwo = TextTwo.Text;
                    manageBookInfo.InitDataGrid();
                    SetPageInfo();
                }
                if (styleButton == MenuFour)
                {
                    if (!TextOne.Text.Equals(""))
                    {
                        Convert.ToInt32(TextOne.Text);
                    }
                    borrowInfo.ValueOne = TextOne.Text;
                    borrowInfo.ValueTwo = TextTwo.Text;
                    borrowInfo.InitDataGrid();
                    SetPageInfo();
                }


            }
            catch (FormatException f)
            {
                MessageBoxResult resultList = MessageBox.Show("您的查询条件一输入有误，不为数字！！！", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
            }
            catch (OverflowException o)
            {
                MessageBoxResult resultList = MessageBox.Show("您的查询条件一输入有误，int值溢出！！！", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
            }
 
        }
        private void ToPageNum_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                int TempPageNum = Convert.ToInt32(MainPageNum.Text);
                int TempPageSize = Convert.ToInt32(MainPageSize.Text);
                int TempPageTotal = bookTotal % TempPageSize == 0 ? bookTotal / TempPageSize : (bookTotal / TempPageSize + 1);
                if (TempPageNum < 1 || TempPageNum > TempPageTotal)
                {
                    MessageBoxResult resultList = MessageBox.Show("输入非法页码！！！（应为 1 - " + TempPageTotal + " ，，已为您自动纠正）", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
                    if (TempPageNum < 1)
                    {
                        TempPageNum = 1;
                    }
                    else
                    {
                        TempPageNum = TempPageTotal;
                    }
                }

                pageNum = TempPageNum;
                pageSize = TempPageSize;
                if (styleButton == MenuTwo)
                {
                    manageBookInfo.PageNum = pageNum;
                    manageBookInfo.PageSize = pageSize;
                    manageBookInfo.InitDataGrid();
                    SetPageInfo();
                }
                if (styleButton == MenuFour)
                {
                    borrowInfo.PageNum = pageNum;
                    borrowInfo.PageSize = pageSize;
                    borrowInfo.InitDataGrid();
                    SetPageInfo();
                }

            }
            catch (FormatException f)
            {
                MessageBoxResult resultList = MessageBox.Show("输入了非数字页码！！！", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
            }
            catch (OverflowException o)
            {
                MessageBoxResult resultList = MessageBox.Show("输入了超大页码，int值溢出！！！", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
            }
        }


        private void SetPageInfo()
        { 
            MainPageNum.Text = pageNum + "";
            MainPageSize.Text = pageSize + "";
            MainPageTotal.Text = bookTotal + "";
            MainPageTotalSize.Text = pageTotal + "";
        }
    }
}
