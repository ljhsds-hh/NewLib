using LibrarySystemForClient.Ljh.Pages;
using LibrarySystemForClient.Ljh.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace LibrarySystemForClient.Ljh.Utils
{
    public class ReturnBookUtil
    {
        private static DateTime? OldDateTime = null;
        private static int ReborrowDays = 0;
        public static void ReborrowBookFun(DateTime NewDateTime, BookInfoWindow thisWindow, int bookId)
        {
            if (OldDateTime == null)
            {
                string OldDateTimeSQL = "select bb_returntime,bb_reborrow_days from ls_borrow where bi_id = " + bookId + " and r_id = " + Properties.Settings.Default.RoleId + " and bb_real_returntime is null;";
                string timeAndDay = SQLUtil.QueryBookOldBorrowTimeAndDay(OldDateTimeSQL);
                string[] timeAndDays = timeAndDay.Split(',');
                OldDateTime = Convert.ToDateTime(timeAndDays[0]);
                ReborrowDays = Convert.ToInt32(timeAndDays[1]);

            }
            DateTime OldDate = (DateTime)OldDateTime;
            int ReborrowDay = (NewDateTime - OldDate).Days;
            if (OldDateTime >= NewDateTime)
            {
                MessageBoxResult result = MessageBox.Show(
             "您的日期选择有误！！", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
            }
            else
            {
                if ((ReborrowDay + ReborrowDays) > 90)
                {
                    string resultText = "";
                    if (ReborrowDays == 90)
                    {
                        resultText = "您已无法再续借该书（以达到最大续借天数）";
                    }
                    else
                    {
                        resultText = "最大只能借90天！！（最大可借阅到" + OldDate.AddDays(90 - ReborrowDays).ToString("yyyy-MM-dd") + ")";
                    }
                    MessageBoxResult result = MessageBox.Show(
             resultText, "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
                    if (result == MessageBoxResult.OK || result == MessageBoxResult.Cancel || result == MessageBoxResult.No)
                    {
                        if (ReborrowDays == 90)
                        {
                            thisWindow.Close();
                        }

                    }
                }
                else
                {
                    string ReborrowBookSQL = "update ls_borrow set bb_returntime = '" + NewDateTime + "' ,bb_isreborrow = 1,bb_reborrow_days = " + (ReborrowDay + ReborrowDays) + " where bi_id = " + bookId + " and r_id = " + Properties.Settings.Default.RoleId + " and bb_real_returntime is null;";
                    int UpdateBorrowRes = SQLUtil.NoQuerySQL(ReborrowBookSQL);
                    if (UpdateBorrowRes == 1)
                    {
                        MessageBoxResult result = MessageBox.Show(
                      "续借成功", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
                        if (result == MessageBoxResult.OK || result == MessageBoxResult.Cancel || result == MessageBoxResult.No)
                        {
                            thisWindow.Close();
                            //获取已经显示的页面
                            MainBook CurrentWindows = Application.Current.Windows.OfType<MainBook>().FirstOrDefault();
                            if (CurrentWindows.mainFrame.Content is ReturnInfo returnInfo)
                            {
                                returnInfo.InitDataGrid(1, 12);
                            }
                        }
                    }
                }
            }

            OldDateTime = null;
            ReborrowDays = 0;
        }
    }
}
