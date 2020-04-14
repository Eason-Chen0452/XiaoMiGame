package org.apache.http.conn.scheme;

import java.io.IOException;
import java.net.InetAddress;

@Deprecated
public abstract interface HostNameResolver
{
  public abstract InetAddress resolve(String paramString)
    throws IOException;
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\http\conn\scheme\HostNameResolver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */