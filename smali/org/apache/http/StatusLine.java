package org.apache.http;

@Deprecated
public abstract interface StatusLine
{
  public abstract ProtocolVersion getProtocolVersion();
  
  public abstract String getReasonPhrase();
  
  public abstract int getStatusCode();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\http\StatusLine.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */