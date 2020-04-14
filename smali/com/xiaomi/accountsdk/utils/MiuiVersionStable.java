package com.xiaomi.accountsdk.utils;

import java.util.regex.Pattern;

public class MiuiVersionStable
  implements Comparable<MiuiVersionStable>
{
  private static final Pattern c = Pattern.compile("^V(\\d+)\\.(\\d+)\\.\\d+\\.\\d+\\.[A-Z]{7}$");
  public final int a;
  public final int b;
  
  public MiuiVersionStable(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }
  
  private int a()
  {
    return this.a * 100 + this.b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof MiuiVersionStable)) {
        return false;
      }
      paramObject = (MiuiVersionStable)paramObject;
      if (this.a != ((MiuiVersionStable)paramObject).a) {
        return false;
      }
    } while (this.b == ((MiuiVersionStable)paramObject).b);
    return false;
  }
  
  public int hashCode()
  {
    return this.a * 31 + this.b;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\MiuiVersionStable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */