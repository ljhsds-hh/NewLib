using LibrarySystemForClient.Ljh.Model;
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
    public class BorrowBookUtil
    {
        public static bool IsOverdueReturnBook()
        {
            string SelectPunishSQL = "select count(p_id) from ls_punish where r_id = " + Properties.Settings.Default.RoleId + ";";
            int punishRes = SQLUtil.CountSQL(SelectPunishSQL);
            if (punishRes == 0)
            {
                string SelectBorrowBookSQL = "select count(bb_id) from ls_borrow where r_id = " + Properties.Settings.Default.RoleId + " and bb_real_returntime is null and bb_returntime < now() ;";
                int borrowRes = SQLUtil.CountSQL(SelectBorrowBookSQL);
                if (borrowRes == 0)
                {
                    return false;
                }
                else
                {
                    string PunishNumSQL = "select count(p_id) from ls_punish";
                    int PunishNum = SQLUtil.CountSQL(PunishNumSQL);
                    PunishNum++;
                    string InsertPunishSQL = "insert into ls_punish values(" + PunishNum + " , " + Properties.Settings.Default.RoleId + " , " + borrowRes + " );";
                    int InsertRes = SQLUtil.NoQuerySQL(InsertPunishSQL);
                    if (InsertRes != 0)
                    {
                        return true;
                    }
                    else
                    {
                        throw new Exception("【BorrrowBookUtil - IsOverdueReturnBook 的 InsertPunishSQL 执行后返回结果异常！！！】");
                    }

                }

            }
            return true;
        }

        public static void SetBookInfoValue(Borrow borrow, BookInfoWindow bookWindow)
        {
            int BookId = borrow.BookId;
            string SelectBookInfoSQL = "SELECT bi_id, bi_name, bt_name, bi_press, bi_isbn, bi_author, bi_location, bi_price, bi_pages, bi_addtime, bi_cover_picture FROM ls_bookinfo as t1 LEFT JOIN ls_booktype as t2 on t1.bt_id = t2.bt_id where bi_id = " + BookId + " ;";
            List<Book> bookInfo = SQLUtil.SelectBookInfoSQL(SelectBookInfoSQL);
            bookWindow.BookIdEBI.Text = bookWindow.BookIdEBI.Text + BookId;
            bookWindow.BookName.Text = bookInfo[0].BookName;
            bookWindow.BookAuthor.Text = bookInfo[0].BookAuthor;
            bookWindow.BookType.Text = bookInfo[0].BookType;
            bookWindow.BookLocation.Text = bookInfo[0].BookLocation;
            if (bookInfo[0].BookPhoto != null && bookInfo[0].BookPhoto.Length != 0)
            {
                bookWindow.BookPhoto.Source = OtherUtil.GetBlobPhoto(bookInfo[0].BookPhoto);   
            }
            DateTime PredictReturnBookTime = DateTime.Now;
            DateTime.TryParse(borrow.PredictReturnBookTime, out PredictReturnBookTime);
            bookWindow.BorrowTime.SelectedDate = PredictReturnBookTime.AddDays(30);
        }

        public static void SetBookInfoValue(Book book, BookInfoWindow bookWindow)
        {
            string SelectBookInfoSQL = "SELECT bi_cover_picture FROM ls_bookinfo where bi_id = " + book.Id + " ;";
            book.BookPhoto = SQLUtil.SelectBookPhotoSQL(SelectBookInfoSQL);
            bookWindow.BookIdEBI.Text = bookWindow.BookIdEBI.Text + book.Id;
            bookWindow.BookName.Text = book.BookName;
            bookWindow.BookAuthor.Text = book.BookAuthor;
            bookWindow.BookType.Text = book.BookType;
            bookWindow.BookLocation.Text = book.BookLocation;
            if (book.BookPhoto != null && book.BookPhoto.Length!=0)
            {
                bookWindow.BookPhoto.Source = OtherUtil.GetBlobPhoto(book.BookPhoto);
            }
            DateTime NowTime = DateTime.Now;
            bookWindow.BorrowTime.SelectedDate = NowTime.AddDays(30);
        }

        public static void BorrowBookFun(DateTime NewDateTime, BookInfoWindow thisWindow, int bookId)
        {
            if ((NewDateTime - DateTime.Now).Days > 120)
            {
                string resultText = "最多可借120天（" + (DateTime.Now.AddDays(90)).ToString("yyyy-MM-dd")+")";
                MessageBoxResult result = MessageBox.Show(
               resultText, "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
            }
            else
            {
                string UpdateBookInfoSQLString = "update ls_bookinfo set bi_num = bi_num - 1 where bi_id = " + bookId + " ;";
                int updateRes = SQLUtil.NoQuerySQL(UpdateBookInfoSQLString);
                if (updateRes == 1)
                {
                    string insertBorrowInfoSQLString = "insert into ls_borrow values(null," + Properties.Settings.Default.RoleId + " ," + bookId + ",'" + DateTime.Now + "','" + NewDateTime + "',null,0,0);";
                    int insertRes = SQLUtil.NoQuerySQL(insertBorrowInfoSQLString);
                    if (insertRes == 1)
                    {
                        MessageBoxResult result = MessageBox.Show(
                "借书成功", "提醒", MessageBoxButton.OKCancel, MessageBoxImage.Information);
                        if (result == MessageBoxResult.OK || result == MessageBoxResult.Cancel || result == MessageBoxResult.No)
                        {
                            thisWindow.Close();
                            //获取已经显示的页面
                            MainBook CurrentWindows = Application.Current.Windows.OfType<MainBook>().FirstOrDefault();
                            if (CurrentWindows.mainFrame.Content is BorrowInfo borrowInfo)
                            {
                                borrowInfo.InitDataGrid(1, 12);
                            }
                        }
                    }
                }
            
            }
        }
    }
}
