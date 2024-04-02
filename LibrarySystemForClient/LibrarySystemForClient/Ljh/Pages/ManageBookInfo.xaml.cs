using LibrarySystemForClient.Ljh.Model;
using LibrarySystemForClient.Ljh.Utils;
using LibrarySystemForClient.Ljh.ViewModel;
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
    /// Interaction logic for ManageBookInfo.xaml
    /// </summary>
    public partial class ManageBookInfo : Page
    {

        public List<ManageBookViewModel> manageBookViewModels;
        public int CheckTrueNum = 0;
        public ManageBookInfo()
        {
            InitializeComponent();
            InitDataGrid(1, 12);
        }

        public void InitDataGrid(int PageNum, int PageSize)
        {
            string SelectBookInfoSQLString = "SELECT bi_id, bi_name, bt_id, bi_press, bi_isbn, bi_author, bi_location, bi_price, bi_pages, bi_addtime, bi_num, bi_cover_picture FROM ls_bookinfo limit " + PageSize + " offset " + (PageNum - 1) * PageSize + ";";
            manageBookViewModels = SQLUtil.SelectManageBookViewModelByPage(SelectBookInfoSQLString);
            ManageBookInfoDataGrid.ItemsSource = manageBookViewModels;
        }


        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            Button button = (Button)sender;
            var dataContent = button.DataContext as ManageBookViewModel;
            int bookId = dataContent.Id;
            string DeleteRowDateSQLString = "delete from ls_bookinfo where bi_id = " + bookId + " ;";
            int deleteRes = SQLUtil.NoQuerySQL(DeleteRowDateSQLString);
            if (deleteRes == 1)
            {
                MessageBoxResult result = MessageBox.Show("已删除！！", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
            }
            InitDataGrid(1, 12);

        }
        private void Update_Click(object sender, RoutedEventArgs e)
        {

        }


        private void CheckBoxAll_Click(object sender, RoutedEventArgs e)
        {

            CheckBox checkAll = (CheckBox)sender;
            bool value = checkAll.IsChecked.Value;
            SetCheckBoxAll(value);
        }

        private void CheckBox_Click(object sender, RoutedEventArgs e)
        {

            CheckBox check = (CheckBox)sender;
            ManageBookViewModel temporary = check.DataContext as ManageBookViewModel;
            bool value = check.IsChecked.Value;
            manageBookViewModels[temporary.Index].CheckBoxValue = value;
            if (value)
            {
                CheckTrueNum++;
            }
            else
            {
                CheckTrueNum--;
            }
            if (CheckTrueNum == 12)
            {
                CheckBoxAll.IsChecked = true;
            }
            else
            {
                CheckBoxAll.IsChecked = false;
            }

        }

        private void SetCheckBoxAll(bool value)
        {
            for (int i = 0; i < manageBookViewModels.Count; i++)
            {
                manageBookViewModels[i].CheckBoxValue = value;
            }
            if (value)
            {
                CheckTrueNum = 12;
            }
            else
            {
                CheckTrueNum = 0;
            }
        }
    }
}
