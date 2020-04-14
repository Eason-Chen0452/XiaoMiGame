package com.mi.milink.sdk.base.os.info;

public class DnsInfo
{
  protected String currAltDns = "none";
  protected String currPreDns = "none";
  protected String wifiAltDns = "none";
  protected String wifiPreDns = "none";
  
  public String getCurrAltDns()
  {
    return this.currAltDns;
  }
  
  public String getCurrPreDns()
  {
    return this.currPreDns;
  }
  
  public String getWifiAltDns()
  {
    return this.wifiAltDns;
  }
  
  public String getWifiPreDns()
  {
    return this.wifiPreDns;
  }
  
  public void setCurrAltDns(String paramString)
  {
    this.currAltDns = paramString;
  }
  
  public void setCurrPreDns(String paramString)
  {
    this.currPreDns = paramString;
  }
  
  public void setWifiAltDns(String paramString)
  {
    this.wifiAltDns = paramString;
  }
  
  public void setWifiPreDns(String paramString)
  {
    this.wifiPreDns = paramString;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer1 = new StringBuffer();
    StringBuffer localStringBuffer2 = localStringBuffer1.append("[");
    if (this.currPreDns == null)
    {
      str = "none";
      localStringBuffer2.append(str).append(",");
      if (this.currAltDns != null) {
        break label112;
      }
      str = "none";
      label46:
      localStringBuffer1.append(str).append(";");
      if (this.wifiPreDns != null) {
        break label120;
      }
      str = "none";
      label67:
      localStringBuffer1.append(str).append(";");
      if (this.wifiAltDns != null) {
        break label128;
      }
    }
    label112:
    label120:
    label128:
    for (String str = "none";; str = this.wifiAltDns)
    {
      localStringBuffer1.append(str).append("]");
      return localStringBuffer1.toString();
      str = this.currPreDns;
      break;
      str = this.currAltDns;
      break label46;
      str = this.wifiPreDns;
      break label67;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\info\DnsInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */