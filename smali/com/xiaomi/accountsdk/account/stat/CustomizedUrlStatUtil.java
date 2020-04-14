package com.xiaomi.accountsdk.account.stat;

import com.xiaomi.accountsdk.account.XMPassportSettings;
import com.xiaomi.accountsdk.hasheddeviceidlib.HashedDeviceIdUtil;

public class CustomizedUrlStatUtil
{
  private final String a;
  private long b = -1L;
  private boolean c = false;
  
  public CustomizedUrlStatUtil(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("url can't be null");
    }
    this.a = String.format("http://dummyurl/%s/_ver=%s&hdid=%s", new Object[] { paramString1, paramString2, new HashedDeviceIdUtil(XMPassportSettings.d()).a() });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\stat\CustomizedUrlStatUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */