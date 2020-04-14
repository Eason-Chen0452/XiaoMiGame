package com.alipay.sdk.authjs;

import android.widget.Toast;
import java.util.Timer;
import org.json.JSONException;
import org.json.JSONObject;

final class d
  implements Runnable
{
  d(c paramc, a parama) {}
  
  public final void run()
  {
    c localc = this.b;
    a locala = this.a;
    if ((locala != null) && ("toast".equals(locala.k)))
    {
      JSONObject localJSONObject = locala.m;
      String str = localJSONObject.optString("content");
      int j = localJSONObject.optInt("duration");
      i = 1;
      if (j < 2500) {
        i = 0;
      }
      Toast.makeText(localc.b, str, i).show();
      new Timer().schedule(new e(localc, locala), i);
    }
    int i = a.a.a;
    if (i != a.a.a) {}
    try
    {
      this.b.a(this.a.i, i);
      return;
    }
    catch (JSONException localJSONException) {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\authjs\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */