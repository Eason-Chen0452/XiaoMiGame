package com.wali.gamecenter.report.io;

import java.io.IOException;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.protocol.HttpContext;

final class HttpConnectionManager$1
  implements HttpRequestRetryHandler
{
  public final boolean retryRequest(IOException paramIOException, int paramInt, HttpContext paramHttpContext)
  {
    if (paramInt > 2) {
      return false;
    }
    if ((paramIOException instanceof NoHttpResponseException)) {
      return true;
    }
    return !((HttpRequest)paramHttpContext.getAttribute("http.request") instanceof HttpEntityEnclosingRequest);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\io\HttpConnectionManager$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */