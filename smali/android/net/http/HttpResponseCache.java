package android.net.http;

import java.io.File;
import java.io.IOException;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.ResponseCache;
import java.net.URI;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

public final class HttpResponseCache
  extends ResponseCache
{
  HttpResponseCache()
  {
    throw new RuntimeException("Stub!");
  }
  
  public static HttpResponseCache getInstalled()
  {
    throw new RuntimeException("Stub!");
  }
  
  public static HttpResponseCache install(File paramFile, long paramLong)
    throws IOException
  {
    try
    {
      throw new RuntimeException("Stub!");
    }
    finally {}
  }
  
  public void close()
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void delete()
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public void flush()
  {
    throw new RuntimeException("Stub!");
  }
  
  public CacheResponse get(URI paramURI, String paramString, Map<String, List<String>> paramMap)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public int getHitCount()
  {
    throw new RuntimeException("Stub!");
  }
  
  public int getNetworkCount()
  {
    throw new RuntimeException("Stub!");
  }
  
  public int getRequestCount()
  {
    throw new RuntimeException("Stub!");
  }
  
  public long maxSize()
  {
    throw new RuntimeException("Stub!");
  }
  
  public CacheRequest put(URI paramURI, URLConnection paramURLConnection)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public long size()
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\android\net\http\HttpResponseCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */