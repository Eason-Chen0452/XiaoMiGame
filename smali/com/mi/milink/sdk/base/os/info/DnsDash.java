package com.mi.milink.sdk.base.os.info;

import android.net.DhcpInfo;
import android.net.wifi.WifiManager;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.data.Convert;
import com.mi.milink.sdk.base.os.Console;
import com.mi.milink.sdk.base.os.dns.DnsMain;
import java.net.InetAddress;

public class DnsDash
{
  private static DnsInfo localDnsInfo = null;
  
  public static InetAddress[] getHostByName(String paramString, long paramLong)
  {
    return DnsMain.getBetterHostByName(paramString, paramLong);
  }
  
  public static DnsInfo getLocalDns()
  {
    try
    {
      DnsInfo localDnsInfo1 = localDnsInfo;
      return localDnsInfo1;
    }
    finally {}
  }
  
  public static void setLocalDns(DnsInfo paramDnsInfo)
  {
    try
    {
      localDnsInfo = paramDnsInfo;
      return;
    }
    finally {}
  }
  
  public static DnsInfo updateLocalDns()
  {
    DnsInfo localDnsInfo1 = new DnsInfo();
    Object localObject;
    if (NetworkDash.isWifi())
    {
      localObject = (WifiManager)Global.getSystemService("wifi");
      if (localObject == null) {}
    }
    for (;;)
    {
      try
      {
        localObject = ((WifiManager)localObject).getDhcpInfo();
        if (localObject != null)
        {
          localDnsInfo1.setWifiPreDns(Convert.intToIPv4(((DhcpInfo)localObject).dns1));
          localDnsInfo1.setWifiAltDns(Convert.intToIPv4(((DhcpInfo)localObject).dns2));
        }
      }
      catch (Exception localException)
      {
        String str;
        continue;
      }
      setLocalDns(localDnsInfo1);
      return getLocalDns();
      localObject = Console.execute("getprop net.dns1", 1500L);
      str = Console.execute("getprop net.dns2", 1500L);
      localDnsInfo1.setCurrPreDns((String)localObject);
      localDnsInfo1.setCurrAltDns(str);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\info\DnsDash.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */