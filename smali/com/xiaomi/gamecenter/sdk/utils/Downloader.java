package com.xiaomi.gamecenter.sdk.utils;

import android.app.DownloadManager;
import android.app.DownloadManager.Query;
import android.app.DownloadManager.Request;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import cn.com.wali.basetool.log.Logger;
import cn.com.wali.basetool.utils.MD5;
import java.io.File;

public class Downloader
{
  private static File e;
  private Context a;
  private DownloadManager b;
  private long c = -1L;
  private int d = -1;
  private String f;
  private String g;
  private String h = "temp.apk";
  private String i;
  private String j;
  private Handler k = new DownloadHandler(Looper.getMainLooper());
  private a l;
  private BroadcastReceiver m = new d(this);
  private DownloadObserver n;
  
  public Downloader(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Downloader(Context paramContext, a parama)
  {
    this.a = paramContext;
    this.l = parama;
    e = new File(this.a.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS), this.h);
  }
  
  private void a(File paramFile)
  {
    if (!paramFile.exists()) {
      return;
    }
    Intent localIntent = new Intent();
    if (Build.VERSION.SDK_INT >= 24)
    {
      paramFile = FileProvider.getUriForFile(this.a, this.a.getPackageName() + ".fileprovider", paramFile);
      localIntent.addFlags(1);
      localIntent.addFlags(268435456);
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setDataAndType(paramFile, "application/vnd.android.package-archive");
    }
    for (;;)
    {
      this.a.startActivity(localIntent);
      return;
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setDataAndType(Uri.fromFile(paramFile), "application/vnd.android.package-archive");
    }
  }
  
  private boolean a(long paramLong)
  {
    boolean bool2 = true;
    bool3 = false;
    Logger.a("MiGameSDK.Downloader", "checkTaskIfExist " + paramLong);
    if (paramLong <= 0L) {
      return false;
    }
    localObject1 = new DownloadManager.Query();
    ((DownloadManager.Query)localObject1).setFilterById(new long[] { paramLong });
    localObject1 = this.b.query((DownloadManager.Query)localObject1);
    if (localObject1 != null) {}
    for (;;)
    {
      try
      {
        int i1;
        if (((Cursor)localObject1).moveToFirst())
        {
          i1 = ((Cursor)localObject1).getInt(((Cursor)localObject1).getColumnIndex("status"));
          bool1 = bool2;
        }
        switch (i1)
        {
        default: 
          bool1 = false;
        }
      }
      catch (Exception localException)
      {
        Logger.a("MiGameSDK.Downloader", "continue task if exist", localException);
        ((Cursor)localObject1).close();
        boolean bool1 = bool3;
        continue;
        bool1 = false;
        continue;
        this.b.remove(new long[] { paramLong });
        bool1 = false;
        continue;
      }
      finally
      {
        ((Cursor)localObject1).close();
      }
      ((Cursor)localObject1).close();
      Logger.a("MiGameSDK.Downloader", paramLong + " exist ? " + bool1);
      return bool1;
      this.b.remove(new long[] { paramLong });
      this.b.remove(new long[] { paramLong });
      bool1 = bool2;
    }
  }
  
  private static boolean b(File paramFile, String paramString)
  {
    boolean bool4 = false;
    boolean bool1 = false;
    bool3 = bool4;
    if (paramFile != null)
    {
      boolean bool2 = bool1;
      bool3 = bool4;
      try
      {
        if (paramFile.exists())
        {
          bool2 = bool1;
          Logger.a("MiGameSDK.Downloader", "targetMd5 " + paramString);
          bool2 = bool1;
          if (TextUtils.isEmpty(paramString)) {}
          for (bool1 = true;; bool1 = c(paramFile, paramString))
          {
            bool2 = bool1;
            Logger.a("MiGameSDK.Downloader", paramFile.getAbsolutePath() + " is exist? " + bool1);
            bool3 = bool1;
            if (bool1) {
              break;
            }
            bool2 = bool1;
            paramFile.delete();
            return bool1;
            bool2 = bool1;
          }
        }
        return bool3;
      }
      catch (Exception paramFile)
      {
        Logger.a("MiGameSDK.Downloader", "Check apk exist in cache error.", paramFile);
        bool3 = bool2;
      }
    }
  }
  
  private static boolean c(File paramFile, String paramString)
  {
    boolean bool4 = false;
    boolean bool3 = false;
    boolean bool2 = bool3;
    boolean bool1;
    if (paramFile != null)
    {
      bool2 = bool3;
      bool1 = bool4;
    }
    try
    {
      if (paramFile.exists())
      {
        bool1 = bool4;
        paramFile = MD5.b(paramFile.getAbsolutePath());
        bool2 = bool3;
        bool1 = bool4;
        if (!TextUtils.isEmpty(paramFile))
        {
          bool2 = bool3;
          bool1 = bool4;
          if (!TextUtils.isEmpty(paramString))
          {
            bool1 = bool4;
            bool2 = TextUtils.equals(paramFile.toLowerCase(), paramString.toLowerCase());
            bool1 = bool2;
            Logger.a("MiGameSDK.Downloader", "fmd5 " + paramFile);
            bool1 = bool2;
            Logger.a("MiGameSDK.Downloader", "targetMd5 " + paramString);
          }
        }
      }
      return bool2;
    }
    catch (Exception paramFile)
    {
      Logger.a("MiGameSDK.Downloader", "Check md5 error.", paramFile);
    }
    return bool1;
  }
  
  public final void a()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.DOWNLOAD_COMPLETE");
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    this.a.registerReceiver(this.m, localIntentFilter);
  }
  
  public final void a(a parama)
  {
    this.l = parama;
  }
  
  public final void a(String paramString)
  {
    this.f = paramString;
  }
  
  public final void b()
  {
    this.a.unregisterReceiver(this.m);
  }
  
  public final void b(String paramString)
  {
    this.h = paramString;
    e = new File(this.a.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS), this.h);
  }
  
  public final void c()
  {
    if (TextUtils.isEmpty(this.i))
    {
      Logger.c("MiGameSDK.Downloader", "download url error : " + this.i);
      return;
    }
    new DownloadTask(this.i, this.j).execute(new Void[0]);
  }
  
  public final void c(String paramString)
  {
    this.i = paramString;
  }
  
  public final int d()
  {
    return this.d;
  }
  
  public final void d(String paramString)
  {
    this.j = paramString;
  }
  
  public final boolean e()
  {
    return a(this.c);
  }
  
  private class DownloadHandler
    extends Handler
  {
    public DownloadHandler(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
      switch (paramMessage.what)
      {
      }
      do
      {
        do
        {
          return;
        } while (Downloader.a(Downloader.this) == null);
        paramMessage.getData().getInt("progress");
        return;
      } while (Downloader.a(Downloader.this) == null);
      Downloader.a(Downloader.this).a();
    }
  }
  
  class DownloadObserver
    extends ContentObserver
  {
    private long b;
    private Handler c;
    private Context d;
    
    public DownloadObserver(Handler paramHandler, Context paramContext, long paramLong)
    {
      super();
      this.c = paramHandler;
      this.b = paramLong;
      this.d = paramContext;
    }
    
    public void onChange(boolean paramBoolean)
    {
      for (;;)
      {
        try
        {
          Logger.a("MiGameSDK.Downloader", String.valueOf(this.b));
          super.onChange(paramBoolean);
          Object localObject = new DownloadManager.Query().setFilterById(new long[] { this.b });
          localObject = ((DownloadManager)this.d.getSystemService("download")).query((DownloadManager.Query)localObject);
          if ((localObject != null) && (((Cursor)localObject).moveToNext()))
          {
            i = ((Cursor)localObject).getInt(((Cursor)localObject).getColumnIndexOrThrow("bytes_so_far"));
            int j = ((Cursor)localObject).getInt(((Cursor)localObject).getColumnIndexOrThrow("total_size"));
            if (j > 0)
            {
              i = i * 99 / j;
              Message localMessage = this.c.obtainMessage(1003);
              localMessage.getData().putInt("progress", i);
              localMessage.sendToTarget();
            }
          }
          else
          {
            return;
          }
        }
        catch (Exception localException)
        {
          Logger.a("MiGameSDK.Downloader", "DownloadObserver.onChange error", localException);
        }
        int i = 0;
      }
    }
  }
  
  private class DownloadTask
    extends AsyncTask<Void, Void, Void>
  {
    private String b;
    private String c;
    
    public DownloadTask(String paramString1, String paramString2)
    {
      this.b = paramString1;
      this.c = paramString2;
    }
    
    private Void a()
    {
      try
      {
        if (Downloader.a(Downloader.f(), this.c))
        {
          Downloader.d(Downloader.this).sendEmptyMessage(1004);
          Downloader.a(Downloader.this, Downloader.f());
          return null;
        }
        if (Downloader.a(Downloader.this, Downloader.e(Downloader.this)))
        {
          Logger.a("MiGameSDK.Downloader", "download task exist " + Downloader.e(Downloader.this));
          return null;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return null;
      }
      Downloader.d(Downloader.this).sendEmptyMessage(1000);
      Downloader.c(Downloader.this);
      DownloadManager.Request localRequest = new DownloadManager.Request(Uri.parse(this.b));
      localRequest.setAllowedOverRoaming(false);
      localRequest.setMimeType(MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(this.b)));
      localRequest.setNotificationVisibility(0);
      localRequest.setTitle(Downloader.f(Downloader.this));
      localRequest.setDescription(Downloader.g(Downloader.this));
      localRequest.setVisibleInDownloadsUi(true);
      try
      {
        localRequest.setDestinationInExternalFilesDir(Downloader.h(Downloader.this), Environment.DIRECTORY_DOWNLOADS, Downloader.i(Downloader.this));
        localRequest.setAllowedNetworkTypes(3);
        Downloader.a(Downloader.this, (DownloadManager)Downloader.h(Downloader.this).getSystemService("download"));
        Downloader.b(Downloader.this, Downloader.j(Downloader.this).enqueue(localRequest));
        Downloader.a(Downloader.this, new Downloader.DownloadObserver(Downloader.this, Downloader.d(Downloader.this), Downloader.h(Downloader.this), Downloader.e(Downloader.this)));
        Downloader.h(Downloader.this).getContentResolver().registerContentObserver(Uri.parse("content://downloads/"), true, Downloader.k(Downloader.this));
        return null;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        for (;;)
        {
          localRequest.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, Downloader.i(Downloader.this));
          Logger.a("MiGameSDK.Downloader", "Set ExternalFilesDir error, try set ExternalPublicDir", localIllegalStateException);
        }
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\Downloader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */