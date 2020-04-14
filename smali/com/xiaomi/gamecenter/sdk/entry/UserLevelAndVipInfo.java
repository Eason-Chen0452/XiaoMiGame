package com.xiaomi.gamecenter.sdk.entry;

import org.xiaomi.gamecenter.milink.msg.VipProtos.GetUserLevelInfoRsp;
import org.xiaomi.gamecenter.milink.msg.VipProtos.QueryVipUserRsp;

public class UserLevelAndVipInfo
{
  private long id;
  private boolean isServiceUsr;
  private VipProtos.QueryVipUserRsp memInfo;
  private VipProtos.GetUserLevelInfoRsp vipLevelInfo;
  
  public UserLevelAndVipInfo(long paramLong, boolean paramBoolean, VipProtos.GetUserLevelInfoRsp paramGetUserLevelInfoRsp, VipProtos.QueryVipUserRsp paramQueryVipUserRsp)
  {
    this.id = paramLong;
    this.isServiceUsr = paramBoolean;
    this.vipLevelInfo = paramGetUserLevelInfoRsp;
    this.memInfo = paramQueryVipUserRsp;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public VipProtos.QueryVipUserRsp getMemInfo()
  {
    return this.memInfo;
  }
  
  public VipProtos.GetUserLevelInfoRsp getVipLevelInfo()
  {
    return this.vipLevelInfo;
  }
  
  public boolean isServiceUsr()
  {
    return this.isServiceUsr;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setMemInfo(VipProtos.QueryVipUserRsp paramQueryVipUserRsp)
  {
    this.memInfo = paramQueryVipUserRsp;
  }
  
  public void setServiceUsr(boolean paramBoolean)
  {
    this.isServiceUsr = paramBoolean;
  }
  
  public void setVipLevelInfo(VipProtos.GetUserLevelInfoRsp paramGetUserLevelInfoRsp)
  {
    this.vipLevelInfo = paramGetUserLevelInfoRsp;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\UserLevelAndVipInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */