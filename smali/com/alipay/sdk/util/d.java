package com.alipay.sdk.util;

public enum d
{
  public String p;
  private int q;
  
  private d(int paramInt, String paramString)
  {
    this.q = paramInt;
    this.p = paramString;
  }
  
  private int a()
  {
    return this.q;
  }
  
  public static d a(int paramInt)
  {
    d[] arrayOfd = values();
    int i2 = arrayOfd.length;
    int i1 = 0;
    while (i1 < i2)
    {
      d locald = arrayOfd[i1];
      if (locald.q == paramInt) {
        return locald;
      }
      i1 += 1;
    }
    return o;
  }
  
  private String b()
  {
    return this.p;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\util\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */