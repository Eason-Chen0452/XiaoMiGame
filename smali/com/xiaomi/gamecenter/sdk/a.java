package com.xiaomi.gamecenter.sdk;

import android.content.Context;
import android.text.TextUtils;
import cn.com.wali.basetool.exception.EInvalidException;
import cn.com.wali.basetool.utils.AESEncryption;
import cn.com.wali.basetool.utils.MD5;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class a
{
  private static a a;
  private Context b;
  private String c;
  private File d;
  private ConcurrentHashMap<String, String> e = new ConcurrentHashMap();
  
  private a(Context paramContext, File paramFile)
    throws EInvalidException
  {
    this.b = paramContext;
    this.c = "walixiaomigamece";
    a(paramFile);
    this.d = paramFile;
  }
  
  public static a a()
  {
    return a;
  }
  
  public static void a(Context paramContext, File paramFile)
    throws EInvalidException
  {
    if (a == null) {
      a = new a(paramContext, paramFile);
    }
  }
  
  private void a(File paramFile)
    throws EInvalidException
  {
    int j = 0;
    for (;;)
    {
      int i;
      byte[] arrayOfByte;
      try
      {
        localObject = new RandomAccessFile(paramFile, "r");
        paramFile = new byte[(int)((RandomAccessFile)localObject).length()];
        ((RandomAccessFile)localObject).readFully(paramFile);
        ((RandomAccessFile)localObject).close();
        if (paramFile != null)
        {
          i = paramFile.length;
          if (i >= 16) {}
        }
        else
        {
          return;
        }
      }
      catch (Exception paramFile)
      {
        paramFile = null;
        continue;
        Object localObject = new byte[16];
        arrayOfByte = new byte[paramFile.length - 16];
        System.arraycopy(paramFile, 0, localObject, 0, 16);
        System.arraycopy(paramFile, 16, arrayOfByte, 0, paramFile.length - 16);
        paramFile = MD5.b(arrayOfByte);
        i = 0;
        if (i >= 16) {
          break label141;
        }
        if (localObject[i] != paramFile[i]) {
          throw new EInvalidException();
        }
      }
      finally {}
      i += 1;
      continue;
      try
      {
        label141:
        paramFile = AESEncryption.b(arrayOfByte, this.c.getBytes());
        paramFile = new DataInputStream(new ByteArrayInputStream(paramFile));
        try
        {
          int k = paramFile.readShort();
          i = j;
          while (i < k)
          {
            this.e.put(paramFile.readUTF(), paramFile.readUTF());
            i += 1;
          }
        }
        catch (Exception paramFile) {}
      }
      catch (Exception paramFile) {}
    }
  }
  
  /* Error */
  private String b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 27	com/xiaomi/gamecenter/sdk/a:e	Ljava/util/concurrent/ConcurrentHashMap;
    //   6: aload_1
    //   7: invokevirtual 114	java/util/concurrent/ConcurrentHashMap:containsKey	(Ljava/lang/Object;)Z
    //   10: istore_3
    //   11: iload_3
    //   12: ifne +7 -> 19
    //   15: aload_0
    //   16: monitorexit
    //   17: aload_2
    //   18: areturn
    //   19: aload_0
    //   20: aload_1
    //   21: invokevirtual 117	com/xiaomi/gamecenter/sdk/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   24: astore_2
    //   25: goto -10 -> 15
    //   28: astore_1
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_1
    //   32: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	this	a
    //   0	33	1	paramString1	String
    //   0	33	2	paramString2	String
    //   10	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	11	28	finally
    //   19	25	28	finally
  }
  
  public final String a(String paramString)
  {
    try
    {
      paramString = (String)this.e.get(paramString);
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public final void a(String paramString1, String paramString2)
  {
    try
    {
      if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {
        throw new IllegalArgumentException("key or value is null ");
      }
    }
    finally
    {
      throw paramString1;
    }
  }
  
  public final void b()
  {
    for (;;)
    {
      try
      {
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        localObject2 = new DataOutputStream(localByteArrayOutputStream);
        try
        {
          ((DataOutputStream)localObject2).writeShort(this.e.size());
          localObject3 = this.e.entrySet().iterator();
          if (!((Iterator)localObject3).hasNext()) {
            continue;
          }
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject3).next();
          ((DataOutputStream)localObject2).writeUTF((String)localEntry.getKey());
          ((DataOutputStream)localObject2).writeUTF((String)localEntry.getValue());
          continue;
        }
        catch (Exception localException1)
        {
          localException1.printStackTrace();
        }
      }
      finally
      {
        try
        {
          Object localObject3;
          byte[] arrayOfByte = AESEncryption.a(arrayOfByte, this.c.getBytes());
          Object localObject2 = MD5.b(arrayOfByte);
          try
          {
            localObject3 = new FileOutputStream(this.d);
            ((FileOutputStream)localObject3).write((byte[])localObject2, 0, 16);
            ((FileOutputStream)localObject3).write(arrayOfByte);
            ((FileOutputStream)localObject3).close();
          }
          catch (Exception localException2) {}
        }
        catch (Exception localException3) {}
        localObject1 = finally;
      }
      return;
      arrayOfByte = localException1.toByteArray();
    }
  }
  
  /* Error */
  public final boolean b(String paramString)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 27	com/xiaomi/gamecenter/sdk/a:e	Ljava/util/concurrent/ConcurrentHashMap;
    //   8: aload_1
    //   9: invokevirtual 114	java/util/concurrent/ConcurrentHashMap:containsKey	(Ljava/lang/Object;)Z
    //   12: istore_3
    //   13: iload_3
    //   14: ifne +7 -> 21
    //   17: aload_0
    //   18: monitorexit
    //   19: iload_2
    //   20: ireturn
    //   21: aload_0
    //   22: aload_1
    //   23: ldc -52
    //   25: invokespecial 206	com/xiaomi/gamecenter/sdk/a:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   28: astore_1
    //   29: aload_1
    //   30: invokestatic 128	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   33: ifne -16 -> 17
    //   36: aload_1
    //   37: invokestatic 211	java/lang/Boolean:parseBoolean	(Ljava/lang/String;)Z
    //   40: istore_2
    //   41: goto -24 -> 17
    //   44: astore_1
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_1
    //   48: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	49	0	this	a
    //   0	49	1	paramString	String
    //   1	40	2	bool1	boolean
    //   12	2	3	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   4	13	44	finally
    //   21	29	44	finally
    //   29	41	44	finally
  }
  
  public final void c(String paramString)
  {
    try
    {
      this.e.put(paramString, "false");
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */