package com.xiaomi.hy.dj.f;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileWriter;
import java.util.UUID;

public class o
{
  private static final String a = "VisitorID";
  private static volatile o b;
  private static String c = null;
  private static final String d = ".DataId";
  private static final String e = ".DCIM_ID";
  private static final String f = "knights_union_id";
  private static final String g = Environment.getExternalStoragePublicDirectory("Android") + File.separator + "data" + File.separator + ".DataId";
  private static final String h = Environment.getExternalStoragePublicDirectory("DCIM") + File.separator + ".DCIM_ID";
  private static SharedPreferences i = null;
  private static boolean j = false;
  
  public static o a()
  {
    if (b == null) {
      throw new IllegalStateException("Please call VisitorID.init() first");
    }
    return b;
  }
  
  /* Error */
  private String a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 88	java/io/BufferedReader
    //   5: dup
    //   6: new 90	java/io/FileReader
    //   9: dup
    //   10: new 49	java/io/File
    //   13: dup
    //   14: aload_1
    //   15: invokespecial 91	java/io/File:<init>	(Ljava/lang/String;)V
    //   18: invokespecial 94	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   21: invokespecial 97	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   24: astore_1
    //   25: aload_1
    //   26: invokevirtual 100	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   29: astore_3
    //   30: aload_3
    //   31: astore_2
    //   32: aload_1
    //   33: invokevirtual 103	java/io/BufferedReader:close	()V
    //   36: aload_2
    //   37: areturn
    //   38: astore_1
    //   39: aload_1
    //   40: invokevirtual 106	java/lang/Exception:printStackTrace	()V
    //   43: aload_2
    //   44: areturn
    //   45: astore_1
    //   46: aconst_null
    //   47: astore_1
    //   48: aload_1
    //   49: ifnull -13 -> 36
    //   52: aload_1
    //   53: invokevirtual 103	java/io/BufferedReader:close	()V
    //   56: aconst_null
    //   57: areturn
    //   58: astore_1
    //   59: aload_1
    //   60: invokevirtual 106	java/lang/Exception:printStackTrace	()V
    //   63: aconst_null
    //   64: areturn
    //   65: astore_1
    //   66: aconst_null
    //   67: astore_2
    //   68: aload_2
    //   69: ifnull +7 -> 76
    //   72: aload_2
    //   73: invokevirtual 103	java/io/BufferedReader:close	()V
    //   76: aload_1
    //   77: athrow
    //   78: astore_2
    //   79: aload_2
    //   80: invokevirtual 106	java/lang/Exception:printStackTrace	()V
    //   83: goto -7 -> 76
    //   86: astore_2
    //   87: aload_1
    //   88: astore_3
    //   89: aload_2
    //   90: astore_1
    //   91: aload_3
    //   92: astore_2
    //   93: goto -25 -> 68
    //   96: astore_3
    //   97: goto -49 -> 48
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	o
    //   0	100	1	paramString	String
    //   1	72	2	localObject1	Object
    //   78	2	2	localException1	Exception
    //   86	4	2	localObject2	Object
    //   92	1	2	localObject3	Object
    //   29	63	3	str	String
    //   96	1	3	localException2	Exception
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
  
  /* Error */
  public static void a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: getstatic 76	com/xiaomi/hy/dj/f/o:b	Lcom/xiaomi/hy/dj/f/o;
    //   3: ifnonnull +25 -> 28
    //   6: ldc 2
    //   8: monitorenter
    //   9: getstatic 76	com/xiaomi/hy/dj/f/o:b	Lcom/xiaomi/hy/dj/f/o;
    //   12: ifnonnull +13 -> 25
    //   15: new 2	com/xiaomi/hy/dj/f/o
    //   18: dup
    //   19: invokespecial 108	com/xiaomi/hy/dj/f/o:<init>	()V
    //   22: putstatic 76	com/xiaomi/hy/dj/f/o:b	Lcom/xiaomi/hy/dj/f/o;
    //   25: ldc 2
    //   27: monitorexit
    //   28: getstatic 69	com/xiaomi/hy/dj/f/o:i	Landroid/content/SharedPreferences;
    //   31: ifnonnull +25 -> 56
    //   34: ldc 2
    //   36: monitorenter
    //   37: getstatic 69	com/xiaomi/hy/dj/f/o:i	Landroid/content/SharedPreferences;
    //   40: ifnonnull +13 -> 53
    //   43: aload_0
    //   44: invokevirtual 114	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   47: invokestatic 120	android/preference/PreferenceManager:getDefaultSharedPreferences	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   50: putstatic 69	com/xiaomi/hy/dj/f/o:i	Landroid/content/SharedPreferences;
    //   53: ldc 2
    //   55: monitorexit
    //   56: return
    //   57: astore_0
    //   58: ldc 2
    //   60: monitorexit
    //   61: aload_0
    //   62: athrow
    //   63: astore_0
    //   64: ldc 2
    //   66: monitorexit
    //   67: aload_0
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	paramContext	android.content.Context
    // Exception table:
    //   from	to	target	type
    //   9	25	57	finally
    //   25	28	57	finally
    //   58	61	57	finally
    //   37	53	63	finally
    //   53	56	63	finally
    //   64	67	63	finally
  }
  
  private void a(String paramString1, String paramString2)
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
  
  public String b()
  {
    if (!TextUtils.isEmpty(c)) {
      return c;
    }
    if (i == null)
    {
      Log.d("VisitorID", "Please call VisitorID.init() first");
      return "";
    }
    Object localObject = i.getString("knights_union_id", "");
    c = (String)localObject;
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      if ((a(h) == null) && (a(g) == null))
      {
        c = UUID.randomUUID().toString();
        a(h, c);
        a(g, c);
        Log.d("VisitorID", "new devices,create only id");
        localObject = i.edit();
        ((SharedPreferences.Editor)localObject).putString("knights_union_id", c);
        ((SharedPreferences.Editor)localObject).commit();
        Log.d("VisitorID", "save mUnionId SharePref:" + c);
      }
    }
    for (;;)
    {
      Log.d("VisitorID", "result mUnionId:" + c);
      return c;
      if (a(g) == null)
      {
        c = a(h);
        a(g, c);
        Log.d("VisitorID", "Android directory was not found in UUID, from the DCIM directory to take out UUID");
        break;
      }
      if (a(h) == null)
      {
        c = a(g);
        a(h, c);
        Log.d("VisitorID", "DCIM directory was not found in UUID, from the Android directory to take out UUID");
        break;
      }
      c = a(h);
      break;
      if (!j)
      {
        if (a(g) == null) {
          a(g, c);
        }
        if (a(h) == null) {
          a(h, c);
        }
        j = true;
      }
    }
  }
  
  public boolean c()
  {
    if (!TextUtils.isEmpty(c)) {}
    String str;
    do
    {
      return true;
      str = i.getString("knights_union_id", null);
      c = str;
    } while ((!TextUtils.isEmpty(str)) || (!TextUtils.isEmpty(a(h))) || (!TextUtils.isEmpty(a(g))));
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\f\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */