package com.aonesoft.lib;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.ImageView;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import org.cocos2dx.plugin.PluginWrapper;

public class AoneFixHeadImg
{
  private static final int CODE_CAMERA_REQUEST = 161;
  private static final int CODE_GALLERY_REQUEST = 160;
  private static final int CODE_RESULT_REQUEST = 162;
  private static final int OUTPUT_X = 480;
  private static final int OUTPUT_Y = 480;
  private static final int PHOTO_CAMERA_PICKED_WITH_DATA = 3022;
  private static final String TAG = "AoneFixHeadImg";
  private static int crop = 128;
  private static String cropImagePath;
  private static Uri cropPhotoUri;
  private static File fileCropUri;
  private static File fileUri = new File(Environment.getExternalStorageDirectory().getPath() + "/photo.jpg");
  private static Uri imageUri;
  private static Context mContext;
  private static View mDialogView;
  private static int mHeightPixel;
  private static ImageUtils mImageUtils;
  private static ImageView mImageView;
  private static int mWidthPixel;
  private static Dialog setHeadDialog;
  
  public static void ImageScale()
  {
    Intent localIntent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
    ((Activity)mContext).startActivityForResult(localIntent, 160);
  }
  
  private static void bindDialogEvent()
  {
    Button localButton1 = (Button)mDialogView.findViewById(AoneUiUtils.getResourceId(mContext, "id", "iv_userinfo_takepic"));
    Button localButton2 = (Button)mDialogView.findViewById(AoneUiUtils.getResourceId(mContext, "id", "iv_userinfo_choosepic"));
    Button localButton3 = (Button)mDialogView.findViewById(AoneUiUtils.getResourceId(mContext, "id", "iv_userinfo_cancle"));
    localButton1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AoneFixHeadImg.imageUri = Uri.fromFile(AoneFixHeadImg.fileUri);
        PhotoUtils.takePicture((Activity)AoneFixHeadImg.mContext, AoneFixHeadImg.imageUri, 161);
      }
    });
    localButton2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView) {}
    });
    localButton3.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        PluginWrapper.runOnGLThread(new Runnable()
        {
          public void run() {}
        });
        AoneFixHeadImg.setHeadDialog.dismiss();
      }
    });
  }
  
  public static void cropImage(Uri paramUri)
  {
    Intent localIntent = new Intent("android.intent.action.GET_CONTENT", null);
    localIntent.setType("image/*");
    localIntent.putExtra("crop", "true");
    localIntent.putExtra("aspectX", 1);
    localIntent.putExtra("aspectY", 1);
    localIntent.putExtra("outputX", mWidthPixel);
    localIntent.putExtra("outputY", mHeightPixel);
    localIntent.putExtra("scale", true);
    localIntent.putExtra("return-data", false);
    localIntent.putExtra("output", paramUri);
    localIntent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
    ((Activity)mContext).startActivityForResult(localIntent, 1000);
  }
  
  protected static void doCropPhoto(Bitmap paramBitmap)
  {
    paramBitmap = getCropImageIntent(paramBitmap);
    ((Activity)mContext).startActivityForResult(paramBitmap, 3022);
  }
  
  public static Intent getCropImageIntent(Bitmap paramBitmap)
  {
    Intent localIntent = new Intent("com.android.camera.action.CROP");
    localIntent.setType("image/*");
    localIntent.putExtra("data", paramBitmap);
    localIntent.putExtra("crop", "true");
    localIntent.putExtra("aspectX", 1);
    localIntent.putExtra("aspectY", 1);
    localIntent.putExtra("outputX", crop);
    localIntent.putExtra("outputY", crop);
    localIntent.putExtra("return-data", true);
    return localIntent;
  }
  
  public static void getHeadImage(final String paramString, int paramInt1, final int paramInt2)
  {
    PluginWrapper.runOnMainThread(new Runnable()
    {
      public void run()
      {
        Log.d("AoneFixHeadImg", "getHeadImage start~");
        AoneFixHeadImg.mWidthPixel = this.val$widthPixel;
        AoneFixHeadImg.mHeightPixel = paramInt2;
        AoneFixHeadImg.cropImagePath = paramString;
        AoneFixHeadImg.fileCropUri = new File(AoneFixHeadImg.access$3() + "/huoshouCrop.png");
        try
        {
          AoneFixHeadImg.fileCropUri.createNewFile();
          AoneFixHeadImg.setHeadDialog = new AlertDialog.Builder(AoneFixHeadImg.mContext).create();
          AoneFixHeadImg.setHeadDialog.show();
          AoneFixHeadImg.mDialogView = View.inflate(AoneFixHeadImg.mContext.getApplicationContext(), AoneUiUtils.getResourceId(AoneFixHeadImg.mContext, "layout", "layout_dialog"), null);
          AoneFixHeadImg.setHeadDialog.setCanceledOnTouchOutside(false);
          AoneFixHeadImg.setHeadDialog.setCancelable(false);
          AoneFixHeadImg.setHeadDialog.getWindow().setContentView(AoneFixHeadImg.mDialogView);
          Object localObject = ((Activity)AoneFixHeadImg.mContext).getWindowManager().getDefaultDisplay();
          WindowManager.LayoutParams localLayoutParams = AoneFixHeadImg.setHeadDialog.getWindow().getAttributes();
          localLayoutParams.width = ((Display)localObject).getWidth();
          AoneFixHeadImg.setHeadDialog.getWindow().setAttributes(localLayoutParams);
          localObject = new DisplayMetrics();
          ((Activity)AoneFixHeadImg.mContext).getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)localObject);
          if (AoneFixHeadImg.mWidthPixel == 0) {
            AoneFixHeadImg.mWidthPixel = ((DisplayMetrics)localObject).widthPixels;
          }
          if (AoneFixHeadImg.mHeightPixel == 0) {
            AoneFixHeadImg.mHeightPixel = ((DisplayMetrics)localObject).heightPixels;
          }
          if (AoneFixHeadImg.mWidthPixel >= AoneFixHeadImg.mHeightPixel)
          {
            AoneFixHeadImg.mWidthPixel = AoneFixHeadImg.mHeightPixel;
            AoneFixHeadImg.access$13();
            return;
          }
        }
        catch (IOException localIOException)
        {
          for (;;)
          {
            localIOException.printStackTrace();
            continue;
            AoneFixHeadImg.mHeightPixel = AoneFixHeadImg.mWidthPixel;
          }
        }
      }
    });
  }
  
  public static void getImg(ImageView paramImageView, Intent paramIntent)
  {
    paramIntent = paramIntent.getData();
    paramImageView = new String[1];
    paramImageView[0] = "_data";
    paramIntent = mContext.getContentResolver().query(paramIntent, paramImageView, null, null, null);
    paramIntent.moveToFirst();
    paramImageView = paramIntent.getString(paramIntent.getColumnIndex(paramImageView[0]));
    paramIntent.close();
    System.out.println("BitmapFactory.decodeFile(picturePath)==" + BitmapFactory.decodeFile(paramImageView));
    doCropPhoto(BitmapFactory.decodeFile(paramImageView));
  }
  
  private static void getImg(ImageView paramImageView, Bitmap paramBitmap)
  {
    paramImageView.setImageBitmap(paramBitmap);
  }
  
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
    mContext = paramContext;
    mImageUtils = new ImageUtils(paramContext);
  }
  
  public static void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    System.out.println("RESULT_OK==" + paramInt2);
    Object localObject = (Activity)mContext;
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    do
    {
      do
      {
        return;
        Log.d("AoneFixHeadImg", "onActivityResult-->CODE_CAMERA_REQUEST-->data:" + paramIntent);
        cropPhotoUri = Uri.fromFile(fileCropUri);
        Log.d("AoneFixHeadImg", "onActivityResult-->CODE_CAMERA_REQUEST-->cropPhotoUri:" + cropPhotoUri);
        paramIntent = PhotoUtils.getBitmapFromUri(cropPhotoUri, mContext);
        savePicture(cropImagePath, paramIntent);
        PhotoUtils.cropImageUri((Activity)mContext, imageUri, cropPhotoUri, 1, 1, mWidthPixel, mHeightPixel, 162);
        return;
        Log.d("AoneFixHeadImg", "onActivityResult-->CODE_GALLERY_REQUEST-->data:" + paramIntent);
        cropPhotoUri = Uri.fromFile(fileCropUri);
        paramIntent = Uri.parse(PhotoUtils.getPath(mContext, paramIntent.getData()));
        PhotoUtils.cropImageUri((Activity)mContext, paramIntent, cropPhotoUri, 1, 1, mWidthPixel, mHeightPixel, 162);
        return;
        Log.d("AoneFixHeadImg", "onActivityResult-->PHOTO_CAMERA_PICKED_WITH_DATA-->data:" + paramIntent);
        return;
        Log.d("AoneFixHeadImg", "onActivityResult-->CODE_RESULT_REQUEST-->data:" + paramIntent);
        Log.d("AoneFixHeadImg", "onActivityResult-->CODE_RESULT_REQUEST-->cropPhotoUri:" + cropPhotoUri);
        paramIntent = PhotoUtils.getBitmapFromUri(cropPhotoUri, mContext);
        new File(cropImagePath);
        try
        {
          localObject = new DataOutputStream(new FileOutputStream(cropImagePath));
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          paramIntent.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
          ((DataOutputStream)localObject).write(localByteArrayOutputStream.toByteArray());
          setHeadDialog.dismiss();
          return;
        }
        catch (Exception paramIntent)
        {
          for (;;)
          {
            paramIntent.printStackTrace();
          }
        }
        System.out.println("requestcode == " + paramInt1);
        System.out.println("resultCode == " + paramInt2);
      } while ((paramInt1 != 162) && (paramInt1 != 161) && (paramInt1 != 160) && (paramInt1 != 3022));
      PluginWrapper.runOnGLThread(new Runnable()
      {
        public void run() {}
      });
    } while (setHeadDialog == null);
    setHeadDialog.dismiss();
  }
  
  public static void photo()
  {
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    ((Activity)mContext).startActivityForResult(localIntent, 160);
  }
  
  private static void savePicture(String paramString, Bitmap paramBitmap)
  {
    Log.d("debug", "SavePicture 1");
    Log.d("debug", "SavePicture 2");
    Log.d("debug", "SavePicture 3");
    Object localObject;
    if (paramBitmap != null)
    {
      if ((paramString != null) && (paramString.length() > 0)) {
        break label242;
      }
      localObject = getSDCardPath() + File.separator + "aone/pic/screenShots";
      paramString = localObject + File.separator + "aone_" + System.currentTimeMillis() + ".png";
    }
    for (;;)
    {
      try
      {
        Log.d("debug", "filepath = " + paramString);
        localObject = new File((String)localObject);
        paramString = new File(paramString);
        if (!((File)localObject).exists())
        {
          Log.d("debug", "path is not exists");
          ((File)localObject).mkdirs();
        }
        if (!paramString.exists())
        {
          Log.d("debug", "file create new ");
          paramString.createNewFile();
        }
        paramString = new FileOutputStream(paramString);
        if (paramString != null)
        {
          paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, paramString);
          paramString.flush();
          paramString.close();
          Log.d("debug", "save ok");
        }
        return;
      }
      catch (Exception paramString)
      {
        label242:
        String str;
        int i;
        paramString.printStackTrace();
      }
      if (!paramString.endsWith(".png"))
      {
        str = "aone_" + System.currentTimeMillis() + ".png";
        if (paramString.startsWith(File.separator))
        {
          localObject = getSDCardPath() + paramString;
          Log.d("debug", "savePath = " + (String)localObject);
          if (paramString.endsWith(File.separator)) {
            paramString = localObject + str;
          }
        }
        else
        {
          localObject = getSDCardPath() + File.separator + paramString;
          continue;
        }
      }
      else
      {
        i = paramString.lastIndexOf(File.separator);
        str = paramString.substring(i + 1, paramString.length());
        paramString = paramString.substring(0, i);
        if (paramString.startsWith(File.separator))
        {
          localObject = getSDCardPath() + paramString;
          continue;
        }
        localObject = getSDCardPath() + File.separator + paramString;
        continue;
      }
      paramString = localObject + File.separator + str;
    }
  }
  
  public static void setImageView(ImageView paramImageView)
  {
    mImageView = paramImageView;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneFixHeadImg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */