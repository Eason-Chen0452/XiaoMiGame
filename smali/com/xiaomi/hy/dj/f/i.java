package com.xiaomi.hy.dj.f;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import org.json.JSONObject;

public class i
{
  public static String a(Context paramContext)
  {
    Object localObject4 = null;
    Context localContext = null;
    Object localObject3;
    try
    {
      Object localObject1 = Class.forName("com.xiaomi.gamecenter.channel.v1reader.ChannelUtil").getMethod("readChannelId", new Class[] { Context.class });
      ((Method)localObject1).setAccessible(true);
      localObject1 = ((Method)localObject1).invoke(null, new Object[] { paramContext });
      if ((localObject1 instanceof String))
      {
        localObject1 = (String)localObject1;
        localObject3 = localObject1;
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          localObject3 = localObject4;
        }
      }
      for (;;)
      {
        try
        {
          paramContext = paramContext.getAssets().open("meng.sdk.dat");
          localContext = paramContext;
          localObject3 = paramContext;
          localObject4 = new byte[paramContext.available()];
          localContext = paramContext;
          localObject3 = paramContext;
          paramContext.read((byte[])localObject4);
          localContext = paramContext;
          localObject3 = paramContext;
          localObject4 = new JSONObject(new String((byte[])localObject4, "utf-8")).getString("cid");
          localObject1 = localObject4;
          localObject3 = localObject1;
        }
        catch (Throwable paramContext)
        {
          Object localObject2;
          localObject3 = localObject2;
          if (localContext == null) {
            continue;
          }
          try
          {
            localContext.close();
            localObject3 = localObject2;
          }
          catch (IOException paramContext)
          {
            paramContext.printStackTrace();
            localObject3 = localObject2;
          }
          continue;
        }
        finally
        {
          if (localObject3 == null) {
            break label210;
          }
        }
        try
        {
          paramContext.close();
          localObject3 = localObject1;
        }
        catch (IOException paramContext)
        {
          paramContext.printStackTrace();
          localObject3 = localObject2;
        }
      }
      paramContext = (Context)localObject3;
      if (TextUtils.isEmpty((CharSequence)localObject3)) {
        paramContext = "meng_100_1_android";
      }
      return paramContext;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        localObject2 = null;
      }
    }
    try
    {
      ((InputStream)localObject3).close();
      label210:
      throw paramContext;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    return new File(paramContext.getCacheDir(), paramString).exists();
  }
  
  public static boolean a(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      paramContext = paramContext.openFileOutput(paramString1, 0);
      paramContext.write(paramString2.getBytes());
      paramContext.close();
      return true;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
  
  public static boolean b(Context paramContext, String paramString)
  {
    paramContext = new File(paramContext.getFilesDir(), paramString);
    if (paramContext.exists()) {
      return paramContext.delete();
    }
    return false;
  }
  
  /* Error */
  public static String c(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 141	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   5: astore_1
    //   6: aload_1
    //   7: invokevirtual 144	java/io/FileInputStream:available	()I
    //   10: newarray <illegal type>
    //   12: astore_0
    //   13: aload_1
    //   14: aload_0
    //   15: invokevirtual 145	java/io/FileInputStream:read	([B)I
    //   18: pop
    //   19: new 43	java/lang/String
    //   22: dup
    //   23: aload_0
    //   24: ldc 75
    //   26: invokespecial 78	java/lang/String:<init>	([BLjava/lang/String;)V
    //   29: astore_0
    //   30: aload_1
    //   31: invokevirtual 146	java/io/FileInputStream:close	()V
    //   34: aload_0
    //   35: areturn
    //   36: astore_1
    //   37: ldc -108
    //   39: astore_0
    //   40: aload_1
    //   41: invokevirtual 128	java/lang/Exception:printStackTrace	()V
    //   44: aload_0
    //   45: areturn
    //   46: astore_1
    //   47: goto -7 -> 40
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	50	0	paramContext	Context
    //   0	50	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   0	30	36	java/lang/Exception
    //   30	34	46	java/lang/Exception
  }
  
  public static String d(Context paramContext, String paramString)
  {
    File localFile = new File(paramContext.getFilesDir(), paramString);
    if (!localFile.exists()) {}
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      paramContext = paramContext.getAssets().open(paramString);
      paramString = new byte['Ѐ'];
      for (int i = paramContext.read(paramString); i > 0; i = paramContext.read(paramString)) {
        localFileOutputStream.write(paramString, 0, i);
      }
      localFileOutputStream.flush();
      paramContext.close();
      localFileOutputStream.close();
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
    return localFile.getAbsolutePath();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\f\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */