package org.apache.http;

import org.apache.http.protocol.HttpContext;

@Deprecated
public abstract interface HttpResponseFactory
{
  public abstract HttpResponse newHttpResponse(ProtocolVersion paramProtocolVersion, int paramInt, HttpContext paramHttpContext);
  
  public abstract HttpResponse newHttpResponse(StatusLine paramStatusLine, HttpContext paramHttpContext);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\http\HttpResponseFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */