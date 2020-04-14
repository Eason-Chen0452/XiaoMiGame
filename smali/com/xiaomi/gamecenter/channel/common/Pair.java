package com.xiaomi.gamecenter.channel.common;

public final class Pair<A, B>
{
  private final A mFirst;
  private final B mSecond;
  
  private Pair(A paramA, B paramB)
  {
    this.mFirst = paramA;
    this.mSecond = paramB;
  }
  
  public static <A, B> Pair<A, B> create(A paramA, B paramB)
  {
    return new Pair(paramA, paramB);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (Pair)paramObject;
        if (this.mFirst == null)
        {
          if (((Pair)paramObject).mFirst != null) {
            return false;
          }
        }
        else if (!this.mFirst.equals(((Pair)paramObject).mFirst)) {
          return false;
        }
        if (this.mSecond != null) {
          break;
        }
      } while (((Pair)paramObject).mSecond == null);
      return false;
    } while (this.mSecond.equals(((Pair)paramObject).mSecond));
    return false;
  }
  
  public final A getFirst()
  {
    return (A)this.mFirst;
  }
  
  public final B getSecond()
  {
    return (B)this.mSecond;
  }
  
  public final int hashCode()
  {
    int j = 0;
    int i;
    if (this.mFirst == null)
    {
      i = 0;
      if (this.mSecond != null) {
        break label39;
      }
    }
    for (;;)
    {
      return (i + 31) * 31 + j;
      i = this.mFirst.hashCode();
      break;
      label39:
      j = this.mSecond.hashCode();
    }
  }
  
  public final String toString()
  {
    return "first = " + this.mFirst + " , second = " + this.mSecond;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\common\Pair.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */