package org.apache.http.impl.entity;

import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.entity.ContentLengthStrategy;

@Deprecated
public class LaxContentLengthStrategy
  implements ContentLengthStrategy
{
  public LaxContentLengthStrategy()
  {
    throw new RuntimeException("Stub!");
  }
  
  public long determineLength(HttpMessage paramHttpMessage)
    throws HttpException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\http\impl\entity\LaxContentLengthStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */