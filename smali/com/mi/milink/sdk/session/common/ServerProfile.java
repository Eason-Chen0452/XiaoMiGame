package com.mi.milink.sdk.session.common;

import java.io.Serializable;

public class ServerProfile
  implements Serializable
{
  private static final long serialVersionUID = -8956679711781976000L;
  private int mPorxyPort;
  private int mProtocol;
  private String mProxyIP;
  private String mServerIP;
  private int mServerPort;
  private int mServerType;
  
  public ServerProfile(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    this(paramString, paramInt1, null, 0, paramInt2, paramInt3);
  }
  
  public ServerProfile(String paramString1, int paramInt1, String paramString2, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mServerIP = paramString1;
    this.mServerPort = paramInt1;
    this.mProxyIP = paramString2;
    this.mPorxyPort = paramInt2;
    this.mProtocol = paramInt3;
    this.mServerType = paramInt4;
  }
  
  public boolean equals(ServerProfile paramServerProfile)
  {
    if ((this.mServerIP == null) || (this.mServerPort == 0) || (paramServerProfile == null)) {}
    do
    {
      do
      {
        return false;
      } while ((!this.mServerIP.equals(paramServerProfile.getServerIP())) || (this.mServerPort != paramServerProfile.getServerPort()));
      if ((this.mProxyIP == null) && (paramServerProfile.getProxyIP() == null)) {
        return true;
      }
    } while (((this.mProxyIP != null) && (paramServerProfile.getProxyIP() == null)) || ((this.mProxyIP == null) && (paramServerProfile.getProxyIP() != null)) || ((this.mProxyIP != null) && (!this.mProxyIP.equals(paramServerProfile.getProxyIP()))) || (this.mPorxyPort != paramServerProfile.getPorxyPort()));
    return true;
  }
  
  public int getPorxyPort()
  {
    return this.mPorxyPort;
  }
  
  public int getProtocol()
  {
    return this.mProtocol;
  }
  
  public String getProxyIP()
  {
    return this.mProxyIP;
  }
  
  public String getServerIP()
  {
    return this.mServerIP;
  }
  
  public int getServerPort()
  {
    return this.mServerPort;
  }
  
  public int getServerType()
  {
    return this.mServerType;
  }
  
  public boolean isBetterThan(ServerProfile paramServerProfile)
  {
    if (paramServerProfile == null) {}
    do
    {
      return true;
      if ((this.mServerIP == null) || (this.mServerPort == 0)) {
        return false;
      }
      if (this.mProtocol != 1) {
        break;
      }
    } while ((this.mServerType == 2) || (paramServerProfile.getProtocol() != 1) || (paramServerProfile.getServerType() != 2));
    return false;
    return false;
  }
  
  public void setPorxyPort(int paramInt)
  {
    this.mPorxyPort = paramInt;
  }
  
  public void setProtocol(int paramInt)
  {
    this.mProtocol = paramInt;
  }
  
  public void setProxyIP(String paramString)
  {
    this.mProxyIP = paramString;
  }
  
  public void setServerIP(String paramString)
  {
    this.mServerIP = paramString;
  }
  
  public void setServerPort(int paramInt)
  {
    this.mServerPort = paramInt;
  }
  
  public void setServerType(int paramInt)
  {
    this.mServerType = paramInt;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[ ");
    localStringBuilder.append("sIP=").append(this.mServerIP);
    localStringBuilder.append(", sPort=").append(this.mServerPort);
    localStringBuilder.append(", pIP=").append(this.mProxyIP);
    localStringBuilder.append(", pPort=").append(this.mPorxyPort);
    localStringBuilder.append(", protocol=").append(SessionConst.getProtocol(this.mProtocol));
    localStringBuilder.append(", type=").append(SessionConst.getSeverType(this.mServerType));
    localStringBuilder.append(" ]");
    return localStringBuilder.toString();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\common\ServerProfile.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */