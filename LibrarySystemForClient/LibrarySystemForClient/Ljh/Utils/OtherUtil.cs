
using LibrarySystemForClient.Ljh.Windows;
using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace LibrarySystemForClient.Ljh.Utils
{
    public class OtherUtil
    {
        public static void SetMenuStyle(Button setButton, Button clearButton, MainBook mainBook)
        {
            setButton.Background = clearButton.Background;
            setButton.BorderThickness = new Thickness(1);
            string baseName = setButton.Name;
            string iconName = baseName + "Icon";
            string tbkName = baseName + "Tbk";
            PackIcon packIcon = mainBook.FindName(iconName) as PackIcon;
            packIcon.Foreground = Brushes.White;
            packIcon.Height = 35;
            packIcon.Width = 35;

            TextBlock textBlock = mainBook.FindName(tbkName) as TextBlock;

            textBlock.Foreground = Brushes.White;
            textBlock.FontSize = 25;


            clearButton.Background = Brushes.Transparent;
            clearButton.BorderThickness = new Thickness(0);
            baseName = clearButton.Name;
            iconName = baseName + "Icon";
            tbkName = baseName + "Tbk";
            packIcon = mainBook.FindName(iconName) as PackIcon;

            packIcon.Foreground = Brushes.Black;
            packIcon.Height = 30;
            packIcon.Width = 30;

            textBlock = mainBook.FindName(tbkName) as TextBlock;

            textBlock.Foreground = Brushes.Black;
            textBlock.FontSize = 20;
        }

        public static BitmapImage GetBlobPhoto(byte[] Photo)
        {
            //将二进制转化为内存流
            MemoryStream ms = new MemoryStream(Photo);

            //创建BitmapImage并设置源
            BitmapImage bitmapImage = new BitmapImage();
            bitmapImage.BeginInit();
            bitmapImage.CacheOption = BitmapCacheOption.OnLoad; // 加载缓存图像释放内存
            bitmapImage.StreamSource = ms;
            bitmapImage.EndInit();
            ms.Seek(0, SeekOrigin.Begin);
            return bitmapImage;
        }
    }
}
