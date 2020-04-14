package com.xiaomi.gamecenter.sdk.utils;

import android.util.Base64;
import cn.com.wali.basetool.utils.MD5;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

public class SocketTouch
{
  private static int a = -1;
  
  public static String a()
  {
    return MD5.a(UUID.randomUUID().toString().getBytes());
  }
  
  public static String a(String paramString)
  {
    try
    {
      paramString = Base64.encodeToString(MessageDigest.getInstance("SHA1").digest(paramString.getBytes()), 8).substring(0, 16);
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      paramString.printStackTrace();
      return "";
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
  }
  
  public static boolean b()
  {
    try
    {
      Class localClass = Class.forName("miui.os.Build");
      boolean bool = ((Boolean)localClass.getField("IS_TABLET").get(localClass)).booleanValue();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\SocketTouch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */