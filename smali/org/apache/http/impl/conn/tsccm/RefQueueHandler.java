package org.apache.http.impl.conn.tsccm;

import java.lang.ref.Reference;

@Deprecated
public abstract interface RefQueueHandler
{
  public abstract void handleReference(Reference<?> paramReference);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\http\impl\conn\tsccm\RefQueueHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */