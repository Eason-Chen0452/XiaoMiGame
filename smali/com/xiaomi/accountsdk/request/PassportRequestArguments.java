package com.xiaomi.accountsdk.request;

import com.xiaomi.accountsdk.utils.EasyMap;

public class PassportRequestArguments
{
  protected final EasyMap<String, String> a = new EasyMap();
  protected final EasyMap<String, String> b = new EasyMap();
  protected final EasyMap<String, String> c = new EasyMap();
  protected final EasyMap<String, String> d = new EasyMap();
  protected boolean e = true;
  protected String f = null;
  protected Integer g = null;
  
  public final PassportRequestArguments a()
  {
    PassportRequestArguments localPassportRequestArguments = new PassportRequestArguments();
    EasyMap localEasyMap = this.b;
    if (localEasyMap != null) {
      localPassportRequestArguments.b.putAll(localEasyMap);
    }
    localEasyMap = this.a;
    if (localEasyMap != null) {
      localPassportRequestArguments.a.putAll(localEasyMap);
    }
    localEasyMap = this.d;
    if (localEasyMap != null) {
      localPassportRequestArguments.d.putAll(localEasyMap);
    }
    localEasyMap = this.c;
    if (localEasyMap != null) {
      localPassportRequestArguments.c.putAll(localEasyMap);
    }
    localPassportRequestArguments.f = this.f;
    localPassportRequestArguments.e = this.e;
    localPassportRequestArguments.g = this.g;
    return localPassportRequestArguments;
  }
  
  public final void a(String paramString)
  {
    this.f = paramString;
  }
  
  public final void a(String paramString1, String paramString2)
  {
    this.a.a(paramString1, paramString2);
  }
  
  public final void b(String paramString1, String paramString2)
  {
    this.c.a(paramString1, paramString2);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\request\PassportRequestArguments.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */