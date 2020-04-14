package com.mi.milink.sdk.account;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Base64;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.io.UnsupportedEncodingException;
import java.util.Map;

public abstract class IAccount
{
  public static int NO = 1;
  protected static final String PREF_B2_SECURITY = "b2Security";
  protected static final String PREF_B2_TOKEN = "b2Token";
  private static final String PREF_FAST_LOGIN_EXTRA_DATA = "fastLoginExtraData";
  private static final String PREF_PRIVACY_KEY = "privacyKey";
  protected static final String PREF_SERVICE_TOKEN = "serviceToken";
  protected static final String PREF_S_SECURITY = "sSecurity";
  protected static final String PREF_USER_ID = "userId";
  private int appId;
  protected volatile String mB2Security;
  protected volatile String mB2Token;
  private byte[] mFastLoginExtra;
  protected long mMiLinkLoginTime = 0L;
  protected int mNo;
  protected volatile String mOldB2Security;
  protected volatile String mOldB2Token;
  protected String mPrivacyKey;
  protected volatile String mSSecurity;
  protected volatile String mServiceToken;
  protected volatile String mUserId;
  
  protected IAccount()
  {
    this.appId = Global.getClientAppInfo().getAppId();
    int i = NO;
    NO = i + 1;
    this.mNo = i;
    MiLinkLog.v(getTag(), "IAccount()");
    loadAccount();
  }
  
  protected IAccount(int paramInt)
  {
    this.appId = paramInt;
    paramInt = NO;
    NO = paramInt + 1;
    this.mNo = paramInt;
    MiLinkLog.v(getTag(), "IAccount()");
    loadAccount();
  }
  
  public void DelChannelPubKey() {}
  
  public void dataChange()
  {
    saveAccount();
  }
  
  public abstract void generateServiceTokenAndSSecurity();
  
  protected abstract int getAccountType();
  
  public int getAppId()
  {
    return this.appId;
  }
  
  public String getB2Security()
  {
    MiLinkLog.v(getTag(), "getB2Security=" + this.mB2Security);
    return this.mB2Security;
  }
  
  public String getB2Token()
  {
    MiLinkLog.v(getTag(), "getB2Token=" + this.mB2Token);
    return this.mB2Token;
  }
  
  public byte[] getFastLoginExtra()
  {
    return this.mFastLoginExtra;
  }
  
  public int getKeepAliveTime()
  {
    return 0;
  }
  
  public long getMiLinkLoginTime()
  {
    return this.mMiLinkLoginTime;
  }
  
  public String getOldB2Security()
  {
    return this.mOldB2Security;
  }
  
  public String getOldB2Token()
  {
    return this.mOldB2Token;
  }
  
  protected abstract String getPrefFileName();
  
  public abstract String getPrivacyKey();
  
  public String getSSecurity()
  {
    return this.mSSecurity;
  }
  
  public String getServiceToken()
  {
    return this.mServiceToken;
  }
  
  protected abstract String getTag();
  
  public String getUserId()
  {
    return this.mUserId;
  }
  
  /* Error */
  protected void loadAccount()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 73	com/mi/milink/sdk/account/IAccount:getTag	()Ljava/lang/String;
    //   6: ldc -117
    //   8: invokestatic 81	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   11: invokestatic 143	com/mi/milink/sdk/base/Global:getContext	()Landroid/content/Context;
    //   14: aload_0
    //   15: invokevirtual 145	com/mi/milink/sdk/account/IAccount:getPrefFileName	()Ljava/lang/String;
    //   18: iconst_0
    //   19: invokevirtual 151	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   22: astore_1
    //   23: aload_0
    //   24: aload_1
    //   25: new 95	java/lang/StringBuilder
    //   28: dup
    //   29: ldc 29
    //   31: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   34: aload_0
    //   35: getfield 67	com/mi/milink/sdk/account/IAccount:appId	I
    //   38: invokevirtual 154	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   41: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: ldc -100
    //   46: invokeinterface 162 3 0
    //   51: putfield 138	com/mi/milink/sdk/account/IAccount:mUserId	Ljava/lang/String;
    //   54: aload_0
    //   55: aload_1
    //   56: new 95	java/lang/StringBuilder
    //   59: dup
    //   60: ldc 23
    //   62: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   65: aload_0
    //   66: getfield 67	com/mi/milink/sdk/account/IAccount:appId	I
    //   69: invokevirtual 154	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   72: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   75: ldc -100
    //   77: invokeinterface 162 3 0
    //   82: putfield 135	com/mi/milink/sdk/account/IAccount:mServiceToken	Ljava/lang/String;
    //   85: aload_0
    //   86: aload_1
    //   87: new 95	java/lang/StringBuilder
    //   90: dup
    //   91: ldc 26
    //   93: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   96: aload_0
    //   97: getfield 67	com/mi/milink/sdk/account/IAccount:appId	I
    //   100: invokevirtual 154	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   103: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   106: ldc -100
    //   108: invokeinterface 162 3 0
    //   113: putfield 132	com/mi/milink/sdk/account/IAccount:mSSecurity	Ljava/lang/String;
    //   116: aload_0
    //   117: aload_1
    //   118: new 95	java/lang/StringBuilder
    //   121: dup
    //   122: ldc 14
    //   124: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   127: aload_0
    //   128: getfield 67	com/mi/milink/sdk/account/IAccount:appId	I
    //   131: invokevirtual 154	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   134: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: ldc -100
    //   139: invokeinterface 162 3 0
    //   144: putfield 114	com/mi/milink/sdk/account/IAccount:mB2Token	Ljava/lang/String;
    //   147: aload_0
    //   148: aload_1
    //   149: new 95	java/lang/StringBuilder
    //   152: dup
    //   153: ldc 11
    //   155: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   158: aload_0
    //   159: getfield 67	com/mi/milink/sdk/account/IAccount:appId	I
    //   162: invokevirtual 154	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   165: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   168: ldc -100
    //   170: invokeinterface 162 3 0
    //   175: putfield 102	com/mi/milink/sdk/account/IAccount:mB2Security	Ljava/lang/String;
    //   178: aload_1
    //   179: new 95	java/lang/StringBuilder
    //   182: dup
    //   183: ldc 17
    //   185: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   188: aload_0
    //   189: getfield 67	com/mi/milink/sdk/account/IAccount:appId	I
    //   192: invokevirtual 154	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   195: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   198: ldc -100
    //   200: invokeinterface 162 3 0
    //   205: astore_2
    //   206: aload_2
    //   207: invokestatic 168	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   210: ifne +49 -> 259
    //   213: aload_0
    //   214: aload_2
    //   215: invokevirtual 173	java/lang/String:getBytes	()[B
    //   218: iconst_0
    //   219: invokestatic 179	android/util/Base64:decode	([BI)[B
    //   222: putfield 118	com/mi/milink/sdk/account/IAccount:mFastLoginExtra	[B
    //   225: aload_0
    //   226: aload_1
    //   227: new 95	java/lang/StringBuilder
    //   230: dup
    //   231: ldc 20
    //   233: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   236: aload_0
    //   237: getfield 67	com/mi/milink/sdk/account/IAccount:appId	I
    //   240: invokevirtual 154	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   243: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: ldc -100
    //   248: invokeinterface 162 3 0
    //   253: putfield 181	com/mi/milink/sdk/account/IAccount:mPrivacyKey	Ljava/lang/String;
    //   256: aload_0
    //   257: monitorexit
    //   258: return
    //   259: aload_0
    //   260: aconst_null
    //   261: putfield 118	com/mi/milink/sdk/account/IAccount:mFastLoginExtra	[B
    //   264: goto -39 -> 225
    //   267: astore_1
    //   268: aload_0
    //   269: monitorexit
    //   270: aload_1
    //   271: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	272	0	this	IAccount
    //   22	205	1	localSharedPreferences	SharedPreferences
    //   267	4	1	localObject	Object
    //   205	10	2	str	String
    // Exception table:
    //   from	to	target	type
    //   2	225	267	finally
    //   225	256	267	finally
    //   259	264	267	finally
  }
  
  public void loginMiLink(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if ((paramArrayOfByte1 != null) && (paramArrayOfByte1.length > 0) && (paramArrayOfByte2 != null) && (paramArrayOfByte2.length > 0))
    {
      String str = String.format("loginMiLink,b2Token.length=%d,b2Security.length=%d", new Object[] { Integer.valueOf(paramArrayOfByte1.length), Integer.valueOf(paramArrayOfByte2.length) });
      MiLinkLog.v(getTag(), str);
      this.mOldB2Security = this.mB2Security;
      this.mOldB2Token = this.mB2Token;
      try
      {
        try
        {
          paramArrayOfByte1 = new String(paramArrayOfByte1, "UTF-8");
          paramArrayOfByte2 = new String(paramArrayOfByte2, "UTF-8");
          this.mB2Token = paramArrayOfByte1;
          this.mB2Security = paramArrayOfByte2;
          MiLinkLog.v(getTag(), "mB2Token:" + this.mB2Token);
          MiLinkLog.v(getTag(), "mB2Security:" + this.mB2Security);
          this.mMiLinkLoginTime = System.currentTimeMillis();
          saveAccount();
          return;
        }
        finally {}
        MiLinkLog.e(getTag(), "loginMiLink,but some argu is wrong!");
      }
      catch (UnsupportedEncodingException paramArrayOfByte1)
      {
        MiLinkLog.v(getTag(), "UnsupportedEncodingException:", paramArrayOfByte1);
        return;
      }
    }
  }
  
  public void logoff()
  {
    MiLinkLog.v(getTag(), "logoff");
    this.mUserId = "";
    this.mServiceToken = "";
    this.mSSecurity = "";
    this.mB2Token = "";
    this.mB2Security = "";
    this.mOldB2Token = "";
    this.mOldB2Security = "";
    this.mMiLinkLoginTime = 0L;
    this.mFastLoginExtra = null;
    saveAccount();
  }
  
  public void logoffMiLink()
  {
    MiLinkLog.v(getTag(), "logoffMiLink");
    this.mB2Token = "";
    this.mB2Security = "";
    this.mOldB2Token = "";
    this.mOldB2Security = "";
    this.mMiLinkLoginTime = 0L;
    saveAccount();
  }
  
  protected void saveAccount()
  {
    label396:
    for (;;)
    {
      try
      {
        MiLinkLog.v(getTag(), "saveAccount");
        SharedPreferences.Editor localEditor = Global.getContext().getSharedPreferences(getPrefFileName(), 0).edit();
        String str3 = "userId" + this.appId;
        if (this.mUserId == null)
        {
          str1 = "";
          localEditor.putString(str3, str1);
          str3 = "serviceToken" + this.appId;
          if (this.mServiceToken == null)
          {
            str1 = "";
            localEditor.putString(str3, str1);
            str3 = "sSecurity" + this.appId;
            if (this.mSSecurity != null) {
              continue;
            }
            str1 = "";
            localEditor.putString(str3, str1);
            str3 = "b2Token" + this.appId;
            if (this.mB2Token != null) {
              continue;
            }
            str1 = "";
            localEditor.putString(str3, str1);
            str3 = "b2Security" + this.appId;
            if (this.mB2Security != null) {
              continue;
            }
            str1 = "";
            localEditor.putString(str3, str1);
            if (this.mFastLoginExtra == null) {
              continue;
            }
            localEditor.putString("fastLoginExtraData" + this.appId, new String(Base64.encode(this.mFastLoginExtra, 0)));
            str3 = "privacyKey" + this.appId;
            if (this.mPrivacyKey != null) {
              break label396;
            }
            str1 = "";
            localEditor.putString(str3, str1);
            localEditor.commit();
          }
        }
        else
        {
          str1 = this.mUserId;
          continue;
        }
        String str1 = this.mServiceToken;
        continue;
        str1 = this.mSSecurity;
        continue;
        str1 = this.mB2Token;
        continue;
        str1 = this.mB2Security;
        continue;
        localEditor.putString("fastLoginExtraData" + this.appId, "");
        continue;
        String str2 = this.mPrivacyKey;
      }
      finally {}
    }
  }
  
  public void setB2Security(String paramString)
  {
    MiLinkLog.v(getTag(), "setB2Security=" + paramString);
    this.mB2Security = paramString;
  }
  
  public void setB2Token(String paramString)
  {
    MiLinkLog.v(getTag(), "setB2Token=" + paramString);
    this.mB2Token = paramString;
  }
  
  public void setChannelPubKey(Map<Integer, String> paramMap) {}
  
  public void setFastLoginExtra(byte[] paramArrayOfByte)
  {
    this.mFastLoginExtra = paramArrayOfByte;
  }
  
  public void setKeepAliveTime(int paramInt) {}
  
  public void setMiLinkLoginTime(long paramLong)
  {
    this.mMiLinkLoginTime = paramLong;
  }
  
  public void setOldB2Security(String paramString)
  {
    this.mOldB2Security = paramString;
  }
  
  public void setOldB2Token(String paramString)
  {
    this.mOldB2Token = paramString;
  }
  
  public void setSSecurity(String paramString)
  {
    this.mSSecurity = paramString;
  }
  
  public void setServiceToken(String paramString)
  {
    this.mServiceToken = paramString;
  }
  
  public void setUserId(String paramString)
  {
    this.mUserId = paramString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\account\IAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */