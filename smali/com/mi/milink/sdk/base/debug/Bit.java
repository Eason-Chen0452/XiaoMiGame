package com.mi.milink.sdk.base.debug;

public final class Bit
{
  public static final int add(int paramInt1, int paramInt2)
  {
    return paramInt1 | paramInt2;
  }
  
  public static final boolean has(int paramInt1, int paramInt2)
  {
    return paramInt2 == (paramInt1 & paramInt2);
  }
  
  public static final int log2(int paramInt)
  {
    return (int)(Math.log(paramInt) / Math.log(2.0D));
  }
  
  public static final int remove(int paramInt1, int paramInt2)
  {
    return paramInt1 & paramInt2 ^ paramInt1;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\debug\Bit.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */