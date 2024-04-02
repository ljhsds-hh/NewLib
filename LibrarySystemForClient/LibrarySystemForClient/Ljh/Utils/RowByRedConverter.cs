using LibrarySystemForClient.Ljh.Model;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace LibrarySystemForClient.Ljh.Utils
{
    public class RowByRedConverter:IValueConverter
    {
        public object Convert(object value,Type targetType,object parameter,CultureInfo culture)
        {
            var row = value as Borrow; 
            if (row != null && row.PredictReturnBookTime != null && (row.RealReturnBookTime==null) || row.RealReturnBookTime.Equals(""))
            {
                DateTime PredictReturnBookTime;
                if (DateTime.TryParse(row.PredictReturnBookTime, out PredictReturnBookTime))
                {
                    return   (DateTime.Now - PredictReturnBookTime).Days > 0;
                }
            }
            return false;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
