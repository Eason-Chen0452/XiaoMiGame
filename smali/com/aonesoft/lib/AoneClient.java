package com.aonesoft.lib;

import java.util.ArrayList;
import java.util.Hashtable;
import org.cocos2dx.plugin.PluginWrapper;

public class AoneClient
{
  private static long userID = 0L;
  private static long userToken = 0L;
  
  public static ArrayList<GameGroup> AllGroups()
  {
    return nativeAllGroups();
  }
  
  public static Hashtable<String, String> AllLangs()
  {
    return nativeAllLangs();
  }
  
  public static ArrayList<GameProduct> AllProducts()
  {
    return nativeAllProducts();
  }
  
  public static ArrayList<GameRole> AllRoles()
  {
    return nativeAllRoles();
  }
  
  public static String AoneAccount()
  {
    return nativeAoneAccount();
  }
  
  public static void CheckVersion(int paramInt1, int paramInt2, int paramInt3, AoneResultListener paramAoneResultListener)
  {
    nativeCheckVersion(paramInt1, paramInt2, paramInt3, paramAoneResultListener);
  }
  
  public static int CreateRole(String paramString1, String paramString2, int paramInt1, Hashtable<String, String> paramHashtable, String paramString3, String paramString4, int paramInt2)
  {
    Object localObject = paramHashtable;
    if (paramHashtable == null) {
      localObject = new Hashtable();
    }
    return nativeCreateRoleCP(paramString1, paramString2, paramInt1, (Hashtable)localObject, paramString3, paramString4, paramInt2);
  }
  
  public static void CreateRoleAsyc(String paramString, int paramInt1, Hashtable<String, String> paramHashtable, int paramInt2, AoneResultListener paramAoneResultListener)
  {
    nativeCreateRole(paramString, paramInt1, paramHashtable, paramInt2, paramAoneResultListener);
  }
  
  public static String EmbedQR(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return nativeEmbedQR(paramString1, paramString2, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void Exit() {}
  
  public static void GetAdTrackLink(String paramString, AoneResultListener paramAoneResultListener)
  {
    nativeGetAdTrackLink(paramString, paramAoneResultListener);
  }
  
  public static void GetAdsource(String paramString, AoneResultListener paramAoneResultListener)
  {
    nativeGetAdSource(paramString, paramAoneResultListener);
  }
  
  public static String GetAoneConfigData(String paramString)
  {
    return nativeAoneConfigData(paramString);
  }
  
  public static String GetAppLink()
  {
    return nativeGetAppLink();
  }
  
  public static GameVersion GetGameVersion()
  {
    return nativeGetGameVersion();
  }
  
  public static GameGroup GetSelectedGroup()
  {
    return nativeGetSelectedGroup();
  }
  
  public static GameRole GetSelectedRole()
  {
    return nativeGetSelectedRole();
  }
  
  public static String GetToken()
  {
    return nativeToken();
  }
  
  public static int GetUserToken()
  {
    return nativeUserToken();
  }
  
  public static void InitSDK(AoneResultListener paramAoneResultListener)
  {
    nativeInitSDK(paramAoneResultListener);
  }
  
  public static void LogEvent(String paramString)
  {
    nativeLogEvent(paramString);
  }
  
  public static void LogEvent(String paramString, Hashtable<String, String> paramHashtable)
  {
    nativeLogEventParams(paramString, paramHashtable);
  }
  
  public static void Login(AoneResultListener paramAoneResultListener)
  {
    nativeLogin(paramAoneResultListener);
  }
  
  public static void Logout(AoneResultListener paramAoneResultListener)
  {
    nativeLogout(paramAoneResultListener);
  }
  
  public static void OpenUrl(String paramString)
  {
    nativeOpenUrl(paramString);
  }
  
  public static void Pay(String paramString1, int paramInt, String paramString2, AoneResultListener paramAoneResultListener)
  {
    nativePay(paramString1, paramInt, paramString2, paramAoneResultListener);
  }
  
  public static void PullGameGroup(AoneResultListener paramAoneResultListener)
  {
    nativePullGameGroup(paramAoneResultListener);
  }
  
  public static int SelectLang(String paramString)
  {
    return nativeSelectLang(paramString);
  }
  
  public static void SelectRoleAndGroup(int paramInt1, int paramInt2, AoneResultListener paramAoneResultListener)
  {
    nativeSelectRoleAndGroup(paramInt1, paramInt2, paramAoneResultListener);
  }
  
  public static void Share(Hashtable<String, String> paramHashtable, AoneResultListener paramAoneResultListener)
  {
    Object localObject = paramHashtable;
    if (paramHashtable == null) {
      localObject = new Hashtable();
    }
    nativeShare((Hashtable)localObject, paramAoneResultListener);
  }
  
  public static void SubmitRoleData(String paramString1, String paramString2, int paramInt1, String paramString3, String paramString4, int paramInt2, boolean paramBoolean, String paramString5, long paramLong)
  {
    nativeSubmitRoleData(paramString1, paramString2, paramInt1, paramString3, paramString4, paramInt2, paramBoolean, paramString5, paramLong);
  }
  
  public static int UserID()
  {
    return nativeUserID();
  }
  
  public static boolean hasExitUI()
  {
    return nativeHasExitUI();
  }
  
  private static native ArrayList<GameGroup> nativeAllGroups();
  
  private static native Hashtable<String, String> nativeAllLangs();
  
  private static native ArrayList<GameProduct> nativeAllProducts();
  
  private static native ArrayList<GameRole> nativeAllRoles();
  
  public static native void nativeAnnounceCallback();
  
  private static native String nativeAoneAccount();
  
  private static native String nativeAoneConfigData(String paramString);
  
  private static native void nativeCheckVersion(int paramInt1, int paramInt2, int paramInt3, AoneResultListener paramAoneResultListener);
  
  private static native void nativeCreateRole(String paramString, int paramInt1, Hashtable<String, String> paramHashtable, int paramInt2, AoneResultListener paramAoneResultListener);
  
  private static native int nativeCreateRoleCP(String paramString1, String paramString2, int paramInt1, Hashtable<String, String> paramHashtable, String paramString3, String paramString4, int paramInt2);
  
  private static native String nativeEmbedQR(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  private static native void nativeExit();
  
  private static native void nativeGetAdSource(String paramString, AoneResultListener paramAoneResultListener);
  
  private static native void nativeGetAdTrackLink(String paramString, AoneResultListener paramAoneResultListener);
  
  private static native String nativeGetAppLink();
  
  private static native GameVersion nativeGetGameVersion();
  
  private static native GameGroup nativeGetSelectedGroup();
  
  private static native GameRole nativeGetSelectedRole();
  
  private static native boolean nativeHasExitUI();
  
  public static native void nativeImagePicker(int paramInt);
  
  private static native void nativeInitSDK(AoneResultListener paramAoneResultListener);
  
  private static native void nativeLogEvent(String paramString);
  
  private static native void nativeLogEventParams(String paramString, Hashtable<String, String> paramHashtable);
  
  private static native void nativeLogin(AoneResultListener paramAoneResultListener);
  
  private static native void nativeLogout(AoneResultListener paramAoneResultListener);
  
  private static native void nativeOauthLogin(AoneResultListener paramAoneResultListener);
  
  private static native void nativeOpenUrl(String paramString);
  
  private static native void nativePay(String paramString1, int paramInt, String paramString2, AoneResultListener paramAoneResultListener);
  
  private static native void nativePullGameGroup(AoneResultListener paramAoneResultListener);
  
  private static native void nativeQueryPaynoStatus(int paramInt, String paramString, AoneResultListener paramAoneResultListener);
  
  private static native void nativeRecordDevicePoint(int paramInt);
  
  private static native int nativeSelectLang(String paramString);
  
  private static native void nativeSelectRoleAndGroup(int paramInt1, int paramInt2, AoneResultListener paramAoneResultListener);
  
  private static native int nativeSetOAuthType(String paramString);
  
  private static native void nativeShare(Hashtable<String, String> paramHashtable, AoneResultListener paramAoneResultListener);
  
  private static native void nativeSubmitRoleData(String paramString1, String paramString2, int paramInt1, String paramString3, String paramString4, int paramInt2, boolean paramBoolean, String paramString5, long paramLong);
  
  private static native String nativeToken();
  
  public static native void nativeUpdateCallback();
  
  private static native int nativeUserID();
  
  private static native int nativeUserToken();
  
  public static void oauthLogin(AoneResultListener paramAoneResultListener)
  {
    nativeOauthLogin(paramAoneResultListener);
  }
  
  public static void queryPaynoStatus(int paramInt, final String paramString, final AoneResultListener paramAoneResultListener)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        AoneClient.nativeQueryPaynoStatus(this.val$cpId, paramString, paramAoneResultListener);
      }
    });
  }
  
  public static void recordDevicePoint(int paramInt)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        AoneClient.nativeRecordDevicePoint(this.val$sPoint);
      }
    });
  }
  
  public static void setOAuthType(String paramString)
  {
    nativeSetOAuthType(paramString);
  }
  
  public static class GameGroup
  {
    public int ID;
    public boolean IsInitialed;
    public boolean IsRecommend;
    public String Name;
    public String ServerIP;
    public int ServerPort;
    public int Status;
    
    public GameGroup() {}
    
    public GameGroup(int paramInt1, String paramString1, int paramInt2, String paramString2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2)
    {
      this.ID = paramInt1;
      this.Name = paramString1;
      this.Status = paramInt2;
      this.ServerIP = paramString2;
      this.ServerPort = paramInt3;
      this.IsRecommend = paramBoolean1;
      this.IsInitialed = paramBoolean2;
    }
  }
  
  public static class GameProduct
  {
    public double Amount;
    public double Amount_usd;
    public int Coin;
    public String Currency;
    public String Describe;
    public String ID;
    public String Name;
    public String Type;
    
    public GameProduct() {}
    
    public GameProduct(String paramString1, String paramString2, String paramString3, String paramString4, double paramDouble1, double paramDouble2, int paramInt, String paramString5)
    {
      this.ID = paramString1;
      this.Name = paramString2;
      this.Describe = paramString3;
      this.Currency = paramString4;
      this.Amount = paramDouble1;
      this.Amount_usd = paramDouble2;
      this.Coin = paramInt;
      this.Type = paramString5;
    }
  }
  
  public static class GameRole
  {
    public String CreateTime;
    public Hashtable<String, String> Features;
    public int ID;
    public int LastGroupID;
    public String LastLoginTime;
    public int Level;
    public String Name;
    public int OwnerGroupID;
    public int Type;
    public int VIP;
    
    public GameRole() {}
    
    public GameRole(int paramInt1, String paramString1, int paramInt2, int paramInt3, int paramInt4, String paramString2, String paramString3, int paramInt5, int paramInt6, Hashtable<String, String> paramHashtable)
    {
      this.ID = paramInt1;
      this.Name = paramString1;
      this.Type = paramInt2;
      this.Level = paramInt3;
      this.VIP = paramInt4;
      this.CreateTime = paramString2;
      this.LastLoginTime = paramString3;
      this.OwnerGroupID = paramInt5;
      this.LastGroupID = paramInt6;
      this.Features = paramHashtable;
    }
  }
  
  public class GameVersion
  {
    public String DownloadURL;
    public char MajorVersion;
    public char MinorVersion;
    public String Notice;
    public char RevisionVersion;
    public int Status;
    public String UpdateURL;
    
    public GameVersion() {}
    
    public GameVersion(char paramChar1, char paramChar2, char paramChar3, String paramString1, String paramString2, String paramString3, int paramInt)
    {
      this.MajorVersion = paramChar1;
      this.MinorVersion = paramChar2;
      this.RevisionVersion = paramChar3;
      this.Notice = paramString1;
      this.DownloadURL = paramString2;
      this.UpdateURL = paramString3;
      this.Status = paramInt;
    }
  }
  
  public static abstract interface InitReturnStatus
  {
    public static final int FAILED = 1;
    public static final int SUCCESS = 0;
  }
  
  public static abstract interface LoginReturnStatus
  {
    public static final int CANCEL = 2;
    public static final int FAILED = 1;
    public static final int LOGOUT = 4;
    public static final int SUCCESS = 0;
    public static final int TIMEOUT = 3;
  }
  
  public static abstract interface LogoutReturnStatus
  {
    public static final int SUCCESS = 4;
  }
  
  public static abstract interface PayReturnStatus
  {
    public static final int CANCEL = 2;
    public static final int FAILED = 1;
    public static final int SUCCESS = 0;
    public static final int TIMEOUT = 3;
  }
  
  public static abstract interface ShareReturnStatus
  {
    public static final int CANCEL = 2;
    public static final int FAILED = 1;
    public static final int SUCCESS = 0;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */