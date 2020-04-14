package com.xiaomi.gamecenter.sdk.ui.notice.utils;

import android.content.Context;
import android.content.res.Resources;
import cn.com.wali.basetool.log.Logger;
import java.lang.reflect.Field;

public class ResourceUtil
{
  public static int a(Context paramContext, String paramString)
  {
    return paramContext.getResources().getIdentifier(paramString, "layout", paramContext.getPackageName());
  }
  
  public static int b(Context paramContext, String paramString)
  {
    return paramContext.getResources().getIdentifier(paramString, "drawable", paramContext.getPackageName());
  }
  
  public static int c(Context paramContext, String paramString)
  {
    return paramContext.getResources().getIdentifier(paramString, "style", paramContext.getPackageName());
  }
  
  public static int[] d(Context paramContext, String paramString)
  {
    try
    {
      Logger.a("ResourceUtil", paramContext.getPackageName() + ".R$styleable");
      paramContext = Class.forName(paramContext.getPackageName() + ".R$styleable").getFields();
      int j = paramContext.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramContext[i];
        Logger.a("ResourceUtil", ((Field)localObject).getName());
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
  
  public static int e(Context paramContext, String paramString)
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
  
  public static int f(Context paramContext, String paramString)
  {
    return paramContext.getResources().getIdentifier(paramString, "id", paramContext.getPackageName());
  }
  
  public static int g(Context paramContext, String paramString)
  {
    return paramContext.getResources().getIdentifier(paramString, "dimen", paramContext.getPackageName());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\utils\ResourceUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */