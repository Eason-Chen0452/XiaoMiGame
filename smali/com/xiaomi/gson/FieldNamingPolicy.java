package com.xiaomi.gson;

public enum FieldNamingPolicy
  implements g
{
  static
  {
    LOWER_CASE_WITH_UNDERSCORES = new e("LOWER_CASE_WITH_UNDERSCORES");
  }
  
  private FieldNamingPolicy() {}
  
  static String a(String paramString)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    for (char c = paramString.charAt(0); (i < paramString.length() - 1) && (!Character.isLetter(c)); c = paramString.charAt(i))
    {
      localStringBuilder.append(c);
      i += 1;
    }
    String str;
    if (i == paramString.length()) {
      str = localStringBuilder.toString();
    }
    do
    {
      return str;
      str = paramString;
    } while (Character.isUpperCase(c));
    c = Character.toUpperCase(c);
    i += 1;
    if (i < paramString.length()) {}
    for (paramString = c + paramString.substring(i);; paramString = String.valueOf(c)) {
      return paramString;
    }
  }
  
  static String a(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < paramString1.length())
    {
      char c = paramString1.charAt(i);
      if ((Character.isUpperCase(c)) && (localStringBuilder.length() != 0)) {
        localStringBuilder.append(paramString2);
      }
      localStringBuilder.append(c);
      i += 1;
    }
    return localStringBuilder.toString();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\FieldNamingPolicy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */