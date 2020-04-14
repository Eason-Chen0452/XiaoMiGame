package com.xiaomi.greendao.query;

public class WhereCondition$StringCondition
  extends WhereCondition.AbstractCondition
{
  protected final String d;
  
  public WhereCondition$StringCondition(String paramString)
  {
    this.d = paramString;
  }
  
  public WhereCondition$StringCondition(String paramString, Object paramObject)
  {
    super(paramObject);
    this.d = paramString;
  }
  
  public WhereCondition$StringCondition(String paramString, Object... paramVarArgs)
  {
    super(paramVarArgs);
    this.d = paramString;
  }
  
  public final void a(StringBuilder paramStringBuilder, String paramString)
  {
    paramStringBuilder.append(this.d);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\query\WhereCondition$StringCondition.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */