package com.ta.utdid2.device;

import android.content.Context;
import android.provider.Settings.System;
import com.ta.utdid2.android.utils.Base64;
import com.ta.utdid2.android.utils.IntUtils;
import com.ta.utdid2.android.utils.PhoneInfoUtils;
import com.ta.utdid2.android.utils.StringUtils;
import com.ta.utdid2.core.persistent.PersistentConfiguration;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class UTUtdid
{
  private static final Object CREATE_LOCK = new Object();
  private static final String HMAC_KEY = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161";
  private static final String S_GLOBAL_PERSISTENT_CONFIG_DIR = ".UTSystemConfig" + File.separator + "Global";
  private static final String S_GLOBAL_PERSISTENT_CONFIG_KEY = "Alvin2";
  private static final String S_LOCAL_STORAGE_KEY = "ContextData";
  private static final String S_LOCAL_STORAGE_NAME = ".DataStorage";
  static final String UM_SETTINGS_STORAGE = "dxCRMxhQkdGePGnp";
  static final String UM_SETTINGS_STORAGE_NEW = "mqBRboGZkQPcAkyk";
  private static UTUtdid s_umutdid = null;
  private String mCBDomain = "xx_utdid_domain";
  private String mCBKey = "xx_utdid_key";
  private Context mContext = null;
  private PersistentConfiguration mPC = null;
  private Pattern mPattern = Pattern.compile("[^0-9a-zA-Z=/+]+");
  private PersistentConfiguration mTaoPC = null;
  private String mUtdid = null;
  private UTUtdidHelper mUtdidHelper = null;
  
  public UTUtdid(Context paramContext)
  {
    this.mContext = paramContext;
    this.mTaoPC = new PersistentConfiguration(paramContext, S_GLOBAL_PERSISTENT_CONFIG_DIR, "Alvin2", false, true);
    this.mPC = new PersistentConfiguration(paramContext, ".DataStorage", "ContextData", false, true);
    this.mUtdidHelper = new UTUtdidHelper();
    this.mCBKey = String.format("K_%d", new Object[] { Integer.valueOf(StringUtils.hashCode(this.mCBKey)) });
    this.mCBDomain = String.format("D_%d", new Object[] { Integer.valueOf(StringUtils.hashCode(this.mCBDomain)) });
  }
  
  private static String _calcHmac(byte[] paramArrayOfByte)
    throws Exception
  {
    Mac localMac = Mac.getInstance("HmacSHA1");
    localMac.init(new SecretKeySpec("d6fc3a4a06adbde89223bvefedc24fecde188aaa9161".getBytes(), localMac.getAlgorithm()));
    return Base64.encodeToString(localMac.doFinal(paramArrayOfByte), 2);
  }
  
  private final byte[] _generateUtdid()
    throws Exception
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int i = (int)(System.currentTimeMillis() / 1000L);
    int j = new Random().nextInt();
    Object localObject = IntUtils.getBytes(i);
    byte[] arrayOfByte = IntUtils.getBytes(j);
    localByteArrayOutputStream.write((byte[])localObject, 0, 4);
    localByteArrayOutputStream.write(arrayOfByte, 0, 4);
    localByteArrayOutputStream.write(3);
    localByteArrayOutputStream.write(0);
    try
    {
      localObject = PhoneInfoUtils.getImei(this.mContext);
      localByteArrayOutputStream.write(IntUtils.getBytes(StringUtils.hashCode((String)localObject)), 0, 4);
      localByteArrayOutputStream.write(IntUtils.getBytes(StringUtils.hashCode(_calcHmac(localByteArrayOutputStream.toByteArray()))));
      return localByteArrayOutputStream.toByteArray();
    }
    catch (Exception localException)
    {
      for (;;)
      {
        String str = new Random().nextInt();
      }
    }
  }
  
  private void _removeIllegalKeys()
  {
    if (this.mTaoPC != null)
    {
      if (StringUtils.isEmpty(this.mTaoPC.getString("UTDID2")))
      {
        String str = this.mTaoPC.getString("UTDID");
        if (!StringUtils.isEmpty(str)) {
          saveUtdidToTaoPPC(str);
        }
      }
      int i = 0;
      if (!StringUtils.isEmpty(this.mTaoPC.getString("DID")))
      {
        this.mTaoPC.remove("DID");
        i = 1;
      }
      if (!StringUtils.isEmpty(this.mTaoPC.getString("EI")))
      {
        this.mTaoPC.remove("EI");
        i = 1;
      }
      if (!StringUtils.isEmpty(this.mTaoPC.getString("SI")))
      {
        this.mTaoPC.remove("SI");
        i = 1;
      }
      if (i != 0) {
        this.mTaoPC.commit();
      }
    }
  }
  
  private String getUtdidFromTaoPPC()
  {
    if (this.mTaoPC != null)
    {
      String str = this.mTaoPC.getString("UTDID2");
      if ((!StringUtils.isEmpty(str)) && (this.mUtdidHelper.packUtdidStr(str) != null)) {
        return str;
      }
    }
    return null;
  }
  
  public static UTUtdid instance(Context paramContext)
  {
    if ((paramContext != null) && (s_umutdid == null)) {}
    synchronized (CREATE_LOCK)
    {
      if (s_umutdid == null)
      {
        s_umutdid = new UTUtdid(paramContext);
        s_umutdid._removeIllegalKeys();
      }
      return s_umutdid;
    }
  }
  
  private boolean isValidUTDID(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramString != null)
    {
      String str = paramString;
      if (paramString.endsWith("\n")) {
        str = paramString.substring(0, paramString.length() - 1);
      }
      bool1 = bool2;
      if (24 == str.length())
      {
        bool1 = bool2;
        if (!this.mPattern.matcher(str).find()) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  private void saveUtdidToLocalStorage(String paramString)
  {
    if ((paramString != null) && (this.mPC != null) && (!paramString.equals(this.mPC.getString(this.mCBKey))))
    {
      this.mPC.putString(this.mCBKey, paramString);
      this.mPC.commit();
    }
  }
  
  private void saveUtdidToNewSettings(String paramString)
  {
    String str1;
    if ((this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0) && (isValidUTDID(paramString)))
    {
      str1 = paramString;
      if (paramString.endsWith("\n")) {
        str1 = paramString.substring(0, paramString.length() - 1);
      }
      if (24 == str1.length()) {
        paramString = null;
      }
    }
    try
    {
      String str2 = Settings.System.getString(this.mContext.getContentResolver(), "mqBRboGZkQPcAkyk");
      paramString = str2;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    if (!isValidUTDID(paramString)) {}
    try
    {
      Settings.System.putString(this.mContext.getContentResolver(), "mqBRboGZkQPcAkyk", str1);
      return;
    }
    catch (Exception paramString) {}
  }
  
  private void saveUtdidToSettings(String paramString)
  {
    if ((this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0) && (paramString != null)) {
      syncUTDIDToSettings(paramString);
    }
  }
  
  private void saveUtdidToTaoPPC(String paramString)
  {
    if (isValidUTDID(paramString))
    {
      String str = paramString;
      if (paramString.endsWith("\n")) {
        str = paramString.substring(0, paramString.length() - 1);
      }
      if ((str.length() == 24) && (this.mTaoPC != null))
      {
        this.mTaoPC.putString("UTDID2", str);
        this.mTaoPC.commit();
      }
    }
  }
  
  private void syncUTDIDToSettings(String paramString)
  {
    Object localObject = null;
    try
    {
      String str = Settings.System.getString(this.mContext.getContentResolver(), "dxCRMxhQkdGePGnp");
      localObject = str;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    if (!paramString.equals(localObject)) {}
    try
    {
      Settings.System.putString(this.mContext.getContentResolver(), "dxCRMxhQkdGePGnp", paramString);
      return;
    }
    catch (Exception paramString) {}
  }
  
  /* Error */
  public String getValue()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 79	com/ta/utdid2/device/UTUtdid:mUtdid	Ljava/lang/String;
    //   6: ifnull +12 -> 18
    //   9: aload_0
    //   10: getfield 79	com/ta/utdid2/device/UTUtdid:mUtdid	Ljava/lang/String;
    //   13: astore_2
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_2
    //   17: areturn
    //   18: ldc_w 320
    //   21: astore_3
    //   22: aload_0
    //   23: getfield 77	com/ta/utdid2/device/UTUtdid:mContext	Landroid/content/Context;
    //   26: invokevirtual 305	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   29: ldc 26
    //   31: invokestatic 310	android/provider/Settings$System:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   34: astore_2
    //   35: aload_2
    //   36: astore_3
    //   37: aload_3
    //   38: astore_2
    //   39: aload_0
    //   40: aload_3
    //   41: invokespecial 301	com/ta/utdid2/device/UTUtdid:isValidUTDID	(Ljava/lang/String;)Z
    //   44: ifne -30 -> 14
    //   47: new 322	com/ta/utdid2/device/UTUtdidHelper2
    //   50: dup
    //   51: invokespecial 323	com/ta/utdid2/device/UTUtdidHelper2:<init>	()V
    //   54: astore 4
    //   56: iconst_0
    //   57: istore_1
    //   58: aconst_null
    //   59: astore_2
    //   60: aload_0
    //   61: getfield 77	com/ta/utdid2/device/UTUtdid:mContext	Landroid/content/Context;
    //   64: invokevirtual 305	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   67: ldc 23
    //   69: invokestatic 310	android/provider/Settings$System:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   72: astore_3
    //   73: aload_3
    //   74: astore_2
    //   75: aload_2
    //   76: invokestatic 232	com/ta/utdid2/android/utils/StringUtils:isEmpty	(Ljava/lang/String;)Z
    //   79: ifne +377 -> 456
    //   82: aload 4
    //   84: aload_2
    //   85: invokevirtual 326	com/ta/utdid2/device/UTUtdidHelper2:dePackWithBase64	(Ljava/lang/String;)Ljava/lang/String;
    //   88: astore_3
    //   89: aload_0
    //   90: aload_3
    //   91: invokespecial 301	com/ta/utdid2/device/UTUtdid:isValidUTDID	(Ljava/lang/String;)Z
    //   94: ifeq +13 -> 107
    //   97: aload_0
    //   98: aload_3
    //   99: invokespecial 328	com/ta/utdid2/device/UTUtdid:saveUtdidToNewSettings	(Ljava/lang/String;)V
    //   102: aload_3
    //   103: astore_2
    //   104: goto -90 -> 14
    //   107: aload 4
    //   109: aload_2
    //   110: invokevirtual 331	com/ta/utdid2/device/UTUtdidHelper2:dePack	(Ljava/lang/String;)Ljava/lang/String;
    //   113: astore 5
    //   115: aload_2
    //   116: astore_3
    //   117: aload_0
    //   118: aload 5
    //   120: invokespecial 301	com/ta/utdid2/device/UTUtdid:isValidUTDID	(Ljava/lang/String;)Z
    //   123: ifeq +43 -> 166
    //   126: aload_0
    //   127: getfield 81	com/ta/utdid2/device/UTUtdid:mUtdidHelper	Lcom/ta/utdid2/device/UTUtdidHelper;
    //   130: aload 5
    //   132: invokevirtual 254	com/ta/utdid2/device/UTUtdidHelper:packUtdidStr	(Ljava/lang/String;)Ljava/lang/String;
    //   135: astore 5
    //   137: aload_2
    //   138: astore_3
    //   139: aload 5
    //   141: invokestatic 232	com/ta/utdid2/android/utils/StringUtils:isEmpty	(Ljava/lang/String;)Z
    //   144: ifne +22 -> 166
    //   147: aload_0
    //   148: aload 5
    //   150: invokespecial 333	com/ta/utdid2/device/UTUtdid:saveUtdidToSettings	(Ljava/lang/String;)V
    //   153: aload_0
    //   154: getfield 77	com/ta/utdid2/device/UTUtdid:mContext	Landroid/content/Context;
    //   157: invokevirtual 305	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   160: ldc 23
    //   162: invokestatic 310	android/provider/Settings$System:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   165: astore_3
    //   166: aload_0
    //   167: getfield 81	com/ta/utdid2/device/UTUtdid:mUtdidHelper	Lcom/ta/utdid2/device/UTUtdidHelper;
    //   170: aload_3
    //   171: invokevirtual 334	com/ta/utdid2/device/UTUtdidHelper:dePack	(Ljava/lang/String;)Ljava/lang/String;
    //   174: astore_2
    //   175: aload_0
    //   176: aload_2
    //   177: invokespecial 301	com/ta/utdid2/device/UTUtdid:isValidUTDID	(Ljava/lang/String;)Z
    //   180: ifeq +34 -> 214
    //   183: aload_0
    //   184: aload_2
    //   185: putfield 79	com/ta/utdid2/device/UTUtdid:mUtdid	Ljava/lang/String;
    //   188: aload_0
    //   189: aload_2
    //   190: invokespecial 237	com/ta/utdid2/device/UTUtdid:saveUtdidToTaoPPC	(Ljava/lang/String;)V
    //   193: aload_0
    //   194: aload_3
    //   195: invokespecial 336	com/ta/utdid2/device/UTUtdid:saveUtdidToLocalStorage	(Ljava/lang/String;)V
    //   198: aload_0
    //   199: aload_0
    //   200: getfield 79	com/ta/utdid2/device/UTUtdid:mUtdid	Ljava/lang/String;
    //   203: invokespecial 328	com/ta/utdid2/device/UTUtdid:saveUtdidToNewSettings	(Ljava/lang/String;)V
    //   206: aload_0
    //   207: getfield 79	com/ta/utdid2/device/UTUtdid:mUtdid	Ljava/lang/String;
    //   210: astore_2
    //   211: goto -197 -> 14
    //   214: aload_0
    //   215: invokespecial 338	com/ta/utdid2/device/UTUtdid:getUtdidFromTaoPPC	()Ljava/lang/String;
    //   218: astore_2
    //   219: aload_0
    //   220: aload_2
    //   221: invokespecial 301	com/ta/utdid2/device/UTUtdid:isValidUTDID	(Ljava/lang/String;)Z
    //   224: ifeq +39 -> 263
    //   227: aload_0
    //   228: getfield 81	com/ta/utdid2/device/UTUtdid:mUtdidHelper	Lcom/ta/utdid2/device/UTUtdidHelper;
    //   231: aload_2
    //   232: invokevirtual 254	com/ta/utdid2/device/UTUtdidHelper:packUtdidStr	(Ljava/lang/String;)Ljava/lang/String;
    //   235: astore_3
    //   236: iload_1
    //   237: ifeq +8 -> 245
    //   240: aload_0
    //   241: aload_3
    //   242: invokespecial 333	com/ta/utdid2/device/UTUtdid:saveUtdidToSettings	(Ljava/lang/String;)V
    //   245: aload_0
    //   246: aload_2
    //   247: invokespecial 328	com/ta/utdid2/device/UTUtdid:saveUtdidToNewSettings	(Ljava/lang/String;)V
    //   250: aload_0
    //   251: aload_3
    //   252: invokespecial 336	com/ta/utdid2/device/UTUtdid:saveUtdidToLocalStorage	(Ljava/lang/String;)V
    //   255: aload_0
    //   256: aload_2
    //   257: putfield 79	com/ta/utdid2/device/UTUtdid:mUtdid	Ljava/lang/String;
    //   260: goto -246 -> 14
    //   263: aload_0
    //   264: getfield 91	com/ta/utdid2/device/UTUtdid:mPC	Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
    //   267: aload_0
    //   268: getfield 85	com/ta/utdid2/device/UTUtdid:mCBKey	Ljava/lang/String;
    //   271: invokevirtual 228	com/ta/utdid2/core/persistent/PersistentConfiguration:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   274: astore 5
    //   276: aload 5
    //   278: invokestatic 232	com/ta/utdid2/android/utils/StringUtils:isEmpty	(Ljava/lang/String;)Z
    //   281: ifne +85 -> 366
    //   284: aload 4
    //   286: aload 5
    //   288: invokevirtual 331	com/ta/utdid2/device/UTUtdidHelper2:dePack	(Ljava/lang/String;)Ljava/lang/String;
    //   291: astore_3
    //   292: aload_3
    //   293: astore_2
    //   294: aload_0
    //   295: aload_3
    //   296: invokespecial 301	com/ta/utdid2/device/UTUtdid:isValidUTDID	(Ljava/lang/String;)Z
    //   299: ifne +13 -> 312
    //   302: aload_0
    //   303: getfield 81	com/ta/utdid2/device/UTUtdid:mUtdidHelper	Lcom/ta/utdid2/device/UTUtdidHelper;
    //   306: aload 5
    //   308: invokevirtual 334	com/ta/utdid2/device/UTUtdidHelper:dePack	(Ljava/lang/String;)Ljava/lang/String;
    //   311: astore_2
    //   312: aload_0
    //   313: aload_2
    //   314: invokespecial 301	com/ta/utdid2/device/UTUtdid:isValidUTDID	(Ljava/lang/String;)Z
    //   317: ifeq +49 -> 366
    //   320: aload_0
    //   321: getfield 81	com/ta/utdid2/device/UTUtdid:mUtdidHelper	Lcom/ta/utdid2/device/UTUtdidHelper;
    //   324: aload_2
    //   325: invokevirtual 254	com/ta/utdid2/device/UTUtdidHelper:packUtdidStr	(Ljava/lang/String;)Ljava/lang/String;
    //   328: astore_3
    //   329: aload_2
    //   330: invokestatic 232	com/ta/utdid2/android/utils/StringUtils:isEmpty	(Ljava/lang/String;)Z
    //   333: ifne +33 -> 366
    //   336: aload_0
    //   337: aload_2
    //   338: putfield 79	com/ta/utdid2/device/UTUtdid:mUtdid	Ljava/lang/String;
    //   341: iload_1
    //   342: ifeq +8 -> 350
    //   345: aload_0
    //   346: aload_3
    //   347: invokespecial 333	com/ta/utdid2/device/UTUtdid:saveUtdidToSettings	(Ljava/lang/String;)V
    //   350: aload_0
    //   351: aload_0
    //   352: getfield 79	com/ta/utdid2/device/UTUtdid:mUtdid	Ljava/lang/String;
    //   355: invokespecial 237	com/ta/utdid2/device/UTUtdid:saveUtdidToTaoPPC	(Ljava/lang/String;)V
    //   358: aload_0
    //   359: getfield 79	com/ta/utdid2/device/UTUtdid:mUtdid	Ljava/lang/String;
    //   362: astore_2
    //   363: goto -349 -> 14
    //   366: aload_0
    //   367: invokespecial 340	com/ta/utdid2/device/UTUtdid:_generateUtdid	()[B
    //   370: astore_2
    //   371: aload_2
    //   372: ifnull +60 -> 432
    //   375: aload_0
    //   376: aload_2
    //   377: iconst_2
    //   378: invokestatic 171	com/ta/utdid2/android/utils/Base64:encodeToString	([BI)Ljava/lang/String;
    //   381: putfield 79	com/ta/utdid2/device/UTUtdid:mUtdid	Ljava/lang/String;
    //   384: aload_0
    //   385: aload_0
    //   386: getfield 79	com/ta/utdid2/device/UTUtdid:mUtdid	Ljava/lang/String;
    //   389: invokespecial 237	com/ta/utdid2/device/UTUtdid:saveUtdidToTaoPPC	(Ljava/lang/String;)V
    //   392: aload_0
    //   393: getfield 81	com/ta/utdid2/device/UTUtdid:mUtdidHelper	Lcom/ta/utdid2/device/UTUtdidHelper;
    //   396: aload_2
    //   397: invokevirtual 343	com/ta/utdid2/device/UTUtdidHelper:pack	([B)Ljava/lang/String;
    //   400: astore_2
    //   401: aload_2
    //   402: ifnull +17 -> 419
    //   405: iload_1
    //   406: ifeq +8 -> 414
    //   409: aload_0
    //   410: aload_2
    //   411: invokespecial 333	com/ta/utdid2/device/UTUtdid:saveUtdidToSettings	(Ljava/lang/String;)V
    //   414: aload_0
    //   415: aload_2
    //   416: invokespecial 336	com/ta/utdid2/device/UTUtdid:saveUtdidToLocalStorage	(Ljava/lang/String;)V
    //   419: aload_0
    //   420: getfield 79	com/ta/utdid2/device/UTUtdid:mUtdid	Ljava/lang/String;
    //   423: astore_2
    //   424: goto -410 -> 14
    //   427: astore_2
    //   428: aload_2
    //   429: invokevirtual 346	java/lang/Exception:printStackTrace	()V
    //   432: aconst_null
    //   433: astore_2
    //   434: goto -420 -> 14
    //   437: astore_2
    //   438: aload_0
    //   439: monitorexit
    //   440: aload_2
    //   441: athrow
    //   442: astore_3
    //   443: aload_2
    //   444: astore_3
    //   445: goto -279 -> 166
    //   448: astore_3
    //   449: goto -374 -> 75
    //   452: astore_2
    //   453: goto -416 -> 37
    //   456: iconst_1
    //   457: istore_1
    //   458: goto -244 -> 214
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	461	0	this	UTUtdid
    //   57	401	1	i	int
    //   13	411	2	localObject1	Object
    //   427	2	2	localException1	Exception
    //   433	1	2	localObject2	Object
    //   437	7	2	localObject3	Object
    //   452	1	2	localException2	Exception
    //   21	326	3	localObject4	Object
    //   442	1	3	localException3	Exception
    //   444	1	3	localObject5	Object
    //   448	1	3	localException4	Exception
    //   54	231	4	localUTUtdidHelper2	UTUtdidHelper2
    //   113	194	5	str	String
    // Exception table:
    //   from	to	target	type
    //   366	371	427	java/lang/Exception
    //   375	401	427	java/lang/Exception
    //   409	414	427	java/lang/Exception
    //   414	419	427	java/lang/Exception
    //   419	424	427	java/lang/Exception
    //   2	14	437	finally
    //   22	35	437	finally
    //   39	56	437	finally
    //   60	73	437	finally
    //   75	102	437	finally
    //   107	115	437	finally
    //   117	137	437	finally
    //   139	153	437	finally
    //   153	166	437	finally
    //   166	175	437	finally
    //   175	211	437	finally
    //   214	236	437	finally
    //   240	245	437	finally
    //   245	260	437	finally
    //   263	292	437	finally
    //   294	312	437	finally
    //   312	341	437	finally
    //   345	350	437	finally
    //   350	363	437	finally
    //   366	371	437	finally
    //   375	401	437	finally
    //   409	414	437	finally
    //   414	419	437	finally
    //   419	424	437	finally
    //   428	432	437	finally
    //   153	166	442	java/lang/Exception
    //   60	73	448	java/lang/Exception
    //   22	35	452	java/lang/Exception
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\ta\utdid2\device\UTUtdid.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */