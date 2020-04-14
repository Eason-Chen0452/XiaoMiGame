package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.content.res.Resources;
import java.lang.reflect.Field;

public class ResourceUtils
{
  public static String a(Context paramContext, String paramString)
  {
    int i = b(paramContext, paramString);
    return paramContext.getResources().getString(i);
  }
  
  public static int b(Context paramContext, String paramString)
  {
    return paramContext.getResources().getIdentifier(paramString, "string", paramContext.getPackageName());
  }
  
  public static int c(Context paramContext, String paramString)
  {
    return paramContext.getResources().getIdentifier(paramString, "drawable", paramContext.getPackageName());
  }
  
  public static int d(Context paramContext, String paramString)
  {
    return paramContext.getResources().getIdentifier(paramString, "id", paramContext.getPackageName());
  }
  
  public static int e(Context paramContext, String paramString)
  {
    return paramContext.getResources().getIdentifier(paramString, "style", paramContext.getPackageName());
  }
  
  public static int f(Context paramContext, String paramString)
  {
    return paramContext.getResources().getIdentifier(paramString, "layout", paramContext.getPackageName());
  }
  
  public static int g(Context paramContext, String paramString)
  {
    return paramContext.getResources().getIdentifier(paramString, "dimen", paramContext.getPackageName());
  }
  
  public static int h(Context paramContext, String paramString)
  {
    return paramContext.getResources().getIdentifier(paramString, "color", paramContext.getPackageName());
  }
  
  public static int i(Context paramContext, String paramString)
  {
    return paramContext.getResources().getIdentifier(paramString, "anim", paramContext.getPackageName());
  }
  
  public static int[] j(Context paramContext, String paramString)
  {
    try
    {
      paramContext = Class.forName(paramContext.getPackageName() + ".R$styleable").getFields();
      int j = paramContext.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramContext[i];
        if (((Field)localObject).getName().equals(paramString))
        {
          paramContext = (int[])((Field)localObject).get(null);
          return paramContext;
        }
        i += 1;
      }
      return null;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static int k(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageName() + ".R";
    try
    {
      paramContext = Class.forName(paramContext).getClasses();
      int k = paramContext.length;
      int i = 0;
      while (i < k)
      {
        Field[] arrayOfField = paramContext[i];
        if (arrayOfField.getSimpleName().equals("styleable"))
        {
          arrayOfField = arrayOfField.getFields();
          int m = arrayOfField.length;
          int j = 0;
          while (j < m)
          {
            Field localField = arrayOfField[j];
            if (localField.getName().equals(paramString))
            {
              i = ((Integer)localField.get(null)).intValue();
              return i;
            }
            j += 1;
          }
        }
        i += 1;
      }
      return 0;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\ResourceUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */