using System;
using System.Collections.Generic;
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
}
 