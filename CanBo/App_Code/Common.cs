using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Common
/// </summary>
public static  class Common
{
    public static int TryParseObjectToInt(object s)
    {
        int i;
        if (!int.TryParse(s + "", out i))
        {
            return 0;
        }
        else
        {
            return i;
        }
    }
    public static decimal TryParseObjectToDecemal(object s)
    {
        decimal i;
        if (!decimal.TryParse(s + "", out i))
        {
            return 0;
        }
        else
        {
            return i;
        }
    }
    public static bool ObjectIsInteger(object s)
    {
        int i;
        if (!int.TryParse(s + "", out i))
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public static string ImageToBase64string(Stream path)
    {
        string base64String = null;
        using (System.Drawing.Image image = System.Drawing.Image.FromStream(path))
        {
            using (MemoryStream m = new MemoryStream())
            {
                image.Save(m, image.RawFormat);
                byte[] imageBytes = m.ToArray();
                base64String = Convert.ToBase64String(imageBytes);
                return base64String;
            }
        }
    }

    public static System.Drawing.Image Base64ToImage(string base64String)
    {
        byte[] imageBytes = Convert.FromBase64String(base64String);
        MemoryStream ms = new MemoryStream(imageBytes, 0, imageBytes.Length);
        ms.Write(imageBytes, 0, imageBytes.Length);
        System.Drawing.Image image = System.Drawing.Image.FromStream(ms, true);
        return image;
    }  
}
 