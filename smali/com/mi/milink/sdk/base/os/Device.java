package com.mi.milink.sdk.base.os;

import com.mi.milink.sdk.base.os.info.DeviceDash;
import com.mi.milink.sdk.base.os.info.DnsDash;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.base.os.info.StorageDash;
import com.mi.milink.sdk.base.os.info.WifiDash;

public class Device
  extends DeviceDash
{
  public static String getInfo()
  {
    return getInstance().getDeviceInfo();
  }
  
  public static class Network
    extends NetworkDash
  {
    public static NetworkDetailInfo getCurrentNetworkDetailInfo()
    {
      NetworkDetailInfo localNetworkDetailInfo = new NetworkDetailInfo();
      localNetworkDetailInfo.apnType = NetworkDash.getApnType();
      localNetworkDetailInfo.apnName = NetworkDash.getApnNameOrWifiOrEthernet();
      localNetworkDetailInfo.wifiInfo = WifiDash.getWifiInfo();
      localNetworkDetailInfo.cellLevel = NetworkDash.getCellLevel();
      return localNetworkDetailInfo;
    }
    
    public static class Dns
      extends DnsDash
    {}
    
    public static class NetworkDetailInfo
    {
      public String apnName;
      public int apnType;
      public int cellLevel;
      public String wifiInfo;
      
      public boolean equals(Object paramObject)
      {
        boolean bool2 = true;
        boolean bool1;
        if ((paramObject == null) || (getClass() != paramObject.getClass())) {
          bool1 = false;
        }
        label101:
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return bool1;
                  bool1 = bool2;
                } while (this == paramObject);
                paramObject = (NetworkDetailInfo)paramObject;
                if ((this.apnType != ((NetworkDetailInfo)paramObject).apnType) || (this.cellLevel != ((NetworkDetailInfo)paramObject).cellLevel)) {
                  break label147;
                }
                if ((this.apnName != null) || (((NetworkDetailInfo)paramObject).apnName != null)) {
                  break label101;
                }
                if (this.wifiInfo != null) {
                  break;
                }
                bool1 = bool2;
              } while (((NetworkDetailInfo)paramObject).wifiInfo == null);
              bool1 = bool2;
            } while (this.wifiInfo.equals(((NetworkDetailInfo)paramObject).wifiInfo));
            if (!this.apnName.equals(((NetworkDetailInfo)paramObject).apnName)) {
              break label147;
            }
            if (this.wifiInfo != null) {
              break;
            }
            bool1 = bool2;
          } while (((NetworkDetailInfo)paramObject).wifiInfo == null);
          bool1 = bool2;
        } while (this.wifiInfo.equals(((NetworkDetailInfo)paramObject).wifiInfo));
        label147:
        return false;
      }
      
      public int hashCode()
      {
        int i = 17;
        if (this.apnName != null) {
          i = this.apnName.hashCode() + 527;
        }
        int j = i;
        if (this.wifiInfo != null) {
          j = i * 31 + this.wifiInfo.hashCode();
        }
        return (j * 31 + this.apnType) * 31 + this.cellLevel;
      }
      
      public String toString()
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("{");
        localStringBuilder.append("apnType=").append(this.apnType);
        localStringBuilder.append(",cellLevel=").append(this.cellLevel);
        localStringBuilder.append(",apnName=").append(this.apnName);
        localStringBuilder.append(",wifiInfo=").append(this.wifiInfo);
        localStringBuilder.append("}");
        return localStringBuilder.toString();
      }
    }
    
    public static abstract class Proxy
      extends Http.HttpProxy
    {}
    
    public static class Wifi
      extends WifiDash
    {}
  }
  
  public static class Storage
    extends StorageDash
  {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\Device.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */