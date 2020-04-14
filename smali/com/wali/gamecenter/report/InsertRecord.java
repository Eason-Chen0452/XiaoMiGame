package com.wali.gamecenter.report;

import android.text.TextUtils;
import android.util.Log;
import com.wali.gamecenter.report.io.HttpConnectionManager;
import com.wali.gamecenter.report.log.ReportLog;
import com.wali.gamecenter.report.utils.Base64;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;

public class InsertRecord
  implements Runnable
{
  private int method;
  private String param;
  
  public InsertRecord(String paramString, int paramInt)
  {
    this.param = paramString;
    this.method = paramInt;
  }
  
  public void run()
  {
    if ((ReportManager.getInstance().isDebug()) && (TextUtils.isEmpty(this.param))) {
      throw new IllegalArgumentException("param is null");
    }
    Object localObject3 = HttpConnectionManager.getHttpClient();
    int i;
    Object localObject4;
    if (this.method == 1)
    {
      if (ReportManager.getInstance().isDebug()) {
        ReportManager.getInstance().reportLog().debug("ReportManager", "data=" + this.param);
      }
      HttpPost localHttpPost = new HttpPost("https://data.game.xiaomi.com/p.do");
      try
      {
        if (ReportManager.getInstance().isDebug()) {
          Log.e("ReportManager", "send post data=" + this.param);
        }
        localHttpPost.setEntity(new StringEntity("data=" + Base64.encode(this.param.getBytes())));
        localObject3 = ((HttpClient)localObject3).execute(localHttpPost);
        if (ReportManager.getInstance().isDebug()) {
          Log.e("ReportManager", ((HttpResponse)localObject3).getStatusLine().toString());
        }
        i = ((HttpResponse)localObject3).getStatusLine().getStatusCode();
        if (((HttpResponse)localObject3).getEntity() != null) {
          ((HttpResponse)localObject3).getEntity().consumeContent();
        }
        if (i == 200)
        {
          if (!ReportManager.getInstance().isDebug()) {
            return;
          }
          Log.e("ReportManager", "send post data success");
          return;
        }
        if (ReportManager.getInstance().isDebug()) {
          Log.e("ReportManager", "send post data fail");
        }
        localObject3 = ReportManager.spiltReportToJson(this.param).iterator();
        String str;
        while (((Iterator)localObject3).hasNext())
        {
          str = (String)((Iterator)localObject3).next();
          ReportManager.getInstance().saveReportToDB("post", str, false);
        }
        try
        {
          ((HttpPost)localObject1).abort();
          return;
        }
        catch (Exception localException1)
        {
          if (!ReportManager.getInstance().isDebug()) {
            return;
          }
        }
      }
      catch (Throwable localThrowable1)
      {
        localThrowable1 = localThrowable1;
        if (ReportManager.getInstance().isDebug()) {
          localThrowable1.printStackTrace();
        }
        ReportManager.getInstance().reportLog().error("ReportManager", "report post error", localThrowable1);
        localObject4 = ReportManager.spiltReportToJson(this.param).iterator();
        while (((Iterator)localObject4).hasNext())
        {
          str = (String)((Iterator)localObject4).next();
          ReportManager.getInstance().saveReportToDB("post", str, false);
        }
      }
      finally {}
      localException1.printStackTrace();
    }
    else if (this.method == 0)
    {
      ReportManager.getInstance().reportLog().debug("ReportManager", "https://data.game.xiaomi.com/1px.gif?" + this.param);
      if (ReportManager.getInstance().isDebug()) {
        Log.e("ReportManager", "send get data=" + this.param);
      }
      HttpGet localHttpGet = new HttpGet("https://data.game.xiaomi.com/1px.gif?" + this.param);
      try
      {
        localObject4 = ((HttpClient)localObject4).execute(localHttpGet);
        if (ReportManager.getInstance().isDebug()) {
          Log.e("ReportManager", ((HttpResponse)localObject4).getStatusLine().toString());
        }
        i = ((HttpResponse)localObject4).getStatusLine().getStatusCode();
        if (((HttpResponse)localObject4).getEntity() != null) {
          ((HttpResponse)localObject4).getEntity().consumeContent();
        }
        if (i == 200)
        {
          if (!ReportManager.getInstance().isDebug()) {
            return;
          }
          Log.e("ReportManager", "send get data success");
          return;
        }
      }
      catch (Throwable localThrowable2)
      {
        localThrowable2 = localThrowable2;
        if (ReportManager.getInstance().isDebug()) {
          localThrowable2.printStackTrace();
        }
        ReportManager.getInstance().reportLog().error("ReportManager", "report get error", localThrowable2);
        ReportManager.getInstance().saveReportToDB("get", this.param, false);
        try
        {
          localHttpGet.abort();
          return;
        }
        catch (Exception localException2)
        {
          if (!ReportManager.getInstance().isDebug()) {
            return;
          }
        }
        localThrowable2.printStackTrace();
        return;
      }
      finally {}
      ReportManager.getInstance().saveReportToDB("get", this.param, false);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\InsertRecord.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */