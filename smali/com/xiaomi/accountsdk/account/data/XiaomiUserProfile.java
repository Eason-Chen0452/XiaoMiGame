package com.xiaomi.accountsdk.account.data;

import java.util.Calendar;

public class XiaomiUserProfile
{
  private String a;
  private String b;
  private Gender c;
  private Calendar d;
  
  public XiaomiUserProfile(String paramString)
  {
    this(paramString, null, null, null);
  }
  
  public XiaomiUserProfile(String paramString, XiaomiUserCoreInfo paramXiaomiUserCoreInfo)
  {
    this.a = paramString;
    if (paramXiaomiUserCoreInfo != null)
    {
      this.b = paramXiaomiUserCoreInfo.a;
      this.c = paramXiaomiUserCoreInfo.g;
      this.d = paramXiaomiUserCoreInfo.h;
    }
  }
  
  public XiaomiUserProfile(String paramString1, String paramString2, Calendar paramCalendar, Gender paramGender)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramGender;
    this.d = paramCalendar;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\XiaomiUserProfile.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */