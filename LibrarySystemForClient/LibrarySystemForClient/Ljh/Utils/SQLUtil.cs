using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LibrarySystemForClient.Ljh.Model;
using LibrarySystemForClient.Ljh.ViewModel;
using MySql.Data.MySqlClient;

namespace LibrarySystemForClient.Ljh.Utils
{
    public class SQLUtil
    {
        private static MySqlConnection ConnectionMySQL()
        {
            MySqlConnection Msc = null;
            try
            {
                string ConString = "Server=localhost;Database=librarysystem;uid=root;pwd=20020516;";
                Msc = new MySqlConnection(ConString);
                Msc.Open();

            }
            catch (Exception e)
            {
                throw new Exception("\n【在SQLUtil的 ConnectionMySQL 中出现错误(获取MySQL连接失败)】：\n" + e.Message);
            }
            return Msc;
        }

        public static List<Borrow> SelectAllBorrowInfoByPage(int PageNum, int PageSize, string Condition)
        {
            List<Borrow> borrowInfo = new List<Borrow>();
            MySqlConnection Msc = null;
            MySqlCommand Mcd = null;
            string SelectAllBorrowInfoByPageSQL = "";
            if (Condition == null)
            {
                SelectAllBorrowInfoByPageSQL = "SELECT bb_id, r_id, bi_id, bb_lendtime, bb_returntime, bb_real_returntime, bb_isreborrow, bb_reborrow_days FROM ls_borrow where r_id = " + Properties.Settings.Default.RoleId + " and bb_real_returntime is null" + " limit  " + PageSize + " offset " + (PageNum - 1) * PageSize + ";";
            }
            else
            {
                SelectAllBorrowInfoByPageSQL = getConditionSelectSQLString(Condition, "Borrow");
            }
            try
            {
                Msc = ConnectionMySQL();
                Mcd = new MySqlCommand(SelectAllBorrowInfoByPageSQL, Msc);
                MySqlDataReader reader = Mcd.ExecuteReader();

                while (reader.Read())
                {
                    Borrow borrow = new Borrow();
                    borrow.Id = reader.GetInt32(0);
                    borrow.RId = reader.GetInt32(1);
                    borrow.BookId = reader.GetInt32(2);
                    if (!reader.IsDBNull(reader.GetOrdinal("bb_lendtime")))
                    {
                        borrow.BorrowBookTime = reader.GetDateTime(3).ToString("yyyy年MM月dd日");
                    }
                    else
                    {
                        borrow.BorrowBookTime = "";
                    }
                    if (!reader.IsDBNull(reader.GetOrdinal("bb_returntime")))
                    {
                        borrow.PredictReturnBookTime = reader.GetDateTime(4).ToString("yyyy年MM月dd日");
                    }
                    else
                    {
                        borrow.PredictReturnBookTime = "";
                    }
                    if (!reader.IsDBNull(reader.GetOrdinal("bb_real_returntime")))
                    {
                        borrow.RealReturnBookTime = reader.GetDateTime(5).ToString("yyyy年MM月dd日");
                    }
                    else
                    {
                        borrow.RealReturnBookTime = "";
                    }
                    borrow.IsReborrow = reader.GetInt32(6) == 0 ? "否" : "是";
                    borrow.ReborrowDay = reader.GetInt32(7);
                    borrowInfo.Add(borrow);
                }
            }
            catch (MySqlException e)
            {
                throw new Exception("\n【SQLUtil的 SelectAllBorrowInfoByPage 出现异常（无条件分页查询borrow表信息SQL出错）】：\n" + e);
            }
            finally
            {
                if (Msc != null)
                {
                    Msc.Close();
                }
            }

            return borrowInfo;
        }

        public static List<Book> SelectBookInfoByPage(string sql)
        {
            List<Book> bookInfo = new List<Book>();
            MySqlConnection Msc = null;
            MySqlCommand Mcd = null;
            try
            {
                Msc = ConnectionMySQL();
                Mcd = new MySqlCommand(sql, Msc);
                MySqlDataReader reader = Mcd.ExecuteReader();

                while (reader.Read())
                {
                    Book book = new Book();
                    book.Id = reader.GetInt32(0);
                    book.BookName = reader.GetString(1);
                    book.BookType = reader.GetString(2);
                    book.BookPress = reader.GetString(3);
                    book.BookISBN = reader.GetString(4);
                    book.BookAuthor = reader.GetString(5);
                    book.BookLocation = reader.GetString(6);
                    book.BookPrice = reader.GetDecimal(7);
                    book.PageNum = reader.GetInt32(8);
                    book.BookNum = reader.GetInt32(9);
                    bookInfo.Add(book);
                }
            }
            catch (MySqlException e)
            {
                throw new Exception("\n【SQLUtil的 SelectBookInfoByPage 出现异常（查询book表信息SQL出错）】：\n" + e);
            }
            finally
            {
                if (Msc != null)
                {
                    Msc.Close();
                }
            }

            return bookInfo;
        }

        public static List<ManageBookViewModel> SelectManageBookViewModelByPage(string sql)
        {
            List<ManageBookViewModel> manageBookViewModels = new List<ManageBookViewModel>();
            MySqlConnection Msc = null;
            MySqlCommand Mcd = null;
            try
            {
                Msc = ConnectionMySQL();
                Mcd = new MySqlCommand(sql, Msc);
                MySqlDataReader reader = Mcd.ExecuteReader();

                while (reader.Read())
                {
                    ManageBookViewModel manageBookViewModel = new ManageBookViewModel();
                    manageBookViewModel.CheckBoxValue = false;
                    manageBookViewModel.Id = reader.GetInt32(0);
                    manageBookViewModel.BookName = reader.GetString(1);
                    manageBookViewModel.BookTypeId = reader.GetInt32(2);
                    manageBookViewModel.BookPress = reader.GetString(3);
                    manageBookViewModel.BookISBN = reader.GetString(4);
                    manageBookViewModel.BookAuthor = reader.GetString(5);
                    manageBookViewModel.BookLocation = reader.GetString(6);
                    manageBookViewModel.BookPrice = reader.GetDecimal(7);
                    manageBookViewModel.PageNum = reader.GetInt32(8);
                    manageBookViewModel.BookAddTime = reader.GetDateTime(9).ToString("yyyy-MM-dd HH:mm:ss");
                    manageBookViewModel.BookNum = reader.GetInt32(10);
                    object data = reader.GetValue(11);
                    byte[] datas = data as byte[];
                    if (datas != null && datas.Length != 0)
                    {
                        manageBookViewModel.BookPhoto = (byte[])reader["bi_cover_picture"];
                    }
                    manageBookViewModels.Add(manageBookViewModel);

                }
            }
            catch (MySqlException e)
            {
                throw new Exception("\n【SQLUtil的 SelectManageBookViewModelByPage 出现异常（查询book(图书管理)表信息SQL出错）】：\n" + e);
            }
            finally
            {
                if (Msc != null)
                {
                    Msc.Close();
                }
            }

            return manageBookViewModels;
        }

        public static List<Book> SelectBookInfoSQL(string sql)
        {
            List<Book> bookInfo = new List<Book>();
            MySqlConnection Msc = null;
            MySqlCommand Mcd = null;
            try
            {
                Msc = ConnectionMySQL();
                Mcd = new MySqlCommand(sql, Msc);
                MySqlDataReader reader = Mcd.ExecuteReader();

                while (reader.Read())
                {
                    Book book = new Book();
                    book.Id = reader.GetInt32(0);
                    book.BookName = reader.GetString(1);
                    book.BookType = reader.GetString(2);
                    book.BookPress = reader.GetString(3);
                    book.BookISBN = reader.GetString(4);
                    book.BookAuthor = reader.GetString(5);
                    book.BookLocation = reader.GetString(6);
                    book.BookPrice = reader.GetDecimal(7);
                    book.PageNum = reader.GetInt32(8);
                    object data = reader.GetValue(9);
                    byte[] datas = data as byte[];
                    if (datas!=null && datas.Length != 0)
                    {
                        book.BookPhoto = (byte[])reader["bi_cover_picture"];
                    }

                    bookInfo.Add(book);
                }
            }
            catch (MySqlException e)
            {
                throw new Exception("\n【SQLUtil的 SelectBookInfoSQL 出现异常（查询bookinfo表信息SQL出错）】：\n" + e);
            }
            finally
            {
                if (Msc != null)
                {
                    Msc.Close();
                }
            }

            return bookInfo;
        }
        public static byte[] SelectBookPhotoSQL(string sql)
        {
            byte[] Photo = null;
            MySqlConnection Msc = null;
            MySqlCommand Mcd = null;
            try
            {
                Msc = ConnectionMySQL();
                Mcd = new MySqlCommand(sql, Msc);
                MySqlDataReader reader = Mcd.ExecuteReader();

                while (reader.Read())
                {
                    object data = reader.GetValue(0);
                    byte[] datas = data as byte[];
                    if (datas != null && datas.Length != 0)
                    {
                        Photo = (byte[])reader["bi_cover_picture"];
                    }
                }
            }
            catch (MySqlException e)
            {
                throw new Exception("\n【SQLUtil的 SelectBookInfoSQL 出现异常（查询bookinfo表信息SQL出错）】：\n" + e);
            }
            finally
            {
                if (Msc != null)
                {
                    Msc.Close();
                }
            }

            return Photo;
        }

        private static string getConditionSelectSQLString(string Condition, string TableName)
        {

            return "";
        }

        public static int NoQuerySQL(string sql)
        {
            int res = 0;
            MySqlConnection Msc = null;
            try
            {
                Msc = ConnectionMySQL();
                MySqlCommand MC = new MySqlCommand(sql, Msc);
                res = MC.ExecuteNonQuery();
            }
            catch (MySqlException e)
            {
                throw new Exception("\n【SQLUtil的 NoQuerySQL 出现异常（非查询SQL出错）】：\n" + e);
            }
            finally
            {
                if (Msc != null)
                {
                    Msc.Close();
                }

            }

            return res;
        }

        public static int CountSQL(string sql)
        {
            int res = 0;
            MySqlConnection Msc = null;
            try
            {
                Msc = ConnectionMySQL();
                MySqlCommand MC = new MySqlCommand(sql, Msc);
                res = Convert.ToInt32(MC.ExecuteScalar());
            }
            catch (MySqlException e)
            {
                throw new Exception("\n【SQLUtil的 CountSQL 出现异常（count聚合函数SQL出错）】：\n" + e);
            }
            finally
            {
                if (Msc != null)
                {
                    Msc.Close();
                }

            }

            return res;
        }

        public static string QueryBookOldBorrowTimeAndDay(string sql)
        {
            string res = "";
            MySqlConnection Msc = null;
            try
            {
                Msc = ConnectionMySQL();
                MySqlCommand Mcd = new MySqlCommand(sql, Msc);
                MySqlDataReader reader = Mcd.ExecuteReader();
                while (reader.Read())
                {
                    res = reader.GetDateTime(0) + "," + reader.GetInt32(1);
                }
            }
            catch (MySqlException e)
            {
                throw new Exception("\n【SQLUtil的 QueryBookOldBorrowTime 出现异常（查询书籍旧的归还时间出错）】：\n" + e);
            }
            finally
            {
                if (Msc != null)
                {
                    Msc.Close();
                }

            }

            return res;
        }


        public static bool IsBorrowThisBook(int bookId)
        {
            bool res = true;
            MySqlConnection Msc = null;
            String Sql = "select count(bb_id) from ls_borrow where bi_id = " + bookId + " and r_id = " + Properties.Settings.Default.RoleId + " and bb_real_returntime is null ;";
            try
            {
                Msc = ConnectionMySQL();
                MySqlCommand MC = new MySqlCommand(Sql, Msc);
                res = Convert.ToInt32(MC.ExecuteScalar()) >= 1;
            }
            catch (MySqlException e)
            {
                throw new Exception("\n【SQLUtil的 CountSQL 出现异常（count聚合函数SQL出错）】：\n" + e);
            }
            finally
            {
                if (Msc != null)
                {
                    Msc.Close();
                }

            }

            return res;
        }
    }
}
