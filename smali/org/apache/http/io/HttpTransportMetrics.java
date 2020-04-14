package org.apache.http.io;

@Deprecated
public abstract interface HttpTransportMetrics
{
  public abstract long getBytesTransferred();
  
  public abstract void reset();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\http\io\HttpTransportMetrics.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */