package com.mi.milink.sdk.base.data;

import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class SafeStringQueue
  implements Iterable<String>
{
  private static final String TAG = SafeStringQueue.class.getSimpleName();
  private ConcurrentLinkedQueue<String> bufferQueue = null;
  private AtomicInteger bufferSize = null;
  
  public int addToBuffer(String paramString)
  {
    int i = paramString.length();
    this.bufferQueue.add(paramString);
    return this.bufferSize.addAndGet(i);
  }
  
  public void clear()
  {
    this.bufferQueue.clear();
    this.bufferSize.set(0);
  }
  
  public int getBufferSize()
  {
    return this.bufferSize.get();
  }
  
  public Iterator<String> iterator()
  {
    return this.bufferQueue.iterator();
  }
  
  public void writeAndFlush(Writer paramWriter, char[] paramArrayOfChar)
    throws IOException
  {
    if ((paramWriter == null) || (paramArrayOfChar == null) || (paramArrayOfChar.length == 0)) {
      return;
    }
    int n = paramArrayOfChar.length;
    for (;;)
    {
      int i;
      int k;
      int i1;
      try
      {
        Iterator localIterator = iterator();
        int j = 0;
        i = n;
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          k = str.length();
          int m = 0;
          break label151;
          str.getChars(m, m + i1, paramArrayOfChar, j);
          i -= i1;
          j += i1;
          k -= i1;
          m = i1 + m;
          if (i == 0)
          {
            paramWriter.write(paramArrayOfChar, 0, n);
            j = 0;
            i = n;
          }
        }
        else
        {
          if (j > 0) {
            paramWriter.write(paramArrayOfChar, 0, j);
          }
          paramWriter.flush();
          return;
        }
      }
      catch (Exception paramWriter)
      {
        paramWriter.printStackTrace();
        return;
      }
      label151:
      if (k > 0) {
        if (i > k) {
          i1 = k;
        } else {
          i1 = i;
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\data\SafeStringQueue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */