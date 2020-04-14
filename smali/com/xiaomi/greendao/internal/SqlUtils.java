package com.xiaomi.greendao.internal;

import com.xiaomi.greendao.DaoException;
import com.xiaomi.greendao.Property;

public class SqlUtils
{
  private static final char[] a = "0123456789ABCDEF".toCharArray();
  
  public static String a(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder("SELECT COUNT(*) FROM ");
    localStringBuilder.append('"').append(paramString1).append('"').append(' ');
    if (paramString2 != null) {
      localStringBuilder.append(paramString2).append(' ');
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    paramString1 = new StringBuilder(paramString1);
    paramString1.append('"').append(paramString2).append('"').append(" (");
    a(paramString1, paramArrayOfString);
    paramString1.append(") VALUES (");
    a(paramString1, paramArrayOfString.length);
    paramString1.append(')');
    return paramString1.toString();
  }
  
  public static String a(String paramString1, String paramString2, String[] paramArrayOfString, boolean paramBoolean)
  {
    if ((paramString2 == null) || (paramString2.length() < 0)) {
      throw new DaoException("Table alias required");
    }
    if (paramBoolean) {}
    for (Object localObject = "SELECT DISTINCT ";; localObject = "SELECT ")
    {
      localObject = new StringBuilder((String)localObject);
      b((StringBuilder)localObject, paramString2, paramArrayOfString).append(" FROM ");
      ((StringBuilder)localObject).append('"').append(paramString1).append('"').append(' ').append(paramString2).append(' ');
      return ((StringBuilder)localObject).toString();
    }
  }
  
  public static String a(String paramString, String[] paramArrayOfString)
  {
    paramString = "\"" + paramString + '"';
    StringBuilder localStringBuilder = new StringBuilder("DELETE FROM ");
    localStringBuilder.append(paramString);
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
    {
      localStringBuilder.append(" WHERE ");
      a(localStringBuilder, paramString, paramArrayOfString);
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    paramString = "\"" + paramString + '"';
    StringBuilder localStringBuilder = new StringBuilder("UPDATE ");
    localStringBuilder.append(paramString).append(" SET ");
    b(localStringBuilder, paramArrayOfString1);
    localStringBuilder.append(" WHERE ");
    a(localStringBuilder, paramString, paramArrayOfString2);
    return localStringBuilder.toString();
  }
  
  private static StringBuilder a(StringBuilder paramStringBuilder, int paramInt)
  {
    int i = 0;
    if (i < paramInt)
    {
      if (i < paramInt - 1) {
        paramStringBuilder.append("?,");
      }
      for (;;)
      {
        i += 1;
        break;
        paramStringBuilder.append('?');
      }
    }
    return paramStringBuilder;
  }
  
  public static StringBuilder a(StringBuilder paramStringBuilder, String paramString, Property paramProperty)
  {
    if (paramString != null) {
      paramStringBuilder.append(paramString).append('.');
    }
    paramStringBuilder.append('"').append(paramProperty.e).append('"');
    return paramStringBuilder;
  }
  
  private static StringBuilder a(StringBuilder paramStringBuilder, String paramString1, String paramString2)
  {
    paramStringBuilder.append(paramString1).append(".\"").append(paramString2).append('"');
    return paramStringBuilder;
  }
  
  public static StringBuilder a(StringBuilder paramStringBuilder, String paramString, String[] paramArrayOfString)
  {
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      a(paramStringBuilder, paramString, paramArrayOfString[i]).append("=?");
      if (i < paramArrayOfString.length - 1) {
        paramStringBuilder.append(',');
      }
      i += 1;
    }
    return paramStringBuilder;
  }
  
  private static StringBuilder a(StringBuilder paramStringBuilder, String[] paramArrayOfString)
  {
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      paramStringBuilder.append('"').append(paramArrayOfString[i]).append('"');
      if (i < j - 1) {
        paramStringBuilder.append(',');
      }
      i += 1;
    }
    return paramStringBuilder;
  }
  
  private static StringBuilder b(StringBuilder paramStringBuilder, String paramString, String[] paramArrayOfString)
  {
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      a(paramStringBuilder, paramString, paramArrayOfString[i]);
      if (i < j - 1) {
        paramStringBuilder.append(',');
      }
      i += 1;
    }
    return paramStringBuilder;
  }
  
  private static StringBuilder b(StringBuilder paramStringBuilder, String[] paramArrayOfString)
  {
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      String str = paramArrayOfString[i];
      paramStringBuilder.append('"').append(str).append('"');
      paramStringBuilder.append("=?");
      if (i < paramArrayOfString.length - 1) {
        paramStringBuilder.append(',');
      }
      i += 1;
    }
    return paramStringBuilder;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\internal\SqlUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */