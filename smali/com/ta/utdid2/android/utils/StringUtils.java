package com.ta.utdid2.android.utils;

public class StringUtils
{
  public static String convertObjectToString(Object paramObject)
  {
    if (paramObject != null)
    {
      if ((paramObject instanceof String)) {
        return ((String)paramObject).toString();
      }
      if ((paramObject instanceof Integer)) {
        return ((Integer)paramObject).intValue();
      }
      if ((paramObject instanceof Long)) {
        return ((Long)paramObject).longValue();
      }
      if ((paramObject instanceof Double)) {
        return ((Double)paramObject).doubleValue();
      }
      if ((paramObject instanceof Float)) {
        return ((Float)paramObject).floatValue();
      }
      if ((paramObject instanceof Short)) {
        return ((Short)paramObject).shortValue();
      }
      if ((paramObject instanceof Byte)) {
        return ((Byte)paramObject).byteValue();
      }
      if ((paramObject instanceof Boolean)) {
        return ((Boolean)paramObject).toString();
      }
      if ((paramObject instanceof Character)) {
        return ((Character)paramObject).toString();
      }
      return paramObject.toString();
    }
    return "";
  }
  
  public static int hashCode(String paramString)
  {
    int j = 0;
    int k = 0;
    int i = j;
    if (0 == 0)
    {
      i = j;
      if (paramString.length() > 0)
      {
        paramString = paramString.toCharArray();
        j = 0;
        i = k;
      }
    }
    for (;;)
    {
      if (j >= paramString.length) {
        return i;
      }
      i = i * 31 + paramString[j];
      j += 1;
    }
  }
  
  public static boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() <= 0);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\ta\utdid2\android\utils\StringUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */