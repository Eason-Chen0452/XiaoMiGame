package com.xiaomi.gamecenter.sdk.ui.actlayout;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import cn.com.wali.basetool.utils.MD5;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class DownloadServiceUtil
{
  private Handler a;
  
  public DownloadServiceUtil(Handler paramHandler)
  {
    this.a = paramHandler;
  }
  
  private static void a(boolean paramBoolean)
  {
    ReporterUtils.getInstance().xmsdkReport(2305);
    Context localContext = MiCommplatform.getInstance().getApplicationContext();
    Object localObject2 = new File(localContext.getFilesDir(), ".");
    ((File)localObject2).mkdirs();
    Object localObject1 = new File((File)localObject2, "service.apk");
    localObject2 = new File((File)localObject2, "service.tmp");
    HyUtils.a("777", ((File)localObject1).getAbsolutePath());
    HyUtils.a("777", ((File)localObject2).getAbsolutePath());
    if (paramBoolean)
    {
      if (((File)localObject1).exists())
      {
        ReporterUtils.getInstance().xmsdkReport(2212);
        localObject2 = new Intent("android.intent.action.VIEW");
        if (Build.VERSION.SDK_INT > 23)
        {
          ((Intent)localObject2).setFlags(1);
          ((Intent)localObject2).setDataAndType(FileProvider.getUriForFile(localContext, localContext.getPackageName() + ".fileprovider", (File)localObject1), "application/vnd.android.package-archive");
          ((Intent)localObject2).addFlags(268435456);
        }
        for (;;)
        {
          localContext.startActivity((Intent)localObject2);
          return;
          ((Intent)localObject2).setDataAndType(Uri.fromFile((File)localObject1), "application/vnd.android.package-archive");
          ((Intent)localObject2).addFlags(268435456);
        }
      }
      localObject1 = new Intent("android.intent.action.VIEW", Uri.parse("http://app.xiaomi.com/details?id=com.xiaomi.gamecenter.sdk.service&back=true&ref=gamesdkjar&startDownload=true"));
      ((Intent)localObject1).addFlags(268435456);
      localContext.startActivity((Intent)localObject1);
      return;
    }
    ((File)localObject1).delete();
    if (((File)localObject2).renameTo((File)localObject1))
    {
      HyUtils.a("777", ((File)localObject1).getAbsolutePath());
      ReporterUtils.getInstance().xmsdkReport(2212);
      localObject2 = new Intent("android.intent.action.VIEW");
      if (Build.VERSION.SDK_INT > 23)
      {
        ((Intent)localObject2).setFlags(1);
        ((Intent)localObject2).setDataAndType(FileProvider.getUriForFile(localContext, localContext.getPackageName() + ".fileprovider", (File)localObject1), "application/vnd.android.package-archive");
        ((Intent)localObject2).addFlags(268435456);
      }
      for (;;)
      {
        localContext.startActivity((Intent)localObject2);
        return;
        ((Intent)localObject2).setDataAndType(Uri.fromFile((File)localObject1), "application/vnd.android.package-archive");
        ((Intent)localObject2).addFlags(268435456);
      }
    }
    localObject1 = new Intent("android.intent.action.VIEW", Uri.parse("http://app.xiaomi.com/details?id=com.xiaomi.gamecenter.sdk.service&back=true&ref=gamesdkjar&startDownload=true"));
    ((Intent)localObject1).addFlags(268435456);
    localContext.startActivity((Intent)localObject1);
  }
  
  public final void a()
  {
    int i = 0;
    try
    {
      localObject2 = new File(MiCommplatform.getInstance().getApplicationContext().getFilesDir(), ".");
      ((File)localObject2).mkdirs();
      Object localObject1 = new File((File)localObject2, "service.tmp");
      localObject2 = new File((File)localObject2, "service.apk");
      if ((((File)localObject2).exists()) && (TextUtils.equals(MD5.b(((File)localObject2).getAbsolutePath()), HyUtils.e)))
      {
        localObject1 = new Message();
        ((Message)localObject1).what = 4;
        this.a.removeMessages(8);
        this.a.sendMessage((Message)localObject1);
        a(true);
        return;
      }
      if ((((File)localObject1).exists()) && (TextUtils.equals(MD5.b(((File)localObject1).getAbsolutePath()), HyUtils.e)))
      {
        localObject1 = new Message();
        ((Message)localObject1).what = 4;
        this.a.removeMessages(8);
        this.a.sendMessage((Message)localObject1);
        a(false);
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      localObject2 = new Message();
      ((Message)localObject2).what = -1;
      ((Message)localObject2).obj = localException.getMessage();
      this.a.removeMessages(8);
      this.a.sendMessage((Message)localObject2);
      return;
    }
    localException.delete();
    ((File)localObject2).delete();
    localException.createNewFile();
    Object localObject2 = (HttpURLConnection)new URL(HyUtils.d).openConnection();
    ((HttpURLConnection)localObject2).setConnectTimeout(3000);
    ((HttpURLConnection)localObject2).connect();
    InputStream localInputStream = ((HttpURLConnection)localObject2).getInputStream();
    if (localInputStream == null)
    {
      localObject3 = new Message();
      ((Message)localObject3).what = -1;
      ((Message)localObject3).obj = "网络错误";
      this.a.removeMessages(8);
      this.a.sendMessage((Message)localObject3);
    }
    if (this.a != null) {
      this.a.sendEmptyMessage(1);
    }
    Object localObject3 = new FileOutputStream(localException);
    byte[] arrayOfByte = new byte['Ѐ'];
    for (long l = 0L;; l = System.currentTimeMillis())
    {
      int j = localInputStream.read(arrayOfByte);
      if (j == -1) {
        break;
      }
      ((FileOutputStream)localObject3).write(arrayOfByte, 0, j);
      i += j;
      Message localMessage2 = new Message();
      localMessage2.what = 2;
      localMessage2.arg1 = i;
      if (this.a != null)
      {
        this.a.removeMessages(8);
        this.a.sendMessage(localMessage2);
        this.a.sendEmptyMessageDelayed(8, 10000L);
      }
      if ((0L != l) && (System.currentTimeMillis() - l > 10000L)) {
        return;
      }
    }
    ((HttpURLConnection)localObject2).disconnect();
    localInputStream.close();
    localObject2 = new Message();
    ((Message)localObject2).what = 3;
    this.a.removeMessages(8);
    this.a.sendMessage((Message)localObject2);
    if (TextUtils.equals(MD5.b(localException.getAbsolutePath()), HyUtils.e))
    {
      Message localMessage1 = new Message();
      localMessage1.what = 4;
      this.a.removeMessages(8);
      this.a.sendMessage(localMessage1);
      a(false);
      return;
    }
    ReporterUtils.getInstance().xmsdkReport(2211);
    ((Message)localObject2).what = -1;
    ((Message)localObject2).obj = "MD5校验错误";
    this.a.removeMessages(8);
    this.a.sendMessage((Message)localObject2);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\DownloadServiceUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */