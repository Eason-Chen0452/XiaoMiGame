package org.apache.http;

import java.util.Iterator;

@Deprecated
public abstract interface HeaderIterator
  extends Iterator
{
  public abstract boolean hasNext();
  
  public abstract Header nextHeader();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\http\HeaderIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */