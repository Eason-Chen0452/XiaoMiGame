package com.aonesoft.lib;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;

public class AoneScreenShot
{
  private static final String FILE_NAME_START = "aone_";
  private static final String FILE_SUFFIX_NAME = ".png";
  private static final int SDK_VERSION = 19;
  private static ImageView imageView;
  private static Activity mAvt;
  private static Bitmap temBitmap;
  
  private static String getSDCardPath()
  {
    File localFile = null;
    if (Environment.getExternalStorageState().equals("mounted")) {
      localFile = Environment.getExternalStorageDirectory();
    }
    return localFile.toString();
  }
  
  public static void init(Context paramContext)
  {
    mAvt = (Activity)paramContext;
  }
  
  /* Error */
  private static void insertImageToMedia(Bitmap paramBitmap, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: getstatic 65	java/lang/System:out	Ljava/io/PrintStream;
    //   3: new 67	java/lang/StringBuilder
    //   6: dup
    //   7: ldc 69
    //   9: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   12: aload_1
    //   13: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   19: invokevirtual 82	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   22: getstatic 65	java/lang/System:out	Ljava/io/PrintStream;
    //   25: new 67	java/lang/StringBuilder
    //   28: dup
    //   29: ldc 84
    //   31: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   34: aload_2
    //   35: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokevirtual 82	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   44: new 46	java/io/File
    //   47: dup
    //   48: aload_1
    //   49: invokespecial 85	java/io/File:<init>	(Ljava/lang/String;)V
    //   52: astore_1
    //   53: aload_1
    //   54: invokevirtual 89	java/io/File:exists	()Z
    //   57: ifne +15 -> 72
    //   60: aload_1
    //   61: invokevirtual 92	java/io/File:isDirectory	()Z
    //   64: ifne +8 -> 72
    //   67: aload_1
    //   68: invokevirtual 95	java/io/File:mkdir	()Z
    //   71: pop
    //   72: new 46	java/io/File
    //   75: dup
    //   76: aload_2
    //   77: invokespecial 85	java/io/File:<init>	(Ljava/lang/String;)V
    //   80: astore_1
    //   81: new 97	java/io/FileOutputStream
    //   84: dup
    //   85: aload_1
    //   86: invokespecial 100	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   89: astore_2
    //   90: aload_0
    //   91: getstatic 106	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   94: bipush 90
    //   96: aload_2
    //   97: invokevirtual 112	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   100: pop
    //   101: getstatic 55	com/aonesoft/lib/AoneScreenShot:mAvt	Landroid/app/Activity;
    //   104: invokevirtual 116	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   107: aconst_null
    //   108: ldc 118
    //   110: ldc 118
    //   112: invokestatic 124	android/provider/MediaStore$Images$Media:insertImage	(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   115: pop
    //   116: getstatic 129	android/os/Build$VERSION:SDK_INT	I
    //   119: bipush 19
    //   121: if_icmplt +30 -> 151
    //   124: new 131	android/content/Intent
    //   127: dup
    //   128: ldc -123
    //   130: invokespecial 134	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   133: astore_0
    //   134: aload_0
    //   135: aload_1
    //   136: invokestatic 140	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   139: invokevirtual 144	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   142: pop
    //   143: getstatic 55	com/aonesoft/lib/AoneScreenShot:mAvt	Landroid/app/Activity;
    //   146: aload_0
    //   147: invokevirtual 148	android/app/Activity:sendBroadcast	(Landroid/content/Intent;)V
    //   150: return
    //   151: getstatic 55	com/aonesoft/lib/AoneScreenShot:mAvt	Landroid/app/Activity;
    //   154: new 131	android/content/Intent
    //   157: dup
    //   158: ldc -106
    //   160: new 67	java/lang/StringBuilder
    //   163: dup
    //   164: ldc -104
    //   166: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   169: invokestatic 44	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   172: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   175: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   178: invokestatic 159	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   181: invokespecial 162	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   184: invokevirtual 148	android/app/Activity:sendBroadcast	(Landroid/content/Intent;)V
    //   187: return
    //   188: astore_0
    //   189: aload_0
    //   190: invokevirtual 165	java/io/FileNotFoundException:printStackTrace	()V
    //   193: return
    //   194: astore_0
    //   195: goto -6 -> 189
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	198	0	paramBitmap	Bitmap
    //   0	198	1	paramString1	String
    //   0	198	2	paramString2	String
    // Exception table:
    //   from	to	target	type
    //   81	90	188	java/io/FileNotFoundException
    //   90	150	194	java/io/FileNotFoundException
    //   151	187	194	java/io/FileNotFoundException
  }
  
  public static Bitmap popShotSrceenDialog(String paramString)
  {
    temBitmap = Bitmap.createBitmap(mAvt.getWindow().getDecorView().getRootView().getWidth(), mAvt.getWindow().getDecorView().getRootView().getHeight(), Bitmap.Config.ARGB_8888);
    View localView = mAvt.getWindow().getDecorView().getRootView();
    localView.setDrawingCacheEnabled(true);
    localView.buildDrawingCache();
    temBitmap = localView.getDrawingCache();
    savePicture(paramString, temBitmap);
    return temBitmap;
  }
  
  private static void recyle(Bitmap paramBitmap)
  {
    if ((paramBitmap != null) && (!paramBitmap.isRecycled())) {
      paramBitmap.recycle();
    }
  }
  
  private static void savePicture(String paramString, Bitmap paramBitmap)
  {
    Log.d("debug", "SavePicture 1");
    Log.d("debug", "SavePicture 2");
    Log.d("debug", "SavePicture 3");
    String str;
    if (paramBitmap != null)
    {
      if ((paramString != null) && (paramString.length() > 0)) {
        break label247;
      }
      str = getSDCardPath() + File.separator + "aone/pic/screenShots";
      paramString = str + File.separator + "aone_" + System.currentTimeMillis() + ".png";
    }
    for (;;)
    {
      try
      {
        Log.d("debug", "filepath = " + paramString);
        localObject = new File(str);
        File localFile = new File(paramString);
        if (!((File)localObject).exists())
        {
          Log.d("debug", "path is not exists");
          ((File)localObject).mkdirs();
        }
        if (!localFile.exists())
        {
          Log.d("debug", "file create new ");
          localFile.createNewFile();
        }
        localObject = new FileOutputStream(localFile);
        if (localObject != null)
        {
          paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, (OutputStream)localObject);
          ((FileOutputStream)localObject).flush();
          ((FileOutputStream)localObject).close();
          Log.d("debug", "save ok");
        }
      }
      catch (Exception localException)
      {
        Object localObject;
        label247:
        int i;
        localException.printStackTrace();
        continue;
      }
      insertImageToMedia(paramBitmap, str, paramString);
      return;
      if (!paramString.endsWith(".png"))
      {
        localObject = "aone_" + System.currentTimeMillis() + ".png";
        if (paramString.startsWith(File.separator))
        {
          str = getSDCardPath() + paramString;
          Log.d("debug", "savePath = " + str);
          if (paramString.endsWith(File.separator)) {
            paramString = str + (String)localObject;
          }
        }
        else
        {
          str = getSDCardPath() + File.separator + paramString;
          continue;
        }
      }
      else
      {
        i = paramString.lastIndexOf(File.separator);
        localObject = paramString.substring(i + 1, paramString.length());
        paramString = paramString.substring(0, i);
        if (paramString.startsWith(File.separator))
        {
          str = getSDCardPath() + paramString;
          continue;
        }
        str = getSDCardPath() + File.separator + paramString;
        continue;
      }
      paramString = str + File.separator + (String)localObject;
    }
  }
  
  public static void takeScreenShot(String paramString)
  {
    popShotSrceenDialog(paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneScreenShot.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */