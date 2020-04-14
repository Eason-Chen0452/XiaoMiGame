package com.xiaomi.gamecenter.sdk.verifyid;

import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.xiaomi.gamecenter.sdk.protocol.MessageRequestNewVerifyId;
import com.xiaomi.gamecenter.sdk.protocol.VerifyType;
import com.xiaomi.gamecenter.sdk.web.h;

public class VerifyID
{
  private Activity a;
  private String b;
  private String c;
  private h d;
  private String e;
  private String f;
  private VerifyType g;
  
  public VerifyID(Activity paramActivity, String paramString1, String paramString2, String paramString3, String paramString4, VerifyType paramVerifyType)
  {
    this.a = paramActivity;
    this.b = paramString1;
    this.c = paramString2;
    this.e = paramString3;
    this.f = paramString4;
    this.g = paramVerifyType;
  }
  
  public final void a(h paramh)
  {
    this.d = paramh;
    new VerifyIDTask(this.e, this.f, this.g).execute(new Integer[0]);
  }
  
  private class VerifyIDTask
    extends AsyncTask<Integer, Integer, String>
  {
    private String b;
    private String c;
    private VerifyType d;
    
    public VerifyIDTask(String paramString1, String paramString2, VerifyType paramVerifyType)
    {
      this.b = paramString1;
      this.c = paramString2;
      this.d = paramVerifyType;
    }
    
    private String a()
    {
      try
      {
        str = new MessageRequestNewVerifyId(VerifyID.a(VerifyID.this), this.d, VerifyID.b(VerifyID.this), this.b, this.c).a();
        localException1.printStackTrace();
      }
      catch (Exception localException1)
      {
        try
        {
          Log.e("verify result=====", str);
          return str;
        }
        catch (Exception localException2)
        {
          String str;
          for (;;) {}
        }
        localException1 = localException1;
        str = "";
      }
      return str;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\verifyid\VerifyID.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */