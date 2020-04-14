package com.xiaomi.greendao.query;

import java.util.List;

public abstract class WhereCondition$AbstractCondition
  implements f
{
  protected final boolean a;
  protected final Object b;
  protected final Object[] c;
  
  public WhereCondition$AbstractCondition()
  {
    this.a = false;
    this.b = null;
    this.c = null;
  }
  
  public WhereCondition$AbstractCondition(Object paramObject)
  {
    this.b = paramObject;
    this.a = true;
    this.c = null;
  }
  
  public WhereCondition$AbstractCondition(Object[] paramArrayOfObject)
  {
    this.b = null;
    this.a = false;
    this.c = paramArrayOfObject;
  }
  
  public final void a(List<Object> paramList)
  {
    if (this.a) {
      paramList.add(this.b);
    }
    for (;;)
    {
      return;
      if (this.c != null)
      {
        Object[] arrayOfObject = this.c;
        int j = arrayOfObject.length;
        int i = 0;
        while (i < j)
        {
          paramList.add(arrayOfObject[i]);
          i += 1;
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\query\WhereCondition$AbstractCondition.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */