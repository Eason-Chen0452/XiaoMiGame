package com.xiaomi.gamecenter.sdk.utils;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileWriter;
import java.util.UUID;

public final class r
{
  private static volatile r a;
  private static String b = null;
  private static final String c = Environment.getExternalStoragePublicDirectory("Android") + File.separator + "data" + File.separator + ".DataId";
  private static final String d = Environment.getExternalStoragePublicDirectory("DCIM") + File.separator + ".DCIM_ID";
  private static SharedPreferences e = null;
  private static boolean f = false;
  
  public static r a()
  {
    if (a == null) {
      throw new IllegalStateException("Please call VisitorID.init() first");
    }
    return a;
  }
  
  /* Error */
  private static String a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 79	java/io/BufferedReader
    //   5: dup
    //   6: new 81	java/io/FileReader
    //   9: dup
    //   10: new 37	java/io/File
    //   13: dup
    //   14: aload_0
    //   15: invokespecial 82	java/io/File:<init>	(Ljava/lang/String;)V
    //   18: invokespecial 85	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   21: invokespecial 88	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   24: astore_0
    //   25: aload_0
    //   26: invokevirtual 91	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   29: astore_2
    //   30: aload_2
    //   31: astore_1
    //   32: aload_0
    //   33: invokevirtual 94	java/io/BufferedReader:close	()V
    //   36: aload_1
    //   37: areturn
    //   38: astore_0
    //   39: aload_0
    //   40: invokevirtual 97	java/lang/Exception:printStackTrace	()V
    //   43: aload_1
    //   44: areturn
    //   45: astore_0
    //   46: aconst_null
    //   47: astore_0
    //   48: aload_0
    //   49: ifnull -13 -> 36
    //   52: aload_0
    //   53: invokevirtual 94	java/io/BufferedReader:close	()V
    //   56: aconst_null
    //   57: areturn
    //   58: astore_0
    //   59: aload_0
    //   60: invokevirtual 97	java/lang/Exception:printStackTrace	()V
    //   63: aconst_null
    //   64: areturn
    //   65: astore_0
    //   66: aconst_null
    //   67: astore_1
    //   68: aload_1
    //   69: ifnull +7 -> 76
    //   72: aload_1
    //   73: invokevirtual 94	java/io/BufferedReader:close	()V
    //   76: aload_0
    //   77: athrow
    //   78: astore_1
    //   79: aload_1
    //   80: invokevirtual 97	java/lang/Exception:printStackTrace	()V
    //   83: goto -7 -> 76
    //   86: astore_1
    //   87: aload_0
    //   88: astore_2
    //   89: aload_1
    //   90: astore_0
    //   91: aload_2
    //   92: astore_1
    //   93: goto -25 -> 68
    //   96: astore_2
    //   97: goto -49 -> 48
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	paramString	String
    //   1	72	1	localObject1	Object
    //   78	2	1	localException1	Exception
    //   86	4	1	localObject2	Object
    //   92	1	1	localObject3	Object
    //   29	63	2	str	String
    //   96	1	2	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   32	36	38	java/lang/Exception
    //   2	25	45	java/lang/Exception
    //   52	56	58	java/lang/Exception
    //   2	25	65	finally
    //   72	76	78	java/lang/Exception
    //   25	30	86	finally
    //   25	30	96	java/lang/Exception
  }
  
  private static void a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = new File(paramString1);
      if (!paramString1.exists()) {
        paramString1.createNewFile();
      }
      paramString1 = new FileWriter(paramString1);
      paramString1.write(paramString2);
      paramString1.flush();
      paramString1.close();
      return;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  public static String b()
  {
    if (!TextUtils.isEmpty(b)) {
      return b;
    }
    if (e == null)
    {
      Log.d("VisitorID", "Please call VisitorID.init() first");
      return "";
    }
    Object localObject = e.getString("knights_union_id", "");
    b = (String)localObject;
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      if ((a(d) == null) && (a(c) == null))
      {
        b = UUID.randomUUID().toString();
        a(d, b);
        a(c, b);
        Log.d("VisitorID", "new devices,create only id");
        if (!TextUtils.isEmpty(b))
        {
          localObject = e.edit();
          ((SharedPreferences.Editor)localObject).putString("knights_union_id", b);
          ((SharedPreferences.Editor)localObject).commit();
          Log.d("VisitorID", "save mUnionId SharePref:" + b);
        }
      }
    }
    for (;;)
    {
      Log.d("VisitorID", "result mUnionId:" + b);
      return b;
      if (a(c) == null)
      {
        b = a(d);
        a(c, b);
        Log.d("VisitorID", "Android directory was not found in UUID, from the DCIM directory to take out UUID");
        break;
      }
      if (a(d) == null)
      {
        b = a(c);
        a(d, b);
        Log.d("VisitorID", "DCIM directory was not found in UUID, from the Android directory to take out UUID");
        break;
      }
      b = a(d);
      break;
      if (!f)
      {
        if (a(c) == null) {
          a(c, b);
        }
        if (a(d) == null) {
          a(d, b);
        }
        f = true;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */