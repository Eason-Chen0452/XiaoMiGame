package com.xiaomi.accountsdk.account.data;

import java.util.ArrayList;

public class XiaomiUserInfo
{
  private String a;
  private String b;
  private String c;
  private String d;
  private ArrayList<String> e;
  private String f;
  private String g;
  
  public XiaomiUserInfo(String paramString)
  {
    this.a = paramString;
  }
  
  public XiaomiUserInfo(String paramString, XiaomiUserCoreInfo paramXiaomiUserCoreInfo)
  {
    this.a = paramString;
    if (paramXiaomiUserCoreInfo != null)
    {
      this.b = paramXiaomiUserCoreInfo.a;
      this.g = paramXiaomiUserCoreInfo.b;
      this.c = paramXiaomiUserCoreInfo.c;
      this.d = paramXiaomiUserCoreInfo.d;
      this.e = paramXiaomiUserCoreInfo.e;
      this.f = paramXiaomiUserCoreInfo.f;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\XiaomiUserInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */