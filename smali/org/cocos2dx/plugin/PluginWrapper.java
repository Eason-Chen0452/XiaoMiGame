package org.cocos2dx.plugin;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.util.Log;
import java.lang.reflect.Field;

public class PluginWrapper
{
  private static final String TAG = "aonesdk info PluginWrapper";
  private static ActivityEventListener acListener = new ActivityEventListener();
  protected static Context sContext = null;
  protected static GLSurfaceView sGLSurfaceView = null;
  protected static Handler sGameThreadHandler;
  protected static Handler sMainThreadHandler = null;
  
  static
  {
    sGameThreadHandler = null;
  }
  
  public static ActivityEventListener getActivityEventListener()
  {
    return acListener;
  }
  
  public static Context getContext()
  {
    return sContext;
  }
  
  protected static int getPluginType(Object paramObject)
  {
    try
    {
      int i = ((Integer)paramObject.getClass().getField("PluginType").get(paramObject)).intValue();
      return i;
    }
    catch (Exception paramObject)
    {
      ((Exception)paramObject).printStackTrace();
    }
    return -1;
  }
  
  public static void init(Context paramContext)
  {
    sContext = paramContext;
    if (sMainThreadHandler == null) {
      sMainThreadHandler = new Handler();
    }
  }
  
  public static void initGameHandler()
  {
    if (sGameThreadHandler == null) {
      sGameThreadHandler = new Handler();
    }
  }
  
  /* Error */
  protected static Object initPlugin(String paramString)
  {
    // Byte code:
    //   0: ldc 8
    //   2: new 83	java/lang/StringBuilder
    //   5: dup
    //   6: ldc 85
    //   8: invokespecial 88	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   11: aload_0
    //   12: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: ldc 94
    //   17: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   23: invokestatic 104	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   26: pop
    //   27: aload_0
    //   28: bipush 47
    //   30: bipush 46
    //   32: invokevirtual 110	java/lang/String:replace	(CC)Ljava/lang/String;
    //   35: invokestatic 114	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   38: astore_1
    //   39: invokestatic 116	org/cocos2dx/plugin/PluginWrapper:getContext	()Landroid/content/Context;
    //   42: astore_2
    //   43: aload_2
    //   44: ifnull +64 -> 108
    //   47: aload_1
    //   48: iconst_1
    //   49: anewarray 52	java/lang/Class
    //   52: dup
    //   53: iconst_0
    //   54: ldc 118
    //   56: aastore
    //   57: invokevirtual 122	java/lang/Class:getDeclaredConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   60: iconst_1
    //   61: anewarray 4	java/lang/Object
    //   64: dup
    //   65: iconst_0
    //   66: aload_2
    //   67: aastore
    //   68: invokevirtual 128	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   71: astore_0
    //   72: aload_0
    //   73: areturn
    //   74: astore_1
    //   75: ldc 8
    //   77: new 83	java/lang/StringBuilder
    //   80: dup
    //   81: ldc -126
    //   83: invokespecial 88	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   86: aload_0
    //   87: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: ldc -124
    //   92: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: invokestatic 135	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   101: pop
    //   102: aload_1
    //   103: invokevirtual 136	java/lang/ClassNotFoundException:printStackTrace	()V
    //   106: aconst_null
    //   107: areturn
    //   108: ldc 8
    //   110: new 83	java/lang/StringBuilder
    //   113: dup
    //   114: ldc -118
    //   116: invokespecial 88	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   119: aload_0
    //   120: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: ldc -116
    //   125: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokestatic 135	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   134: pop
    //   135: aconst_null
    //   136: areturn
    //   137: astore_0
    //   138: aload_0
    //   139: invokevirtual 71	java/lang/Exception:printStackTrace	()V
    //   142: aconst_null
    //   143: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	144	0	paramString	String
    //   38	10	1	localClass	Class
    //   74	29	1	localClassNotFoundException	ClassNotFoundException
    //   42	25	2	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   27	39	74	java/lang/ClassNotFoundException
    //   39	43	137	java/lang/Exception
    //   47	72	137	java/lang/Exception
    //   108	135	137	java/lang/Exception
  }
  
  public static void runOnGLThread(Runnable paramRunnable)
  {
    if (sGLSurfaceView != null)
    {
      sGLSurfaceView.queueEvent(paramRunnable);
      return;
    }
    if (sGameThreadHandler != null)
    {
      sGameThreadHandler.post(paramRunnable);
      return;
    }
    Log.i("aonesdk info PluginWrapper", "runOnGLThread sGLSurfaceView is null");
    paramRunnable.run();
  }
  
  public static void runOnMainThread(Runnable paramRunnable)
  {
    if (sMainThreadHandler == null) {
      return;
    }
    sMainThreadHandler.post(paramRunnable);
  }
  
  public static void setGLSurfaceView(GLSurfaceView paramGLSurfaceView)
  {
    sGLSurfaceView = paramGLSurfaceView;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\PluginWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */