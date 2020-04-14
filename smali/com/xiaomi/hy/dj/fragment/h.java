package com.xiaomi.hy.dj.fragment;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

class h
  extends BroadcastReceiver
{
  h(HyPayEcoFragment paramHyPayEcoFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if (!"BROADCAST_PAY_END".equals(paramContext))
    {
      Log.e("HyAlipayFragment", "接收到广播，但与注册的名称不一致[" + paramContext + "]");
      return;
    }
    paramContext = paramIntent.getExtras().getString("upPay.Rsp");
    try
    {
      paramIntent = new JSONObject(paramContext);
      paramContext = paramIntent.optString("respCode");
      paramIntent = paramIntent.optString("respDesc");
      Log.e("HyAlipayFragment", "respCode:" + paramContext + " respDesc:" + paramIntent);
      if ("0000".equals(paramContext))
      {
        this.a.getActivity().runOnUiThread(new i(this));
        return;
      }
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
      this.a.b(189);
      return;
    }
    this.a.getActivity().runOnUiThread(new j(this));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */