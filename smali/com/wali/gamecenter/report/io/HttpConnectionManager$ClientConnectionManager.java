package com.wali.gamecenter.report.io;

import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpParams;

class HttpConnectionManager$ClientConnectionManager
  extends ThreadSafeClientConnManager
{
  public HttpConnectionManager$ClientConnectionManager(HttpParams paramHttpParams, SchemeRegistry paramSchemeRegistry)
  {
    super(paramHttpParams, paramSchemeRegistry);
  }
  
  public ClientConnectionRequest requestConnection(HttpRoute paramHttpRoute, Object paramObject)
  {
    HttpConnectionManager.IdleConnectionMonitorThread.ensureRunning(this, 15, 30);
    getConnectionsInPool();
    return super.requestConnection(paramHttpRoute, paramObject);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\io\HttpConnectionManager$ClientConnectionManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */