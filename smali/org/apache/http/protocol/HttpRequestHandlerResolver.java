package org.apache.http.protocol;

@Deprecated
public abstract interface HttpRequestHandlerResolver
{
  public abstract HttpRequestHandler lookup(String paramString);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\http\protocol\HttpRequestHandlerResolver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */