using LibrarySystemForClient.Ljh.Model;
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

        private List<ManageBookViewModel> manageBookViewModel;
        public ManageBookInfo()
        {
            InitializeComponent();
            InitDataGrid(1,12);
        }

        public void InitDataGrid(int PageNum,int PageSize)
        {
           
            ManageBookInfoDataGrid.ItemsSource = manageBookViewModel;
        }

      
        private void Btn1_Click(object sender, RoutedEventArgs e)
        {

        }
        private void Btn2_Click(object sender, RoutedEventArgs e)
        {

        }


        private void CheckBoxAll_Click(object sender, RoutedEventArgs e)
        {
            CheckBox checkBoxHeader = (CheckBox)sender;
            bool checkBoxHeaderValue = checkBoxHeader.IsChecked.Value;
            foreach (var item in ManageBookInfoDataGrid.ItemsSource)
            {
                if (item is Test yourItem)
                {
                    yourItem.IsChecked = checkBoxHeaderValue;
                }
            }


        }
    }
}
