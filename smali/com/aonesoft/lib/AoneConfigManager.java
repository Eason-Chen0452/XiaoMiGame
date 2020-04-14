package com.aonesoft.lib;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AoneConfigManager
{
  private static final String IAP_SDKS = "iap_sdks";
  private static final String IS_SMARTSPACE = "is_smartspace";
  private static final String USER_SDKS = "user_sdks";
  private static final String WEB_CARD_PAY_PAGE = "web_card_pay_page";
  private static final String WEB_PAY_PORT = "web_pay_port";
  private static final String WEB_PRODUCT_PAY_PAGE = "web_product_pay_page";
  private static String isSmartspace = "false";
  private static HashMap<String, String> mClassNameMap;
  private static IapInfo mDefaultIapSdk;
  private static HashMap<String, Object> mIapSdkMaps;
  private static ArrayList<String> mIapSdkNames;
  private static HashMap<String, String> mTypeMap;
  private static ArrayList<String> mUserSdkNames = new ArrayList();
  private static HashMap<String, String> mWebPayMap;
  private static Context sContext;
  private static String webCardPayPage;
  private static String webPayPort;
  private static String webProductPayPage;
  
  static
  {
    mIapSdkNames = new ArrayList();
    mIapSdkMaps = new HashMap();
    mTypeMap = new HashMap();
    mClassNameMap = new HashMap();
    mWebPayMap = new HashMap();
    webPayPort = "";
    webCardPayPage = "";
    webProductPayPage = "";
  }
  
  public static boolean commitAfterPay(String paramString)
  {
    paramString = (IapInfo)mIapSdkMaps.get(paramString);
    if (paramString == null) {
      return false;
    }
    return paramString.commitAfterPay;
  }
  
  public static String getClassName(String paramString)
  {
    return (String)mClassNameMap.get(paramString);
  }
  
  public static IapInfo getDefaultIapInfo()
  {
    return mDefaultIapSdk;
  }
  
  public static String getDefaultPaySdkName()
  {
    return mDefaultIapSdk.name;
  }
  
  public static ArrayList<String> getIapSdkNames()
  {
    return mIapSdkNames;
  }
  
  public static boolean getIsSmartspace()
  {
    return Boolean.parseBoolean(isSmartspace);
  }
  
  public static String getTypeByName(String paramString)
  {
    return (String)mTypeMap.get(paramString);
  }
  
  public static ArrayList<String> getUserSdkNames()
  {
    return mUserSdkNames;
  }
  
  public static String getWebCardPayPage()
  {
    return webCardPayPage;
  }
  
  public static String getWebPayPort()
  {
    return webPayPort;
  }
  
  public static String getWebProductPayPage()
  {
    return webProductPayPage;
  }
  
  public static void init(Context paramContext)
  {
    sContext = paramContext;
    loadPluginNames();
  }
  
  public static boolean isDefaultPaySdk(String paramString)
  {
    IapInfo localIapInfo = getDefaultIapInfo();
    if ((localIapInfo == null) || (localIapInfo.name == null)) {
      return false;
    }
    return localIapInfo.name.equals(paramString);
  }
  
  private static void loadIapConfigs(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      if (paramString.has("iap_sdks"))
      {
        paramString = paramString.getJSONArray("iap_sdks");
        mIapSdkMaps.clear();
        int i = 0;
        for (;;)
        {
          if (i >= paramString.length()) {
            return;
          }
          JSONObject localJSONObject = (JSONObject)paramString.get(i);
          IapInfo localIapInfo = new IapInfo();
          localIapInfo.name = ((String)localJSONObject.get("name"));
          localIapInfo.className = localJSONObject.getString("class_name");
          localIapInfo.type = localJSONObject.getString("type");
          mTypeMap.put(localIapInfo.name, localIapInfo.type);
          if (localJSONObject.has("always_show")) {
            localIapInfo.alwaysShow = localJSONObject.getBoolean("always_show");
          }
          if (localJSONObject.has("defalut"))
          {
            localIapInfo.isDefaultSdk = localJSONObject.getBoolean("defalut");
            mDefaultIapSdk = localIapInfo;
          }
          if (localJSONObject.has("no_product_id")) {
            localIapInfo.noNeedProdcutId = localJSONObject.getBoolean("no_product_id");
          }
          if (localJSONObject.has("commit_after_pay")) {
            localIapInfo.commitAfterPay = localJSONObject.getBoolean("commit_after_pay");
          }
          mIapSdkMaps.put(localIapInfo.name, localIapInfo);
          mClassNameMap.put(localIapInfo.name, localIapInfo.className);
          mIapSdkNames.add(localIapInfo.name);
          i += 1;
        }
      }
      return;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private static void loadPluginNames()
  {
    Log.d("AoneConfigManager", "loadPluginNames begin");
    try
    {
      InputStream localInputStream = sContext.getAssets().open("aoneconfig.json");
      Object localObject = new byte[localInputStream.available()];
      localInputStream.read((byte[])localObject);
      localObject = new String((byte[])localObject, "utf-8");
      localInputStream.close();
      loadUserConfigs((String)localObject);
      loadIapConfigs((String)localObject);
      loadWebPayConfigs((String)localObject);
      loadSmartSpace((String)localObject);
      Log.d("AoneConfigManager", "loadPluginNames end");
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  private static void loadSmartSpace(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      if (paramString.has("is_smartspace"))
      {
        isSmartspace = paramString.getString("is_smartspace");
        return;
      }
      isSmartspace = "false";
      return;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private static void loadUserConfigs(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      if (paramString.has("user_sdks"))
      {
        paramString = paramString.getJSONArray("user_sdks");
        int i = 0;
        for (;;)
        {
          if (i >= paramString.length()) {
            return;
          }
          Object localObject = (JSONObject)paramString.get(i);
          String str1 = (String)((JSONObject)localObject).get("name");
          String str2 = ((JSONObject)localObject).getString("class_name");
          localObject = ((JSONObject)localObject).getString("type");
          mTypeMap.put(str1, localObject);
          mClassNameMap.put(str1, str2);
          mUserSdkNames.add(str1);
          i += 1;
        }
      }
      return;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private static void loadWebPayConfigs(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      if (paramString.has("web_pay_port")) {
        webPayPort = (String)paramString.get("web_pay_port");
      }
      if (paramString.has("web_card_pay_page")) {
        webCardPayPage = (String)paramString.get("web_card_pay_page");
      }
      if (paramString.has("web_product_pay_page")) {
        webProductPayPage = (String)paramString.get("web_product_pay_page");
      }
      return;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public static boolean notNeedProductId(String paramString)
  {
    paramString = (IapInfo)mIapSdkMaps.get(paramString);
    if (paramString == null) {
      return false;
    }
    return paramString.noNeedProdcutId;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneConfigManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */