package com.aonesoft.lib;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore.Audio.Media;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video.Media;
import java.io.PrintStream;
import org.cocos2dx.plugin.PluginWrapper;

public class PhotoUtils
{
  private static final String TAG = "PhotoUtils";
  
  public static void cropImageUri(final Activity paramActivity, final Uri paramUri1, final Uri paramUri2, final int paramInt1, final int paramInt2, int paramInt3, final int paramInt4, final int paramInt5)
  {
    PluginWrapper.runOnMainThread(new Runnable()
    {
      public void run()
      {
        Intent localIntent = new Intent("com.android.camera.action.CROP");
        System.out.println("desUri  width===" + this.val$width);
        System.out.println("desUri  height===" + paramInt4);
        localIntent.setDataAndType(paramUri1, "image/*");
        localIntent.putExtra("crop", "true");
        localIntent.putExtra("aspectX", paramInt1);
        localIntent.putExtra("aspectY", paramInt2);
        localIntent.putExtra("outputX", this.val$width);
        localIntent.putExtra("outputY", paramInt4);
        localIntent.putExtra("scale", true);
        localIntent.putExtra("scaleUpIfNeeded", true);
        localIntent.putExtra("output", paramUri2);
        localIntent.putExtra("return-data", false);
        localIntent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
        localIntent.putExtra("noFaceDetection", true);
        System.out.println("cropImageUri====" + paramUri2);
        paramActivity.startActivityForResult(localIntent, paramInt5);
      }
    });
  }
  
  public static Bitmap getBitmapFromUri(Uri paramUri, Context paramContext)
  {
    try
    {
      paramUri = MediaStore.Images.Media.getBitmap(paramContext.getContentResolver(), paramUri);
      return paramUri;
    }
    catch (Exception paramUri)
    {
      paramUri.printStackTrace();
    }
    return null;
  }
  
  private static String getDataColumn(Context paramContext, Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    Context localContext = null;
    try
    {
      paramContext = paramContext.getContentResolver().query(paramUri, new String[] { "_data" }, paramString, paramArrayOfString, null);
      if (paramContext != null)
      {
        localContext = paramContext;
        if (paramContext.moveToFirst())
        {
          localContext = paramContext;
          paramUri = paramContext.getString(paramContext.getColumnIndexOrThrow("_data"));
          return paramUri;
        }
      }
    }
    finally
    {
      if (localContext != null) {
        localContext.close();
      }
    }
    if (paramContext != null) {
      paramContext.close();
    }
    return null;
  }
  
  @SuppressLint({"NewApi"})
  public static String getPath(Context paramContext, Uri paramUri)
  {
    int i;
    if (Build.VERSION.SDK_INT >= 19) {
      i = 1;
    }
    while ((i != 0) && (DocumentsContract.isDocumentUri(paramContext, paramUri))) {
      if (isExternalStorageDocument(paramUri))
      {
        paramContext = DocumentsContract.getDocumentId(paramUri).split(":");
        if (!"primary".equalsIgnoreCase(paramContext[0])) {
          break label325;
        }
        return "file:///" + Environment.getExternalStorageDirectory() + "/" + paramContext[1];
        i = 0;
      }
      else
      {
        if (isDownloadsDocument(paramUri))
        {
          paramUri = DocumentsContract.getDocumentId(paramUri);
          paramUri = ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(paramUri).longValue());
          return "file:///" + getDataColumn(paramContext, paramUri, null, null);
        }
        if (!isMediaDocument(paramUri)) {
          break label325;
        }
        Object localObject1 = DocumentsContract.getDocumentId(paramUri).split(":");
        Object localObject2 = localObject1[0];
        paramUri = null;
        if ("image".equals(localObject2)) {
          paramUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        }
        for (;;)
        {
          localObject1 = localObject1[1];
          return "file:///" + getDataColumn(paramContext, paramUri, "_id=?", new String[] { localObject1 });
          if ("video".equals(localObject2)) {
            paramUri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
          } else if ("audio".equals(localObject2)) {
            paramUri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
          }
        }
      }
    }
    if ("content".equalsIgnoreCase(paramUri.getScheme())) {
      return "file:///" + getDataColumn(paramContext, paramUri, null, null);
    }
    if ("file".equalsIgnoreCase(paramUri.getScheme())) {
      return "file:///" + paramUri.getPath();
    }
    label325:
    return null;
  }
  
  private static boolean isDownloadsDocument(Uri paramUri)
  {
    return "com.android.providers.downloads.documents".equals(paramUri.getAuthority());
  }
  
  private static boolean isExternalStorageDocument(Uri paramUri)
  {
    return "com.android.externalstorage.documents".equals(paramUri.getAuthority());
  }
  
  private static boolean isMediaDocument(Uri paramUri)
  {
    return "com.android.providers.media.documents".equals(paramUri.getAuthority());
  }
  
  public static void openPic(Activity paramActivity, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.GET_CONTENT");
    localIntent.setType("image/*");
    paramActivity.startActivityForResult(localIntent, paramInt);
  }
  
  public static void takePicture(Activity paramActivity, Uri paramUri, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.media.action.IMAGE_CAPTURE");
    localIntent.putExtra("output", paramUri);
    paramActivity.startActivityForResult(localIntent, paramInt);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\PhotoUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */