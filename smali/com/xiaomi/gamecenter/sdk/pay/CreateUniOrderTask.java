package com.xiaomi.gamecenter.sdk.pay;

import android.content.Context;
import android.os.AsyncTask;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;

public class CreateUniOrderTask
  extends AsyncTask<Integer, Integer, String>
{
  private Context a;
  private String b;
  private String c;
  private String d;
  private MiBuyInfo e;
  private a f;
  
  public CreateUniOrderTask(Context paramContext, String paramString1, String paramString2, MiBuyInfo paramMiBuyInfo, String paramString3, a parama)
  {
    this.a = paramContext;
    this.b = paramString1;
    this.c = paramString2;
    this.e = paramMiBuyInfo;
    this.d = paramString3;
    this.f = parama;
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\pay\CreateUniOrderTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */