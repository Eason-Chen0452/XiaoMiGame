package com.mi.milink.sdk.base.os.dns;

import com.mi.milink.sdk.base.debug.CustomLogcat;
import java.io.IOException;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;

public class DnsMain
{
  private static final String TAG = DnsMain.class.getName();
  
  public static InetAddress[] getBetterHostByName(String paramString, long paramLong)
  {
    paramString = getHostName(paramString);
    CustomLogcat.w("DNSResolve", "hostName:" + paramString + ",timeout:" + paramLong);
    CustomLogcat.v(TAG, "get better host for name:" + paramString);
    if ((paramString == null) || (paramString.trim().length() <= 0)) {
      paramString = null;
    }
    for (;;)
    {
      return paramString;
      String str = paramString.trim();
      try
      {
        InetAddress[] arrayOfInetAddress = new Lookup("114.114.114.114").run(str, paramLong);
        if (arrayOfInetAddress != null)
        {
          paramString = arrayOfInetAddress;
          if (arrayOfInetAddress.length > 0) {}
        }
        else
        {
          CustomLogcat.e(TAG, "114 - Address == null ? WTF ?!");
        }
      }
      catch (UnknownHostException paramString)
      {
        for (;;)
        {
          CustomLogcat.e(TAG, "UnknownHostException cause[" + str + "][114.114.114.114]." + paramString.getMessage());
        }
      }
      catch (WireParseException paramString)
      {
        for (;;)
        {
          CustomLogcat.e(TAG, "WireParseException cause[" + str + "][114.114.114.114]." + paramString.getMessage());
        }
      }
      catch (SocketTimeoutException paramString)
      {
        for (;;)
        {
          CustomLogcat.e(TAG, "SocketTimeoutException cause[" + str + "][114.114.114.114]." + paramString.getMessage());
        }
      }
      catch (IOException paramString)
      {
        for (;;)
        {
          CustomLogcat.e(TAG, "IOException cause[" + str + "][114.114.114.114]." + paramString.getMessage());
        }
      }
      catch (Exception paramString)
      {
        for (;;)
        {
          CustomLogcat.e(TAG, "Exception cause[" + str + "][114.114.114.114]." + paramString.getMessage());
        }
      }
    }
    return null;
  }
  
  public static String getHostName(String paramString)
  {
    if (paramString == null) {
      paramString = "";
    }
    String str;
    do
    {
      return paramString;
      str = paramString.trim();
      paramString = str.toLowerCase();
      int i;
      if (paramString.startsWith("http://"))
      {
        i = str.indexOf("/", 8);
        if (i > 7) {
          return str.substring(7, i);
        }
        return str.substring(7);
      }
      if (paramString.startsWith("https://"))
      {
        i = str.indexOf("/", 9);
        if (i > 8) {
          return str.substring(8, i);
        }
        return str.substring(8);
      }
      paramString = str;
    } while (str.indexOf("/", 1) <= 1);
    return str.substring(0, str.indexOf("/", 1));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\dns\DnsMain.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */