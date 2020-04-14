package com.aonesoft.lib;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.Toast;
import java.lang.reflect.Field;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AoneUiUtils
{
  public static long lastClickTime;
  public static ProgressDialog loadingDialog = null;
  public static Toast toast = null;
  
  public static int dip2px(Context paramContext, float paramFloat)
  {
    return (int)(paramFloat * paramContext.getResources().getDisplayMetrics().density + 0.5F);
  }
  
  public static void dismissLoading(Context paramContext)
  {
    if (loadingDialog != null)
    {
      loadingDialog.dismiss();
      loadingDialog = null;
    }
  }
  
  public static int getResourceId(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = paramContext.getPackageName();
    try
    {
      paramContext = Class.forName(paramContext + ".R").getClasses();
      int i = 0;
      while (i < paramContext.length)
      {
        if (paramContext[i].getName().split("\\$")[1].equals(paramString1))
        {
          paramContext = paramContext[i];
          i = paramContext.getField(paramString2).getInt(paramContext);
          return i;
        }
        i += 1;
      }
      return 0;
    }
    catch (ClassNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    catch (IllegalArgumentException paramContext)
    {
      paramContext.printStackTrace();
    }
    catch (IllegalAccessException paramContext)
    {
      paramContext.printStackTrace();
    }
    catch (NoSuchFieldException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static boolean isFastDoubleClick()
  {
    long l1 = System.currentTimeMillis();
    long l2 = l1 - lastClickTime;
    if ((0L < l2) && (l2 < 800L))
    {
      lastClickTime = l1;
      return true;
    }
    lastClickTime = l1;
    return false;
  }
  
  public static ImageView loadImageViewByResId(Context paramContext, int paramInt, View.OnClickListener paramOnClickListener)
  {
    paramContext = new ImageView(paramContext);
    paramContext.setBackgroundResource(paramInt);
    paramContext.setId(paramInt);
    paramContext.setOnClickListener(paramOnClickListener);
    return paramContext;
  }
  
  public static int px2dip(Context paramContext, float paramFloat)
  {
    return (int)(paramFloat / paramContext.getResources().getDisplayMetrics().density + 0.5F);
  }
  
  public static void showLoading(Context paramContext)
  {
    if (loadingDialog == null) {
      loadingDialog = ProgressDialog.show(paramContext, null, "loading...");
    }
  }
  
  public static void showLoginSuccess(Context paramContext, String paramString)
  {
    String str = paramContext.getString(getResourceId(paramContext, "string", "aonesdk_welcome"));
    showToast(paramContext, Pattern.compile("xxx").matcher(str).replaceFirst(paramString));
    toast.setGravity(17, 0, 0);
  }
  
  public static void showLongToast(Context paramContext, String paramString)
  {
    Toast.makeText(paramContext, paramString, 1).show();
  }
  
  public static void showNetSuccess(Context paramContext, String paramString)
  {
    showToast(paramContext, paramString);
  }
  
  public static void showToast(Context paramContext, String paramString)
  {
    toast = Toast.makeText(paramContext, paramString, 0);
    toast.show();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneUiUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */