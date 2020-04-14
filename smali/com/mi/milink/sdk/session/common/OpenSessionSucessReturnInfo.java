package com.mi.milink.sdk.session.common;

import java.util.ArrayList;

public class OpenSessionSucessReturnInfo
{
  private ArrayList<ServerProfile> backupServerList;
  private String clientIp;
  private String clientIsp;
  private ArrayList<ServerProfile> optmumServerList;
  
  public OpenSessionSucessReturnInfo(String paramString1, String paramString2, ArrayList<ServerProfile> paramArrayList1, ArrayList<ServerProfile> paramArrayList2)
  {
    this.clientIp = paramString1;
    this.clientIsp = paramString2;
    this.optmumServerList = paramArrayList1;
    this.backupServerList = paramArrayList2;
  }
  
  public ArrayList<ServerProfile> getBackupServerList()
  {
    return this.backupServerList;
  }
  
  public String getClientIp()
  {
    return this.clientIp;
  }
  
  public String getClientIsp()
  {
    return this.clientIsp;
  }
  
  public ArrayList<ServerProfile> getOptmumServerList()
  {
    return this.optmumServerList;
  }
  
  public void setBackupServerList(ArrayList<ServerProfile> paramArrayList)
  {
    this.backupServerList = paramArrayList;
  }
  
  public void setClientIp(String paramString)
  {
    this.clientIp = paramString;
  }
  
  public void setClientIsp(String paramString)
  {
    this.clientIsp = paramString;
  }
  
  public void setOptmumServerList(ArrayList<ServerProfile> paramArrayList)
  {
    this.optmumServerList = paramArrayList;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\common\OpenSessionSucessReturnInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */