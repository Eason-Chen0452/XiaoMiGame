package com.wali.gamecenter.report.io;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.protocol.HttpContext;

final class HttpConnectionManager$3
  implements HttpResponseInterceptor
{
  public final void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    paramHttpContext = paramHttpResponse.getEntity().getContentEncoding();
    int i;
    if (paramHttpContext != null)
    {
      paramHttpContext = paramHttpContext.getElements();
      i = 0;
    }
    for (;;)
    {
      if (i < paramHttpContext.length)
      {
        if (paramHttpContext[i].getName().equalsIgnoreCase("gzip")) {
          paramHttpResponse.setEntity(new HttpConnectionManager.GzipDecompressingEntity(paramHttpResponse.getEntity()));
        }
      }
      else {
        return;
      }
      i += 1;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\io\HttpConnectionManager$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */