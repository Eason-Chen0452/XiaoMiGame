package com.aonesoft.lib;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.media.ExifInterface;
import android.os.Bundle;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import android.widget.Toast;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class ClipPictureActivity
  extends Activity
  implements View.OnTouchListener, View.OnClickListener
{
  private static final int DRAG = 1;
  private static final int NONE = 0;
  private static final int ZOOM = 2;
  private Bitmap bitmap;
  private ImageView blackBtn;
  private ClipView clipview;
  private Matrix matrix = new Matrix();
  private PointF mid = new PointF();
  private int mode = 0;
  private float oldDist = 1.0F;
  private Matrix savedMatrix = new Matrix();
  private ImageView srcPic;
  private PointF start = new PointF();
  private TextView sure;
  private String uri;
  
  private Bitmap compressImage(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(localByteArrayOutputStream.toByteArray());
    paramBitmap = BitmapFactory.decodeStream(localByteArrayInputStream, null, null);
    try
    {
      localByteArrayOutputStream.close();
      localByteArrayInputStream.close();
      return paramBitmap;
    }
    catch (IOException localIOException) {}
    return paramBitmap;
  }
  
  private Bitmap getBitmap()
  {
    View localView = getWindow().getDecorView();
    localView.setDrawingCacheEnabled(true);
    localView.buildDrawingCache();
    Object localObject = new Rect();
    getWindow().getDecorView().getWindowVisibleDisplayFrame((Rect)localObject);
    int i = ((Rect)localObject).top;
    localObject = Bitmap.createBitmap(localView.getDrawingCache(), this.clipview.getClipLeftMargin(), this.clipview.getClipTopMargin() + i, this.clipview.getClipWidth(), this.clipview.getClipHeight());
    localView.destroyDrawingCache();
    return (Bitmap)localObject;
  }
  
  public static Bitmap getPicFromBytes(byte[] paramArrayOfByte, BitmapFactory.Options paramOptions)
  {
    if (paramArrayOfByte != null)
    {
      if (paramOptions != null) {
        return BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, paramOptions);
      }
      return BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length);
    }
    return null;
  }
  
  private Bitmap getimage(String paramString)
  {
    Object localObject = new BitmapFactory.Options();
    ((BitmapFactory.Options)localObject).inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject);
    ((BitmapFactory.Options)localObject).inJustDecodeBounds = false;
    ((BitmapFactory.Options)localObject).inSampleSize = 2;
    paramString = BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject);
    localObject = new Matrix();
    int i = paramString.getWidth();
    int j = paramString.getHeight();
    ((Matrix)localObject).setRotate(readPictureDegree(this.uri));
    return Bitmap.createBitmap(paramString, 0, 0, i, j, (Matrix)localObject, true);
  }
  
  private void initClipView(int paramInt)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.bitmap = getimage(this.uri);
    this.clipview = new ClipView(this, localDisplayMetrics.widthPixels);
    this.clipview.setCustomTopBarHeight(paramInt);
    this.clipview.addOnDrawCompleteListener(new ClipView.OnDrawListenerComplete()
    {
      public void onDrawCompelete()
      {
        ClipPictureActivity.this.clipview.removeOnDrawCompleteListener();
        int i = ClipPictureActivity.this.clipview.getClipHeight();
        int j = ClipPictureActivity.this.clipview.getClipWidth();
        int k = ClipPictureActivity.this.clipview.getClipLeftMargin();
        int m = j / 2;
        int n = ClipPictureActivity.this.clipview.getClipTopMargin();
        int i1 = i / 2;
        int i2 = ClipPictureActivity.this.bitmap.getWidth();
        int i3 = ClipPictureActivity.this.bitmap.getHeight();
        float f1 = j * 1.0F / i2;
        if (i2 > i3) {
          f1 = i * 1.0F / i3;
        }
        float f2 = i2 * f1 / 2.0F;
        float f3 = ClipPictureActivity.this.clipview.getCustomTopBarHeight();
        float f4 = i3 * f1 / 2.0F;
        ClipPictureActivity.this.srcPic.setScaleType(ImageView.ScaleType.MATRIX);
        ClipPictureActivity.this.matrix.postScale(f1, f1);
        ClipPictureActivity.this.matrix.postTranslate(k + m - f2, n + i1 - (f3 + f4));
        ClipPictureActivity.this.srcPic.setImageMatrix(ClipPictureActivity.this.matrix);
        ClipPictureActivity.this.srcPic.setImageBitmap(ClipPictureActivity.this.bitmap);
      }
    });
    addContentView(this.clipview, new ViewGroup.LayoutParams(-1, -1));
  }
  
  private void midPoint(PointF paramPointF, MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX(0);
    float f2 = paramMotionEvent.getX(1);
    float f3 = paramMotionEvent.getY(0);
    float f4 = paramMotionEvent.getY(1);
    paramPointF.set((f1 + f2) / 2.0F, (f3 + f4) / 2.0F);
  }
  
  public static int readPictureDegree(String paramString)
  {
    try
    {
      int i = new ExifInterface(paramString.replace("file:///", "").replace("content://", "")).getAttributeInt("Orientation", 1);
      switch (i)
      {
      case 4: 
      case 5: 
      case 7: 
      default: 
        return 0;
      case 6: 
        return 90;
      case 3: 
        return 180;
      }
      return 270;
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
    }
    return 0;
  }
  
  public static byte[] readStream(InputStream paramInputStream)
    throws Exception
  {
    byte[] arrayOfByte = new byte[1048576];
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1)
      {
        arrayOfByte = localByteArrayOutputStream.toByteArray();
        localByteArrayOutputStream.close();
        paramInputStream.close();
        return arrayOfByte;
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  private float spacing(MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX(0) - paramMotionEvent.getX(1);
    float f2 = paramMotionEvent.getY(0) - paramMotionEvent.getY(1);
    return (float)Math.sqrt(f1 * f1 + f2 * f2);
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == AoneUiUtils.getResourceId(this, "id", "sure"))
    {
      getBitmap();
      Toast.makeText(this, "已剪裁为Bitmap", 1).show();
    }
    while (paramView.getId() != AoneUiUtils.getResourceId(this, "id", "black_btn")) {
      return;
    }
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(AoneUiUtils.getResourceId(this, "layout", "activity_clip_picture"));
    this.uri = (Environment.getExternalStorageDirectory().getPath() + File.separator + "mm.jpg");
    this.sure = ((TextView)findViewById(AoneUiUtils.getResourceId(this, "id", "sure")));
    this.blackBtn = ((ImageView)findViewById(AoneUiUtils.getResourceId(this, "id", "black_btn")));
    this.sure.setOnClickListener(this);
    this.blackBtn.setOnClickListener(this);
    this.srcPic = ((ImageView)findViewById(AoneUiUtils.getResourceId(this, "id", "src_pic")));
    this.srcPic.setOnTouchListener(this);
    this.srcPic.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        ClipPictureActivity.this.srcPic.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        ClipPictureActivity.this.initClipView(ClipPictureActivity.this.srcPic.getTop());
      }
    });
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    paramView = (ImageView)paramView;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    }
    for (;;)
    {
      paramView.setImageMatrix(this.matrix);
      return true;
      this.savedMatrix.set(this.matrix);
      this.start.set(paramMotionEvent.getX(), paramMotionEvent.getY());
      this.mode = 1;
      continue;
      this.oldDist = spacing(paramMotionEvent);
      if (this.oldDist > 10.0F)
      {
        this.savedMatrix.set(this.matrix);
        midPoint(this.mid, paramMotionEvent);
        this.mode = 2;
        continue;
        this.mode = 0;
        continue;
        if (this.mode == 1)
        {
          this.matrix.set(this.savedMatrix);
          this.matrix.postTranslate(paramMotionEvent.getX() - this.start.x, paramMotionEvent.getY() - this.start.y);
        }
        else if (this.mode == 2)
        {
          float f = spacing(paramMotionEvent);
          if (f > 10.0F)
          {
            this.matrix.set(this.savedMatrix);
            f /= this.oldDist;
            this.matrix.postScale(f, f, this.mid.x, this.mid.y);
          }
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\ClipPictureActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */