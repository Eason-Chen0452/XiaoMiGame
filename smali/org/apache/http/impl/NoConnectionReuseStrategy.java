package org.apache.http.impl;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpResponse;
import org.apache.http.protocol.HttpContext;

@Deprecated
public class NoConnectionReuseStrategy
  implements ConnectionReuseStrategy
{
  public NoConnectionReuseStrategy()
  {
    throw new RuntimeException("Stub!");
  }
  
  public boolean keepAlive(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\http\impl\NoConnectionReuseStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */