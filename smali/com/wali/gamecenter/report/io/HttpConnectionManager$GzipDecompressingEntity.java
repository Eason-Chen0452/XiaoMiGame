package com.wali.gamecenter.report.io;

import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

public class HttpConnectionManager$GzipDecompressingEntity
  extends HttpEntityWrapper
{
  public HttpConnectionManager$GzipDecompressingEntity(HttpEntity paramHttpEntity)
  {
    super(paramHttpEntity);
  }
  
  public InputStream getContent()
  {
    return new GZIPInputStream(this.wrappedEntity.getContent());
  }
  
  public long getContentLength()
  {
    return -1L;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\io\HttpConnectionManager$GzipDecompressingEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */