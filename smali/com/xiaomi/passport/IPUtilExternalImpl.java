package com.xiaomi.passport;

import android.content.Context;

public class IPUtilExternalImpl
{
  private final Context a;
  
  public IPUtilExternalImpl(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context can't be null");
    }
    this.a = paramContext.getApplicationContext();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\IPUtilExternalImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */