package android.support.v4.graphics;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.FontResourcesParserCompat.FontFamilyFilesResourceEntry;
import android.support.v4.content.res.FontResourcesParserCompat.FontFileResourceEntry;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

@RequiresApi(26)
@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class TypefaceCompatApi26Impl
  extends TypefaceCompatApi21Impl
{
  private static final String ABORT_CREATION_METHOD = "abortCreation";
  private static final String ADD_FONT_FROM_ASSET_MANAGER_METHOD = "addFontFromAssetManager";
  private static final String ADD_FONT_FROM_BUFFER_METHOD = "addFontFromBuffer";
  private static final String CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD = "createFromFamiliesWithDefault";
  private static final String FONT_FAMILY_CLASS = "android.graphics.FontFamily";
  private static final String FREEZE_METHOD = "freeze";
  private static final int RESOLVE_BY_FONT_TABLE = -1;
  private static final String TAG = "TypefaceCompatApi26Impl";
  private static final Method sAbortCreation;
  private static final Method sAddFontFromAssetManager;
  private static final Method sAddFontFromBuffer;
  private static final Method sCreateFromFamiliesWithDefault;
  private static final Class sFontFamily;
  private static final Constructor sFontFamilyCtor;
  private static final Method sFreeze;
  
  static
  {
    try
    {
      localClass = Class.forName("android.graphics.FontFamily");
      localConstructor = localClass.getConstructor(new Class[0]);
      localMethod2 = localClass.getMethod("addFontFromAssetManager", new Class[] { AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class });
      localMethod3 = localClass.getMethod("addFontFromBuffer", new Class[] { ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE });
      localMethod5 = localClass.getMethod("freeze", new Class[0]);
      Method localMethod1 = localClass.getMethod("abortCreation", new Class[0]);
      localMethod4 = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", new Class[] { Array.newInstance(localClass, 1).getClass(), Integer.TYPE, Integer.TYPE });
      localMethod4.setAccessible(true);
      sFontFamilyCtor = localConstructor;
      sFontFamily = localClass;
      sAddFontFromAssetManager = localMethod2;
      sAddFontFromBuffer = localMethod3;
      sFreeze = localMethod5;
      sAbortCreation = localMethod1;
      sCreateFromFamiliesWithDefault = localMethod4;
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + localClassNotFoundException.getClass().getName(), localClassNotFoundException);
        Class localClass = null;
        Constructor localConstructor = null;
        Method localMethod2 = null;
        Method localMethod3 = null;
        Method localMethod5 = null;
        Object localObject = null;
        Method localMethod4 = null;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
  
  private static void abortCreation(Object paramObject)
  {
    try
    {
      sAbortCreation.invoke(paramObject, new Object[0]);
      return;
    }
    catch (IllegalAccessException paramObject)
    {
      throw new RuntimeException((Throwable)paramObject);
    }
    catch (InvocationTargetException paramObject)
    {
      for (;;) {}
    }
  }
  
  private static boolean addFontFromAssetManager(Context paramContext, Object paramObject, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      boolean bool = ((Boolean)sAddFontFromAssetManager.invoke(paramObject, new Object[] { paramContext.getAssets(), paramString, Integer.valueOf(0), Boolean.valueOf(false), Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3), null })).booleanValue();
      return bool;
    }
    catch (IllegalAccessException paramContext)
    {
      throw new RuntimeException(paramContext);
    }
    catch (InvocationTargetException paramContext)
    {
      for (;;) {}
    }
  }
  
  private static boolean addFontFromBuffer(Object paramObject, ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      boolean bool = ((Boolean)sAddFontFromBuffer.invoke(paramObject, new Object[] { paramByteBuffer, Integer.valueOf(paramInt1), null, Integer.valueOf(paramInt2), Integer.valueOf(paramInt3) })).booleanValue();
      return bool;
    }
    catch (IllegalAccessException paramObject)
    {
      throw new RuntimeException((Throwable)paramObject);
    }
    catch (InvocationTargetException paramObject)
    {
      for (;;) {}
    }
  }
  
  private static Typeface createFromFamiliesWithDefault(Object paramObject)
  {
    try
    {
      Object localObject = Array.newInstance(sFontFamily, 1);
      Array.set(localObject, 0, paramObject);
      paramObject = (Typeface)sCreateFromFamiliesWithDefault.invoke(null, new Object[] { localObject, Integer.valueOf(-1), Integer.valueOf(-1) });
      return (Typeface)paramObject;
    }
    catch (IllegalAccessException paramObject)
    {
      throw new RuntimeException((Throwable)paramObject);
    }
    catch (InvocationTargetException paramObject)
    {
      for (;;) {}
    }
  }
  
  private static boolean freeze(Object paramObject)
  {
    try
    {
      boolean bool = ((Boolean)sFreeze.invoke(paramObject, new Object[0])).booleanValue();
      return bool;
    }
    catch (IllegalAccessException paramObject)
    {
      throw new RuntimeException((Throwable)paramObject);
    }
    catch (InvocationTargetException paramObject)
    {
      for (;;) {}
    }
  }
  
  private static boolean isFontFamilyPrivateAPIAvailable()
  {
    if (sAddFontFromAssetManager == null) {
      Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
    }
    return sAddFontFromAssetManager != null;
  }
  
  private static Object newFamily()
  {
    try
    {
      Object localObject = sFontFamilyCtor.newInstance(new Object[0]);
      return localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new RuntimeException(localInstantiationException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;) {}
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;) {}
    }
  }
  
  public Typeface createFromFontFamilyFilesResourceEntry(Context paramContext, FontResourcesParserCompat.FontFamilyFilesResourceEntry paramFontFamilyFilesResourceEntry, Resources paramResources, int paramInt)
  {
    if (!isFontFamilyPrivateAPIAvailable()) {
      return super.createFromFontFamilyFilesResourceEntry(paramContext, paramFontFamilyFilesResourceEntry, paramResources, paramInt);
    }
    paramResources = newFamily();
    paramFontFamilyFilesResourceEntry = paramFontFamilyFilesResourceEntry.getEntries();
    int j = paramFontFamilyFilesResourceEntry.length;
    paramInt = 0;
    while (paramInt < j)
    {
      Object localObject = paramFontFamilyFilesResourceEntry[paramInt];
      String str = ((FontResourcesParserCompat.FontFileResourceEntry)localObject).getFileName();
      int k = ((FontResourcesParserCompat.FontFileResourceEntry)localObject).getWeight();
      if (((FontResourcesParserCompat.FontFileResourceEntry)localObject).isItalic()) {}
      for (int i = 1; !addFontFromAssetManager(paramContext, paramResources, str, 0, k, i); i = 0)
      {
        abortCreation(paramResources);
        return null;
      }
      paramInt += 1;
    }
    if (!freeze(paramResources)) {
      return null;
    }
    return createFromFamiliesWithDefault(paramResources);
  }
  
  /* Error */
  public Typeface createFromFontInfo(Context paramContext, @Nullable android.os.CancellationSignal paramCancellationSignal, @android.support.annotation.NonNull android.support.v4.provider.FontsContractCompat.FontInfo[] paramArrayOfFontInfo, int paramInt)
  {
    // Byte code:
    //   0: aload_3
    //   1: arraylength
    //   2: iconst_1
    //   3: if_icmpge +7 -> 10
    //   6: aconst_null
    //   7: astore_1
    //   8: aload_1
    //   9: areturn
    //   10: invokestatic 203	android/support/v4/graphics/TypefaceCompatApi26Impl:isFontFamilyPrivateAPIAvailable	()Z
    //   13: ifne +166 -> 179
    //   16: aload_0
    //   17: aload_3
    //   18: iload 4
    //   20: invokevirtual 245	android/support/v4/graphics/TypefaceCompatApi26Impl:findBestInfo	([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    //   23: astore 10
    //   25: aload_1
    //   26: invokevirtual 249	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   29: astore_1
    //   30: aload_1
    //   31: aload 10
    //   33: invokevirtual 255	android/support/v4/provider/FontsContractCompat$FontInfo:getUri	()Landroid/net/Uri;
    //   36: ldc_w 257
    //   39: aload_2
    //   40: invokevirtual 263	android/content/ContentResolver:openFileDescriptor	(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    //   43: astore_3
    //   44: aconst_null
    //   45: astore_2
    //   46: aload_3
    //   47: ifnonnull +34 -> 81
    //   50: aconst_null
    //   51: astore_1
    //   52: aload_3
    //   53: ifnull -45 -> 8
    //   56: iconst_0
    //   57: ifeq +18 -> 75
    //   60: aload_3
    //   61: invokevirtual 268	android/os/ParcelFileDescriptor:close	()V
    //   64: aconst_null
    //   65: areturn
    //   66: astore_1
    //   67: new 270	java/lang/NullPointerException
    //   70: dup
    //   71: invokespecial 271	java/lang/NullPointerException:<init>	()V
    //   74: athrow
    //   75: aload_3
    //   76: invokevirtual 268	android/os/ParcelFileDescriptor:close	()V
    //   79: aconst_null
    //   80: areturn
    //   81: new 273	android/graphics/Typeface$Builder
    //   84: dup
    //   85: aload_3
    //   86: invokevirtual 277	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   89: invokespecial 280	android/graphics/Typeface$Builder:<init>	(Ljava/io/FileDescriptor;)V
    //   92: aload 10
    //   94: invokevirtual 281	android/support/v4/provider/FontsContractCompat$FontInfo:getWeight	()I
    //   97: invokevirtual 285	android/graphics/Typeface$Builder:setWeight	(I)Landroid/graphics/Typeface$Builder;
    //   100: aload 10
    //   102: invokevirtual 286	android/support/v4/provider/FontsContractCompat$FontInfo:isItalic	()Z
    //   105: invokevirtual 290	android/graphics/Typeface$Builder:setItalic	(Z)Landroid/graphics/Typeface$Builder;
    //   108: invokevirtual 294	android/graphics/Typeface$Builder:build	()Landroid/graphics/Typeface;
    //   111: astore_1
    //   112: aload_1
    //   113: astore_2
    //   114: aload_2
    //   115: astore_1
    //   116: aload_3
    //   117: ifnull -109 -> 8
    //   120: iconst_0
    //   121: ifeq +18 -> 139
    //   124: aload_3
    //   125: invokevirtual 268	android/os/ParcelFileDescriptor:close	()V
    //   128: aload_2
    //   129: areturn
    //   130: astore_1
    //   131: new 270	java/lang/NullPointerException
    //   134: dup
    //   135: invokespecial 271	java/lang/NullPointerException:<init>	()V
    //   138: athrow
    //   139: aload_3
    //   140: invokevirtual 268	android/os/ParcelFileDescriptor:close	()V
    //   143: aload_2
    //   144: areturn
    //   145: astore_2
    //   146: aload_2
    //   147: athrow
    //   148: astore_1
    //   149: aload_3
    //   150: ifnull +11 -> 161
    //   153: aload_2
    //   154: ifnull +18 -> 172
    //   157: aload_3
    //   158: invokevirtual 268	android/os/ParcelFileDescriptor:close	()V
    //   161: aload_1
    //   162: athrow
    //   163: astore_3
    //   164: aload_2
    //   165: aload_3
    //   166: invokevirtual 297	java/lang/Throwable:addSuppressed	(Ljava/lang/Throwable;)V
    //   169: goto -8 -> 161
    //   172: aload_3
    //   173: invokevirtual 268	android/os/ParcelFileDescriptor:close	()V
    //   176: goto -15 -> 161
    //   179: aload_1
    //   180: aload_3
    //   181: aload_2
    //   182: invokestatic 303	android/support/v4/provider/FontsContractCompat:prepareFontData	(Landroid/content/Context;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;
    //   185: astore_1
    //   186: invokestatic 207	android/support/v4/graphics/TypefaceCompatApi26Impl:newFamily	()Ljava/lang/Object;
    //   189: astore 10
    //   191: iconst_0
    //   192: istore 6
    //   194: aload_3
    //   195: arraylength
    //   196: istore 7
    //   198: iconst_0
    //   199: istore 5
    //   201: iload 5
    //   203: iload 7
    //   205: if_icmpge +94 -> 299
    //   208: aload_3
    //   209: iload 5
    //   211: aaload
    //   212: astore_2
    //   213: aload_1
    //   214: aload_2
    //   215: invokevirtual 255	android/support/v4/provider/FontsContractCompat$FontInfo:getUri	()Landroid/net/Uri;
    //   218: invokeinterface 309 2 0
    //   223: checkcast 81	java/nio/ByteBuffer
    //   226: astore 11
    //   228: aload 11
    //   230: ifnonnull +12 -> 242
    //   233: iload 5
    //   235: iconst_1
    //   236: iadd
    //   237: istore 5
    //   239: goto -38 -> 201
    //   242: aload_2
    //   243: invokevirtual 312	android/support/v4/provider/FontsContractCompat$FontInfo:getTtcIndex	()I
    //   246: istore 8
    //   248: aload_2
    //   249: invokevirtual 281	android/support/v4/provider/FontsContractCompat$FontInfo:getWeight	()I
    //   252: istore 9
    //   254: aload_2
    //   255: invokevirtual 286	android/support/v4/provider/FontsContractCompat$FontInfo:isItalic	()Z
    //   258: ifeq +29 -> 287
    //   261: iconst_1
    //   262: istore 6
    //   264: aload 10
    //   266: aload 11
    //   268: iload 8
    //   270: iload 9
    //   272: iload 6
    //   274: invokestatic 314	android/support/v4/graphics/TypefaceCompatApi26Impl:addFontFromBuffer	(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    //   277: ifne +16 -> 293
    //   280: aload 10
    //   282: invokestatic 229	android/support/v4/graphics/TypefaceCompatApi26Impl:abortCreation	(Ljava/lang/Object;)V
    //   285: aconst_null
    //   286: areturn
    //   287: iconst_0
    //   288: istore 6
    //   290: goto -26 -> 264
    //   293: iconst_1
    //   294: istore 6
    //   296: goto -63 -> 233
    //   299: iload 6
    //   301: ifne +10 -> 311
    //   304: aload 10
    //   306: invokestatic 229	android/support/v4/graphics/TypefaceCompatApi26Impl:abortCreation	(Ljava/lang/Object;)V
    //   309: aconst_null
    //   310: areturn
    //   311: aload 10
    //   313: invokestatic 231	android/support/v4/graphics/TypefaceCompatApi26Impl:freeze	(Ljava/lang/Object;)Z
    //   316: ifne +5 -> 321
    //   319: aconst_null
    //   320: areturn
    //   321: aload 10
    //   323: invokestatic 233	android/support/v4/graphics/TypefaceCompatApi26Impl:createFromFamiliesWithDefault	(Ljava/lang/Object;)Landroid/graphics/Typeface;
    //   326: iload 4
    //   328: invokestatic 318	android/graphics/Typeface:create	(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    //   331: areturn
    //   332: astore_1
    //   333: goto -184 -> 149
    //   336: astore_1
    //   337: aconst_null
    //   338: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	339	0	this	TypefaceCompatApi26Impl
    //   0	339	1	paramContext	Context
    //   0	339	2	paramCancellationSignal	android.os.CancellationSignal
    //   0	339	3	paramArrayOfFontInfo	android.support.v4.provider.FontsContractCompat.FontInfo[]
    //   0	339	4	paramInt	int
    //   199	39	5	i	int
    //   192	108	6	j	int
    //   196	10	7	k	int
    //   246	23	8	m	int
    //   252	19	9	n	int
    //   23	299	10	localObject	Object
    //   226	41	11	localByteBuffer	ByteBuffer
    // Exception table:
    //   from	to	target	type
    //   60	64	66	java/lang/Throwable
    //   124	128	130	java/lang/Throwable
    //   81	112	145	java/lang/Throwable
    //   146	148	148	finally
    //   157	161	163	java/lang/Throwable
    //   81	112	332	finally
    //   30	44	336	java/io/IOException
    //   60	64	336	java/io/IOException
    //   67	75	336	java/io/IOException
    //   75	79	336	java/io/IOException
    //   124	128	336	java/io/IOException
    //   131	139	336	java/io/IOException
    //   139	143	336	java/io/IOException
    //   157	161	336	java/io/IOException
    //   161	163	336	java/io/IOException
    //   164	169	336	java/io/IOException
    //   172	176	336	java/io/IOException
  }
  
  @Nullable
  public Typeface createFromResourcesFontFile(Context paramContext, Resources paramResources, int paramInt1, String paramString, int paramInt2)
  {
    if (!isFontFamilyPrivateAPIAvailable()) {
      return super.createFromResourcesFontFile(paramContext, paramResources, paramInt1, paramString, paramInt2);
    }
    paramResources = newFamily();
    if (!addFontFromAssetManager(paramContext, paramResources, paramString, 0, -1, -1))
    {
      abortCreation(paramResources);
      return null;
    }
    if (!freeze(paramResources)) {
      return null;
    }
    return createFromFamiliesWithDefault(paramResources);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\android\support\v4\graphics\TypefaceCompatApi26Impl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */