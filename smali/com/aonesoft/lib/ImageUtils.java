package com.aonesoft.lib;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.os.SystemClock;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintStream;

public class ImageUtils
{
  public static final int ACTIVITY_RESULT_ALBUM = 2;
  public static final int ACTIVITY_RESULT_CAMERA = 1;
  private Context context;
  public Uri photoUri;
  public File picFile;
  private Uri tempUri;
  
  public ImageUtils(Context paramContext)
  {
    this.context = paramContext;
  }
  
  private Intent cutImageByAlbumIntent()
  {
    Intent localIntent = new Intent("android.intent.action.GET_CONTENT", null);
    localIntent.setType("image/*");
    localIntent.putExtra("crop", "true");
    localIntent.putExtra("aspectX", 1);
    localIntent.putExtra("aspectY", 1);
    localIntent.putExtra("outputX", 200);
    localIntent.putExtra("outputY", 200);
    localIntent.putExtra("noFaceDetection", true);
    localIntent.putExtra("scale", true);
    localIntent.putExtra("return-data", false);
    localIntent.putExtra("output", this.tempUri);
    localIntent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
    return localIntent;
  }
  
  public void byAlbum()
  {
    try
    {
      Object localObject = new File(Environment.getExternalStorageDirectory(), "/icon");
      if (!((File)localObject).exists()) {
        ((File)localObject).mkdirs();
      }
      this.picFile = new File((File)localObject, SystemClock.currentThreadTimeMillis() + ".png");
      if (!this.picFile.exists()) {
        this.picFile.createNewFile();
      }
      this.tempUri = Uri.fromFile(this.picFile);
      localObject = cutImageByAlbumIntent();
      ((Activity)this.context).startActivityForResult((Intent)localObject, 2);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void byCamera()
  {
    try
    {
      Object localObject = new File(Environment.getExternalStorageDirectory(), "/icon");
      if (!((File)localObject).exists()) {
        ((File)localObject).mkdirs();
      }
      this.picFile = new File((File)localObject, SystemClock.currentThreadTimeMillis() + ".png");
      if (!this.picFile.exists()) {
        this.picFile.createNewFile();
      }
      this.tempUri = Uri.fromFile(this.picFile);
      localObject = new Intent("android.media.action.IMAGE_CAPTURE");
      ((Intent)localObject).putExtra("output", this.tempUri);
      ((Activity)this.context).startActivityForResult((Intent)localObject, 1);
      System.out.println("-->tempUri : " + this.tempUri.toString() + "-->path:" + this.tempUri.getPath());
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      localActivityNotFoundException.printStackTrace();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  public void cutImageByCamera()
  {
    Intent localIntent = new Intent("com.android.camera.action.CROP");
    localIntent.setDataAndType(this.tempUri, "image/*");
    localIntent.putExtra("crop", "true");
    localIntent.putExtra("aspectX", 1);
    localIntent.putExtra("aspectY", 1);
    localIntent.putExtra("outputX", 100);
    localIntent.putExtra("outputY", 100);
    localIntent.putExtra("scale", true);
    localIntent.putExtra("output", this.tempUri);
    localIntent.putExtra("return-data", false);
    localIntent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
    localIntent.putExtra("noFaceDetection", true);
    ((Activity)this.context).startActivityForResult(localIntent, 2);
  }
  
  public Bitmap decodeBitmap()
  {
    Bitmap localBitmap = null;
    try
    {
      if (this.tempUri != null)
      {
        this.photoUri = this.tempUri;
        localBitmap = BitmapFactory.decodeStream(this.context.getContentResolver().openInputStream(this.photoUri));
      }
      return localBitmap;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
    }
    return null;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\ImageUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */