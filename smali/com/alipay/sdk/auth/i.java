package com.alipay.sdk.auth;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import java.util.List;
import org.json.JSONObject;

final class i
  implements Runnable
{
  i(Activity paramActivity, StringBuilder paramStringBuilder, APAuthInfo paramAPAuthInfo) {}
  
  public final void run()
  {
    try
    {
      localObject3 = new com.alipay.sdk.packet.impl.a();
      localObject1 = null;
    }
    catch (Exception localException)
    {
      Object localObject3;
      Object localObject1;
      label28:
      label236:
      return;
    }
    finally
    {
      if (h.a() != null) {
        h.a().b();
      }
    }
    try
    {
      localObject3 = ((com.alipay.sdk.packet.impl.a)localObject3).a(this.a, this.b.toString());
      localObject1 = localObject3;
    }
    catch (Throwable localThrowable)
    {
      break label28;
    }
    if (h.a() != null)
    {
      h.a().b();
      h.b();
    }
    if (localObject1 == null)
    {
      h.a(this.c.getRedirectUri() + "?resultCode=202");
      h.a(this.a, h.c());
      if (h.a() != null) {
        h.a().b();
      }
    }
    do
    {
      return;
      localObject1 = com.alipay.sdk.protocol.b.a(((com.alipay.sdk.packet.b)localObject1).a().optJSONObject("form").optJSONObject("onload"));
      int i = 0;
      for (;;)
      {
        if (i < ((List)localObject1).size())
        {
          if (((com.alipay.sdk.protocol.b)((List)localObject1).get(i)).a == com.alipay.sdk.protocol.a.b) {
            h.a(((com.alipay.sdk.protocol.b)localObject1.get(i)).b[0]);
          }
        }
        else
        {
          if (!TextUtils.isEmpty(h.c())) {
            break label236;
          }
          h.a(this.c.getRedirectUri() + "?resultCode=202");
          h.a(this.a, h.c());
          if (h.a() == null) {
            break;
          }
          h.a().b();
          return;
        }
        i += 1;
      }
      localObject1 = new Intent(this.a, AuthActivity.class);
      ((Intent)localObject1).putExtra("params", h.c());
      ((Intent)localObject1).putExtra("redirectUri", this.c.getRedirectUri());
      this.a.startActivity((Intent)localObject1);
    } while (h.a() == null);
    h.a().b();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\auth\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */