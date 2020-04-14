package org.apache.http.conn.params;

import org.apache.http.conn.routing.HttpRoute;

@Deprecated
public abstract interface ConnPerRoute
{
  public abstract int getMaxForRoute(HttpRoute paramHttpRoute);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\http\conn\params\ConnPerRoute.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */