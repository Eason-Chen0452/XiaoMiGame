package org.cocos2dx.plugin;

import android.app.Activity;
import android.content.Context;
import com.xiaomi.gamecenter.sdk.OnPayProcessListener;
import java.util.Hashtable;
import org.json.JSONException;
import org.json.JSONObject;

public class IAPMi
  implements InterfaceIAP
{
  private static Hashtable<String, String> curProductInfo = null;
  private static InterfaceIAP mAdapter;
  private static String order;
  private static OnPayProcessListener payProcessListener = new OnPayProcessListener()
  {
    public void finishPayProcess(int paramAnonymousInt)
    {
      switch (paramAnonymousInt)
      {
      default: 
        IAPMi.payResult(1, "pay fail,unknown error!,the result code is" + paramAnonymousInt);
        return;
      case 0: 
        IAPMi.payResult(0, "pay Success");
        return;
      case -18004: 
        IAPMi.payResult(2, "pay cancel,the result code is" + paramAnonymousInt);
        return;
      case -18003: 
        IAPMi.payResult(1, "pay fail,the result code is" + paramAnonymousInt);
        return;
      }
      IAPMi.payResult(1, "Operation in Progress,the result code is" + paramAnonymousInt);
    }
  };
  private static String price;
  private Activity activity;
  
  public IAPMi(Context paramContext)
  {
    this.activity = ((Activity)paramContext);
    mAdapter = this;
  }
  
  private static void payResult(int paramInt, String paramString)
  {
    IAPWrapper.onPayResult(mAdapter, paramInt, paramString);
  }
  
  public boolean canRequestProducts()
  {
    return false;
  }
  
  public void configDeveloperInfo(Hashtable<String, String> paramHashtable) {}
  
  public String getPluginVersion()
  {
    return MiWrapper.getPluginVersion();
  }
  
  public String getSDKVersion()
  {
    return MiWrapper.getSDKVersion();
  }
  
  public void payForProduct(Hashtable<String, String> paramHashtable)
  {
    curProductInfo = paramHashtable;
    if (curProductInfo == null)
    {
      payResult(1, "curProductInfo is null");
      return;
    }
    price = (String)curProductInfo.get("price");
    order = (String)curProductInfo.get("order");
    PluginWrapper.runOnMainThread(new Runnable()
    {
      public void run()
      {
        JSONObject localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("order", IAPMi.order);
          localJSONObject.put("price", IAPMi.price);
          localJSONObject.put("userInfo", IAPMi.order);
          MiWrapper.getPayInfo(localJSONObject);
          MiWrapper.miPay(IAPMi.this.activity, IAPMi.payProcessListener);
          return;
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            localJSONException.printStackTrace();
          }
        }
      }
    });
  }
  
  public void setDebugMode(boolean paramBoolean) {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\IAPMi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */