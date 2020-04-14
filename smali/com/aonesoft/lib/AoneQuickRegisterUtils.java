package com.aonesoft.lib;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.util.Date;

public class AoneQuickRegisterUtils
{
  private static final int SDK_VERSION = 19;
  private static String[] account_password = new String[2];
  private static Context mContext;
  
  public static String[] getAccount()
  {
    return account_password;
  }
  
  public static String getSDPath()
  {
    File localFile = null;
    if (Environment.getExternalStorageState().equals("mounted")) {
      localFile = Environment.getExternalStorageDirectory();
    }
    return localFile.toString();
  }
  
  public static void init(Context paramContext)
  {
    mContext = paramContext;
  }
  
  private static Bitmap makeBitmap(String paramString1, String paramString2)
  {
    Object localObject1 = BitmapFactory.decodeResource(mContext.getResources(), AoneUiUtils.getResourceId(mContext, "drawable", "aonesdk_background"));
    int i = ((Bitmap)localObject1).getWidth();
    int j = ((Bitmap)localObject1).getHeight();
    System.out.println("width=" + i);
    System.out.println("height=" + j);
    Bitmap localBitmap1 = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap1);
    Paint localPaint = new Paint();
    localPaint.setColor(-1);
    localPaint.setTextSize(26);
    localCanvas.drawBitmap((Bitmap)localObject1, 0.0F, 0.0F, localPaint);
    localObject1 = new Rect();
    Object localObject2 = mContext.getString(AoneUiUtils.getResourceId(mContext, "string", "aonesdk_qRegisterAccount"));
    localPaint.getTextBounds((String)localObject2, 0, ((String)localObject2).length(), (Rect)localObject1);
    int k = ((Rect)localObject1).width();
    ((Rect)localObject1).height();
    localCanvas.drawText((String)localObject2, i / 2 - k / 2, j * 4 / 5, localPaint);
    localObject1 = BitmapFactory.decodeResource(mContext.getResources(), AoneUiUtils.getResourceId(mContext, "drawable", "aonesdk_light_account"));
    k = ((Bitmap)localObject1).getWidth();
    int m = ((Bitmap)localObject1).getHeight();
    localCanvas.drawBitmap((Bitmap)localObject1, i / 2 - k * 2, j * 2 / 5 - m, localPaint);
    localObject2 = mContext.getString(AoneUiUtils.getResourceId(mContext, "string", "aonesdk_account")).trim();
    localCanvas.drawText(((String)localObject2).substring(0, ((String)localObject2).length() - 1), i / 2 - k / 2, j * 2 / 5 - 5, localPaint);
    localPaint.setColor(-16777216);
    System.out.println("userName=" + paramString1);
    localObject2 = BitmapFactory.decodeResource(mContext.getResources(), AoneUiUtils.getResourceId(mContext, "drawable", "aonesdk_edit"));
    int n = ((Bitmap)localObject2).getWidth();
    k = ((Bitmap)localObject2).getHeight();
    localCanvas.drawBitmap((Bitmap)localObject2, i / 2 - n / 2, j * 2 / 5 + m, localPaint);
    localCanvas.drawBitmap((Bitmap)localObject2, i / 2 - n / 2, j * 3 / 5, localPaint);
    localCanvas.drawText(paramString1, i / 2 - 60, j * 2 / 5 + m * 2 + 10, localPaint);
    localPaint.setColor(-16777216);
    Bitmap localBitmap2 = BitmapFactory.decodeResource(mContext.getResources(), AoneUiUtils.getResourceId(mContext, "drawable", "aonesdk_light_password"));
    m = localBitmap2.getWidth();
    n = localBitmap2.getHeight();
    localCanvas.drawBitmap(localBitmap2, i / 2 - m * 2, j * 3 / 5 - k, localPaint);
    localPaint.setColor(-1);
    paramString1 = mContext.getString(AoneUiUtils.getResourceId(mContext, "string", "aonesdk_quickregisterpassword")).trim();
    localCanvas.drawText(paramString1.substring(0, paramString1.length() - 1), i / 2 - m + 10, j * 3 / 5 - k + n, localPaint);
    localPaint.setColor(-16777216);
    localCanvas.drawText(paramString2, i / 2 - 58, j * 3 / 5 + n + 5, localPaint);
    if (AoneConfigManager.getIsSmartspace()) {}
    for (paramString1 = BitmapFactory.decodeResource(mContext.getResources(), AoneUiUtils.getResourceId(mContext, "drawable", "aonesdk_smartspace_logo"));; paramString1 = BitmapFactory.decodeResource(mContext.getResources(), AoneUiUtils.getResourceId(mContext, "drawable", "aonesdk_logo")))
    {
      k = paramString1.getWidth();
      paramString1.getHeight();
      localCanvas.drawBitmap(paramString1, i / 2 - k / 2, j / 5, localPaint);
      recyle(paramString1);
      recyle((Bitmap)localObject1);
      recyle((Bitmap)localObject2);
      recyle(localBitmap2);
      return localBitmap1;
    }
  }
  
  private static void recyle(Bitmap paramBitmap)
  {
    if (!paramBitmap.isRecycled()) {
      paramBitmap.recycle();
    }
  }
  
  public static void saveStrsToPhotoAlbum(String paramString1, String paramString2)
  {
    System.out.println("hhh -------------- save photo");
    new Date();
    File localFile = new File(getSDPath());
    if ((!localFile.exists()) && (!localFile.isDirectory()))
    {
      System.out.println("hhh -------------- create dir");
      localFile.mkdir();
    }
    localFile = new File(getSDPath() + "/aonesdk_" + System.currentTimeMillis() + ".png");
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      try
      {
        paramString1 = makeBitmap(paramString1, paramString2);
        paramString1.compress(Bitmap.CompressFormat.PNG, 90, localFileOutputStream);
        MediaStore.Images.Media.insertImage(mContext.getContentResolver(), paramString1, "username", "quickregister");
        if (Build.VERSION.SDK_INT >= 19)
        {
          paramString2 = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
          paramString2.setData(Uri.fromFile(localFile));
          mContext.sendBroadcast(paramString2);
        }
        for (;;)
        {
          recyle(paramString1);
          return;
          mContext.sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse("file://" + Environment.getExternalStorageDirectory())));
        }
        paramString1.printStackTrace();
      }
      catch (FileNotFoundException paramString1) {}
    }
    catch (FileNotFoundException paramString1)
    {
      for (;;) {}
    }
  }
  
  public static void setAccount(String[] paramArrayOfString)
  {
    account_password = paramArrayOfString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneQuickRegisterUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */