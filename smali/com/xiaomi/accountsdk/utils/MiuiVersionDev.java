package com.xiaomi.accountsdk.utils;

import java.util.regex.Pattern;

public class MiuiVersionDev
  implements Comparable<MiuiVersionDev>
{
  private static final Pattern d = Pattern.compile("^(\\d)\\.(\\d{1,2})\\.(\\d{1,2})$");
  public final int a;
  public final int b;
  public final int c;
  
  public MiuiVersionDev(int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
  }
  
  private int a()
  {
    return this.c + this.b * 100 + this.a * 10000;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof MiuiVersionDev)) {
        return false;
      }
      paramObject = (MiuiVersionDev)paramObject;
      if (this.a != ((MiuiVersionDev)paramObject).a) {
        return false;
      }
      if (this.b != ((MiuiVersionDev)paramObject).b) {
        return false;
      }
    } while (this.c == ((MiuiVersionDev)paramObject).c);
    return false;
  }
  
  public int hashCode()
  {
    return (this.a * 31 + this.b) * 31 + this.c;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\MiuiVersionDev.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */