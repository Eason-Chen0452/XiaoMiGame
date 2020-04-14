package com.xiaomi.gamecenter.sdk.bean;

import org.xiaomi.gamecenter.milink.msg.LoginProto.CheckSdkVersionRsp;

public class DownloadDialogInfo
{
  private String a;
  private String b;
  private long c;
  private boolean d;
  private String e;
  private String f;
  
  public DownloadDialogInfo(String paramString1, String paramString2, long paramLong, boolean paramBoolean, String paramString3, String paramString4)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramLong;
    this.d = paramBoolean;
    this.e = paramString3;
    this.f = paramString4;
  }
  
  public DownloadDialogInfo(LoginProto.CheckSdkVersionRsp paramCheckSdkVersionRsp)
  {
    this.a = paramCheckSdkVersionRsp.getServiceDownloadUrl();
    this.b = paramCheckSdkVersionRsp.getMd5();
    this.c = paramCheckSdkVersionRsp.getSize();
    this.d = paramCheckSdkVersionRsp.getForce();
    this.e = paramCheckSdkVersionRsp.getGuideLink();
    this.f = paramCheckSdkVersionRsp.getGuideWord();
  }
  
  public final String a()
  {
    return this.a;
  }
  
  public final String b()
  {
    return this.b;
  }
  
  public final long c()
  {
    return this.c;
  }
  
  public final boolean d()
  {
    return this.d;
  }
  
  public final String e()
  {
    return this.e;
  }
  
  public final String f()
  {
    return this.f;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\bean\DownloadDialogInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */