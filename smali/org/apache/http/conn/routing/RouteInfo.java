package org.apache.http.conn.routing;

import java.net.InetAddress;
import org.apache.http.HttpHost;

@Deprecated
public abstract interface RouteInfo
{
  public abstract int getHopCount();
  
  public abstract HttpHost getHopTarget(int paramInt);
  
  public abstract LayerType getLayerType();
  
  public abstract InetAddress getLocalAddress();
  
  public abstract HttpHost getProxyHost();
  
  public abstract HttpHost getTargetHost();
  
  public abstract TunnelType getTunnelType();
  
  public abstract boolean isLayered();
  
  public abstract boolean isSecure();
  
  public abstract boolean isTunnelled();
  
  public static enum LayerType
  {
    LAYERED,  PLAIN;
    
    private LayerType() {}
  }
  
  public static enum TunnelType
  {
    PLAIN,  TUNNELLED;
    
    private TunnelType() {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\http\conn\routing\RouteInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */