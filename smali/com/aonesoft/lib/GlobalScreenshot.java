package com.aonesoft.lib;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.PointF;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import org.cocos2dx.plugin.PluginWrapper;

public class GlobalScreenshot
{
  private static final float BACKGROUND_ALPHA = 0.5F;
  private static final String FILE_NAME_START = "aone_";
  private static final String FILE_SUFFIX_NAME = ".png";
  private static final int SCREENSHOT_DROP_IN_DURATION = 430;
  private static final float SCREENSHOT_DROP_IN_MIN_SCALE = 0.725F;
  private static final int SCREENSHOT_DROP_OUT_DELAY = 500;
  private static final int SCREENSHOT_DROP_OUT_DURATION = 430;
  private static final float SCREENSHOT_DROP_OUT_MIN_SCALE = 0.45F;
  private static final float SCREENSHOT_DROP_OUT_MIN_SCALE_OFFSET = 0.0F;
  private static final int SCREENSHOT_DROP_OUT_SCALE_DURATION = 370;
  private static final int SCREENSHOT_FAST_DROP_OUT_DURATION = 320;
  private static final float SCREENSHOT_FAST_DROP_OUT_MIN_SCALE = 0.6F;
  private static final int SCREENSHOT_FLASH_TO_PEAK_DURATION = 130;
  private static final float SCREENSHOT_SCALE = 1.0F;
  private static final int SDK_VERSION = 19;
  private static final String TAG = "GlobalScreenshot";
  private ImageView mBackgroundView;
  private float mBgPadding;
  private float mBgPaddingScale;
  private Context mContext;
  private Display mDisplay;
  private DisplayMetrics mDisplayMetrics;
  private Bitmap mScreenBitmap;
  private AnimatorSet mScreenshotAnimation;
  private ImageView mScreenshotFlash;
  private View mScreenshotLayout;
  private ImageView mScreenshotView;
  private WindowManager.LayoutParams mWindowLayoutParams;
  private WindowManager mWindowManager;
  
  @SuppressLint({"NewApi"})
  public GlobalScreenshot(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    this.mContext = paramContext;
    this.mScreenshotLayout = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(AoneUiUtils.getResourceId(paramContext, "layout", "global_screenshot"), null);
    this.mBackgroundView = ((ImageView)this.mScreenshotLayout.findViewById(AoneUiUtils.getResourceId(paramContext, "id", "global_screenshot_background")));
    this.mScreenshotView = ((ImageView)this.mScreenshotLayout.findViewById(AoneUiUtils.getResourceId(paramContext, "id", "global_screenshot")));
    this.mScreenshotFlash = ((ImageView)this.mScreenshotLayout.findViewById(AoneUiUtils.getResourceId(paramContext, "id", "global_screenshot_flash")));
    this.mScreenshotLayout.setFocusable(true);
    this.mScreenshotLayout.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return true;
      }
    });
    this.mWindowLayoutParams = new WindowManager.LayoutParams(-1, -1, 0, 0, 2003, 17302784, -3);
    this.mWindowLayoutParams.setTitle("ScreenshotAnimation");
    this.mWindowManager = ((WindowManager)paramContext.getSystemService("window"));
    this.mDisplay = this.mWindowManager.getDefaultDisplay();
    this.mDisplayMetrics = new DisplayMetrics();
    this.mDisplay.getMetrics(this.mDisplayMetrics);
    this.mBgPadding = localResources.getDimensionPixelSize(AoneUiUtils.getResourceId(paramContext, "dimen", "global_screenshot_bg_padding"));
    this.mBgPaddingScale = (this.mBgPadding / this.mDisplayMetrics.widthPixels);
  }
  
  private void SavePicture(String paramString)
  {
    Log.d("debug", "SavePicture 1");
    this.mScreenshotView.setDrawingCacheEnabled(true);
    Log.d("debug", "SavePicture 2");
    Bitmap localBitmap = Bitmap.createBitmap(this.mScreenshotView.getDrawingCache());
    Log.d("debug", "SavePicture 3");
    String str;
    if (localBitmap != null)
    {
      if ((paramString != null) && (paramString.length() > 0)) {
        break label278;
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
          localBitmap.compress(Bitmap.CompressFormat.PNG, 100, (OutputStream)localObject);
          ((FileOutputStream)localObject).flush();
          ((FileOutputStream)localObject).close();
          Log.d("debug", "save ok");
        }
      }
      catch (Exception localException)
      {
        Object localObject;
        label278:
        int i;
        localException.printStackTrace();
        continue;
      }
      insertImageToMedia(localBitmap, str, paramString);
      recyle(localBitmap);
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
  
  @SuppressLint({"NewApi"})
  private ValueAnimator createScreenshotDropInAnimation()
  {
    final Interpolator local5 = new Interpolator()
    {
      public float getInterpolation(float paramAnonymousFloat)
      {
        if (paramAnonymousFloat <= 0.60465115F) {
          return (float)Math.sin(3.141592653589793D * (paramAnonymousFloat / 0.60465115F));
        }
        return 0.0F;
      }
    };
    final Interpolator local6 = new Interpolator()
    {
      public float getInterpolation(float paramAnonymousFloat)
      {
        if (paramAnonymousFloat < 0.30232558F) {
          return 0.0F;
        }
        return (paramAnonymousFloat - 0.60465115F) / 0.39534885F;
      }
    };
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    localValueAnimator.setDuration(430L);
    localValueAnimator.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        GlobalScreenshot.this.mScreenshotFlash.setVisibility(8);
      }
      
      public void onAnimationStart(Animator paramAnonymousAnimator)
      {
        GlobalScreenshot.this.mBackgroundView.setAlpha(0.0F);
        GlobalScreenshot.this.mBackgroundView.setVisibility(0);
        GlobalScreenshot.this.mScreenshotView.setAlpha(0.0F);
        GlobalScreenshot.this.mScreenshotView.setTranslationX(0.0F);
        GlobalScreenshot.this.mScreenshotView.setTranslationY(0.0F);
        GlobalScreenshot.this.mScreenshotView.setScaleX(GlobalScreenshot.this.mBgPaddingScale + 1.0F);
        GlobalScreenshot.this.mScreenshotView.setScaleY(GlobalScreenshot.this.mBgPaddingScale + 1.0F);
        GlobalScreenshot.this.mScreenshotView.setVisibility(0);
        GlobalScreenshot.this.mScreenshotFlash.setAlpha(0.0F);
        GlobalScreenshot.this.mScreenshotFlash.setVisibility(0);
      }
    });
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        float f1 = ((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue();
        float f2 = 1.0F + GlobalScreenshot.this.mBgPaddingScale - local6.getInterpolation(f1) * 0.27499998F;
        GlobalScreenshot.this.mBackgroundView.setAlpha(local6.getInterpolation(f1) * 0.5F);
        GlobalScreenshot.this.mScreenshotView.setAlpha(f1);
        GlobalScreenshot.this.mScreenshotView.setScaleX(f2);
        GlobalScreenshot.this.mScreenshotView.setScaleY(f2);
        GlobalScreenshot.this.mScreenshotFlash.setAlpha(local5.getInterpolation(f1));
      }
    });
    return localValueAnimator;
  }
  
  @SuppressLint({"NewApi"})
  private ValueAnimator createScreenshotDropOutAnimation(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    localValueAnimator.setStartDelay(500L);
    localValueAnimator.addListener(new AnimatorListenerAdapter()
    {
      @SuppressLint({"NewApi"})
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        GlobalScreenshot.this.mBackgroundView.setVisibility(8);
        GlobalScreenshot.this.mScreenshotView.setVisibility(8);
        GlobalScreenshot.this.mScreenshotView.setLayerType(0, null);
      }
    });
    if ((!paramBoolean1) || (!paramBoolean2))
    {
      localValueAnimator.setDuration(320L);
      localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          float f1 = ((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue();
          float f2 = 0.725F + GlobalScreenshot.this.mBgPaddingScale - 0.125F * f1;
          GlobalScreenshot.this.mBackgroundView.setAlpha((1.0F - f1) * 0.5F);
          GlobalScreenshot.this.mScreenshotView.setAlpha(1.0F - f1);
          GlobalScreenshot.this.mScreenshotView.setScaleX(f2);
          GlobalScreenshot.this.mScreenshotView.setScaleY(f2);
        }
      });
      return localValueAnimator;
    }
    final Interpolator local11 = new Interpolator()
    {
      public float getInterpolation(float paramAnonymousFloat)
      {
        float f = 1.0F;
        if (paramAnonymousFloat < 0.8604651F) {
          f = (float)(1.0D - Math.pow(1.0F - paramAnonymousFloat / 0.8604651F, 2.0D));
        }
        return f;
      }
    };
    float f1 = (paramInt1 - 2.0F * this.mBgPadding) / 2.0F;
    float f2 = (paramInt2 - 2.0F * this.mBgPadding) / 2.0F;
    final PointF localPointF = new PointF(-f1 + 0.45F * f1, -f2 + 0.45F * f2);
    localValueAnimator.setDuration(430L);
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        float f1 = ((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue();
        float f2 = 0.725F + GlobalScreenshot.this.mBgPaddingScale - local11.getInterpolation(f1) * 0.27500004F;
        GlobalScreenshot.this.mBackgroundView.setAlpha((1.0F - f1) * 0.5F);
        GlobalScreenshot.this.mScreenshotView.setAlpha(1.0F - local11.getInterpolation(f1));
        GlobalScreenshot.this.mScreenshotView.setScaleX(f2);
        GlobalScreenshot.this.mScreenshotView.setScaleY(f2);
        GlobalScreenshot.this.mScreenshotView.setTranslationX(localPointF.x * f1);
        GlobalScreenshot.this.mScreenshotView.setTranslationY(localPointF.y * f1);
      }
    });
    return localValueAnimator;
  }
  
  private String getSDCardPath()
  {
    File localFile = null;
    if (Environment.getExternalStorageState().equals("mounted")) {
      localFile = Environment.getExternalStorageDirectory();
    }
    return localFile.toString();
  }
  
  /* Error */
  private void insertImageToMedia(Bitmap paramBitmap, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: getstatic 461	java/lang/System:out	Ljava/io/PrintStream;
    //   3: new 253	java/lang/StringBuilder
    //   6: dup
    //   7: ldc_w 463
    //   10: invokespecial 263	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   13: aload_2
    //   14: invokevirtual 272	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   17: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   20: invokevirtual 468	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   23: getstatic 461	java/lang/System:out	Ljava/io/PrintStream;
    //   26: new 253	java/lang/StringBuilder
    //   29: dup
    //   30: ldc_w 470
    //   33: invokespecial 263	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   36: aload_3
    //   37: invokevirtual 272	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: invokevirtual 468	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   46: new 265	java/io/File
    //   49: dup
    //   50: aload_2
    //   51: invokespecial 289	java/io/File:<init>	(Ljava/lang/String;)V
    //   54: astore_2
    //   55: aload_2
    //   56: invokevirtual 293	java/io/File:exists	()Z
    //   59: ifne +15 -> 74
    //   62: aload_2
    //   63: invokevirtual 473	java/io/File:isDirectory	()Z
    //   66: ifne +8 -> 74
    //   69: aload_2
    //   70: invokevirtual 476	java/io/File:mkdir	()Z
    //   73: pop
    //   74: new 265	java/io/File
    //   77: dup
    //   78: aload_3
    //   79: invokespecial 289	java/io/File:<init>	(Ljava/lang/String;)V
    //   82: astore_2
    //   83: new 305	java/io/FileOutputStream
    //   86: dup
    //   87: aload_2
    //   88: invokespecial 308	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   91: astore_3
    //   92: aload_1
    //   93: getstatic 314	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   96: bipush 90
    //   98: aload_3
    //   99: invokevirtual 318	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   102: pop
    //   103: aload_0
    //   104: getfield 103	com/aonesoft/lib/GlobalScreenshot:mContext	Landroid/content/Context;
    //   107: invokevirtual 480	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   110: aconst_null
    //   111: ldc_w 482
    //   114: ldc_w 482
    //   117: invokestatic 488	android/provider/MediaStore$Images$Media:insertImage	(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   120: pop
    //   121: getstatic 493	android/os/Build$VERSION:SDK_INT	I
    //   124: bipush 19
    //   126: if_icmplt +32 -> 158
    //   129: new 495	android/content/Intent
    //   132: dup
    //   133: ldc_w 497
    //   136: invokespecial 498	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   139: astore_1
    //   140: aload_1
    //   141: aload_2
    //   142: invokestatic 504	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   145: invokevirtual 508	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   148: pop
    //   149: aload_0
    //   150: getfield 103	com/aonesoft/lib/GlobalScreenshot:mContext	Landroid/content/Context;
    //   153: aload_1
    //   154: invokevirtual 512	android/content/Context:sendBroadcast	(Landroid/content/Intent;)V
    //   157: return
    //   158: aload_0
    //   159: getfield 103	com/aonesoft/lib/GlobalScreenshot:mContext	Landroid/content/Context;
    //   162: new 495	android/content/Intent
    //   165: dup
    //   166: ldc_w 514
    //   169: new 253	java/lang/StringBuilder
    //   172: dup
    //   173: ldc_w 516
    //   176: invokespecial 263	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   179: invokestatic 454	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   182: invokevirtual 519	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   185: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   188: invokestatic 523	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   191: invokespecial 526	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   194: invokevirtual 512	android/content/Context:sendBroadcast	(Landroid/content/Intent;)V
    //   197: return
    //   198: astore_1
    //   199: aload_1
    //   200: invokevirtual 527	java/io/FileNotFoundException:printStackTrace	()V
    //   203: return
    //   204: astore_1
    //   205: goto -6 -> 199
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	208	0	this	GlobalScreenshot
    //   0	208	1	paramBitmap	Bitmap
    //   0	208	2	paramString1	String
    //   0	208	3	paramString2	String
    // Exception table:
    //   from	to	target	type
    //   83	92	198	java/io/FileNotFoundException
    //   92	157	204	java/io/FileNotFoundException
    //   158	197	204	java/io/FileNotFoundException
  }
  
  private void notifyScreenshotError(Context paramContext) {}
  
  private static void recyle(Bitmap paramBitmap)
  {
    if ((paramBitmap != null) && (!paramBitmap.isRecycled())) {
      paramBitmap.recycle();
    }
  }
  
  private void saveScreenshotInWorkerThread(Runnable paramRunnable) {}
  
  @SuppressLint({"NewApi"})
  private void startAnimation(final Runnable paramRunnable, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, final String paramString)
  {
    this.mScreenshotView.setImageBitmap(this.mScreenBitmap);
    this.mScreenshotLayout.requestFocus();
    if (this.mScreenshotAnimation != null)
    {
      this.mScreenshotAnimation.end();
      this.mScreenshotAnimation.removeAllListeners();
    }
    this.mWindowManager.addView(this.mScreenshotLayout, this.mWindowLayoutParams);
    ValueAnimator localValueAnimator1 = createScreenshotDropInAnimation();
    ValueAnimator localValueAnimator2 = createScreenshotDropOutAnimation(paramInt1, paramInt2, paramBoolean1, paramBoolean2);
    this.mScreenshotAnimation = new AnimatorSet();
    this.mScreenshotAnimation.playSequentially(new Animator[] { localValueAnimator1, localValueAnimator2 });
    this.mScreenshotAnimation.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        GlobalScreenshot.this.saveScreenshotInWorkerThread(paramRunnable);
        GlobalScreenshot.this.mWindowManager.removeView(GlobalScreenshot.this.mScreenshotLayout);
        GlobalScreenshot.this.SavePicture(paramString);
        GlobalScreenshot.this.mScreenBitmap = null;
        GlobalScreenshot.this.mScreenshotView.setImageBitmap(null);
      }
    });
    this.mScreenshotLayout.post(new Runnable()
    {
      public void run()
      {
        GlobalScreenshot.this.mScreenshotView.setLayerType(2, null);
        GlobalScreenshot.this.mScreenshotView.buildLayer();
        GlobalScreenshot.this.mScreenshotAnimation.start();
      }
    });
  }
  
  @SuppressLint({"NewApi"})
  public void takeScreenshot(View paramView, final Runnable paramRunnable, final boolean paramBoolean1, final boolean paramBoolean2, final String paramString)
  {
    Log.d("debug", "takeScreenshot start");
    this.mScreenBitmap = AoneSurfaceControl.screenshot(paramView);
    Log.d("debug", "takeScreenshot 1");
    if (this.mScreenBitmap == null)
    {
      notifyScreenshotError(this.mContext);
      paramRunnable.run();
      return;
    }
    this.mScreenBitmap.setHasAlpha(false);
    this.mScreenBitmap.prepareToDraw();
    Log.d("debug", "takeScreenshot 2");
    Log.d("debug", "takeScreenshot 3");
    PluginWrapper.runOnMainThread(new Runnable()
    {
      public void run()
      {
        GlobalScreenshot.this.startAnimation(paramRunnable, GlobalScreenshot.this.mDisplayMetrics.widthPixels, GlobalScreenshot.this.mDisplayMetrics.heightPixels, paramBoolean1, paramBoolean2, paramString);
      }
    });
    Log.d("debug", "takeScreenshot end");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\GlobalScreenshot.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */