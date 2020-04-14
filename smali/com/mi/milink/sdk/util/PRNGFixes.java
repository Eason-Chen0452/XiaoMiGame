package com.mi.milink.sdk.util;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Process;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;
import java.security.Security;

public final class PRNGFixes
{
  private static final byte[] BUILD_FINGERPRINT_AND_DEVICE_SERIAL = ;
  private static final int VERSION_CODE_JELLY_BEAN = 16;
  private static final int VERSION_CODE_JELLY_BEAN_MR2 = 18;
  
  public static void apply()
  {
    applyOpenSSLFix();
    installLinuxPRNGSecureRandom();
  }
  
  private static void applyOpenSSLFix()
    throws SecurityException
  {
    if ((Build.VERSION.SDK_INT < 16) || (Build.VERSION.SDK_INT > 18)) {}
    for (;;)
    {
      return;
      try
      {
        Class.forName("org.apache.harmony.xnet.provider.jsse.NativeCrypto").getMethod("RAND_seed", new Class[] { byte[].class }).invoke(null, new Object[] { generateSeed() });
        int i = ((Integer)Class.forName("org.apache.harmony.xnet.provider.jsse.NativeCrypto").getMethod("RAND_load_file", new Class[] { String.class, Long.TYPE }).invoke(null, new Object[] { "/dev/urandom", Integer.valueOf(1024) })).intValue();
        if (i == 1024) {
          continue;
        }
        throw new IOException("Unexpected number of bytes read from Linux PRNG: " + i);
      }
      catch (Exception localException)
      {
        throw new SecurityException("Failed to seed OpenSSL PRNG", localException);
      }
    }
  }
  
  private static byte[] generateSeed()
  {
    try
    {
      Object localObject = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream = new DataOutputStream((OutputStream)localObject);
      localDataOutputStream.writeLong(System.currentTimeMillis());
      localDataOutputStream.writeLong(System.nanoTime());
      localDataOutputStream.writeInt(Process.myPid());
      localDataOutputStream.writeInt(Process.myUid());
      localDataOutputStream.write(BUILD_FINGERPRINT_AND_DEVICE_SERIAL);
      localDataOutputStream.close();
      localObject = ((ByteArrayOutputStream)localObject).toByteArray();
      return (byte[])localObject;
    }
    catch (IOException localIOException)
    {
      throw new SecurityException("Failed to generate seed", localIOException);
    }
  }
  
  private static byte[] getBuildFingerprintAndDeviceSerial()
  {
    Object localObject = new StringBuilder();
    String str = Build.FINGERPRINT;
    if (str != null) {
      ((StringBuilder)localObject).append(str);
    }
    str = getDeviceSerialNumber();
    if (str != null) {
      ((StringBuilder)localObject).append(str);
    }
    try
    {
      localObject = ((StringBuilder)localObject).toString().getBytes("UTF-8");
      return (byte[])localObject;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException("UTF-8 encoding not supported");
    }
  }
  
  private static String getDeviceSerialNumber()
  {
    try
    {
      String str = (String)Build.class.getField("SERIAL").get(null);
      return str;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private static void installLinuxPRNGSecureRandom()
    throws SecurityException
  {
    if (Build.VERSION.SDK_INT > 18) {}
    for (;;)
    {
      return;
      Object localObject = Security.getProviders("SecureRandom.SHA1PRNG");
      if ((localObject == null) || (localObject.length <= 0) || (!LinuxPRNGSecureRandomProvider.class.equals(localObject[0].getClass()))) {
        Security.insertProviderAt(new LinuxPRNGSecureRandomProvider(), 1);
      }
      localObject = new SecureRandom();
      if (!LinuxPRNGSecureRandomProvider.class.equals(((SecureRandom)localObject).getProvider().getClass())) {
        throw new SecurityException("new SecureRandom() backed by wrong Provider: " + ((SecureRandom)localObject).getProvider().getClass());
      }
      try
      {
        localObject = SecureRandom.getInstance("SHA1PRNG");
        if (LinuxPRNGSecureRandomProvider.class.equals(((SecureRandom)localObject).getProvider().getClass())) {
          continue;
        }
        throw new SecurityException("SecureRandom.g(\"SHA1PRNG\") backed by wrong Provider: " + ((SecureRandom)localObject).getProvider().getClass());
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        throw new SecurityException("SHA1PRNG not available", localNoSuchAlgorithmException);
      }
    }
  }
  
  public static class LinuxPRNGSecureRandom
    extends SecureRandomSpi
  {
    private static final File URANDOM_FILE = new File("/dev/urandom");
    private static final Object sLock = new Object();
    private static DataInputStream sUrandomIn;
    private static OutputStream sUrandomOut;
    private boolean mSeeded;
    
    private DataInputStream getUrandomInputStream()
    {
      synchronized (sLock)
      {
        DataInputStream localDataInputStream = sUrandomIn;
        if (localDataInputStream == null) {}
        try
        {
          sUrandomIn = new DataInputStream(new FileInputStream(URANDOM_FILE));
          localDataInputStream = sUrandomIn;
          return localDataInputStream;
        }
        catch (IOException localIOException)
        {
          throw new SecurityException("Failed to open " + URANDOM_FILE + " for reading", localIOException);
        }
      }
    }
    
    private OutputStream getUrandomOutputStream()
      throws IOException
    {
      synchronized (sLock)
      {
        if (sUrandomOut == null) {
          sUrandomOut = new FileOutputStream(URANDOM_FILE);
        }
        OutputStream localOutputStream = sUrandomOut;
        return localOutputStream;
      }
    }
    
    protected byte[] engineGenerateSeed(int paramInt)
    {
      byte[] arrayOfByte = new byte[paramInt];
      engineNextBytes(arrayOfByte);
      return arrayOfByte;
    }
    
    /* Error */
    protected void engineNextBytes(byte[] paramArrayOfByte)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 92	com/mi/milink/sdk/util/PRNGFixes$LinuxPRNGSecureRandom:mSeeded	Z
      //   4: ifne +10 -> 14
      //   7: aload_0
      //   8: invokestatic 96	com/mi/milink/sdk/util/PRNGFixes:access$000	()[B
      //   11: invokevirtual 99	com/mi/milink/sdk/util/PRNGFixes$LinuxPRNGSecureRandom:engineSetSeed	([B)V
      //   14: getstatic 35	com/mi/milink/sdk/util/PRNGFixes$LinuxPRNGSecureRandom:sLock	Ljava/lang/Object;
      //   17: astore_2
      //   18: aload_2
      //   19: monitorenter
      //   20: aload_0
      //   21: invokespecial 101	com/mi/milink/sdk/util/PRNGFixes$LinuxPRNGSecureRandom:getUrandomInputStream	()Ljava/io/DataInputStream;
      //   24: astore_3
      //   25: aload_2
      //   26: monitorexit
      //   27: aload_3
      //   28: monitorenter
      //   29: aload_3
      //   30: aload_1
      //   31: invokevirtual 104	java/io/DataInputStream:readFully	([B)V
      //   34: aload_3
      //   35: monitorexit
      //   36: return
      //   37: astore_1
      //   38: aload_2
      //   39: monitorexit
      //   40: aload_1
      //   41: athrow
      //   42: astore_1
      //   43: new 55	java/lang/SecurityException
      //   46: dup
      //   47: new 57	java/lang/StringBuilder
      //   50: dup
      //   51: ldc 106
      //   53: invokespecial 60	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   56: getstatic 29	com/mi/milink/sdk/util/PRNGFixes$LinuxPRNGSecureRandom:URANDOM_FILE	Ljava/io/File;
      //   59: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   62: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   65: aload_1
      //   66: invokespecial 76	java/lang/SecurityException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
      //   69: athrow
      //   70: astore_1
      //   71: aload_3
      //   72: monitorexit
      //   73: aload_1
      //   74: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	75	0	this	LinuxPRNGSecureRandom
      //   0	75	1	paramArrayOfByte	byte[]
      //   24	48	3	localDataInputStream	DataInputStream
      // Exception table:
      //   from	to	target	type
      //   20	27	37	finally
      //   38	40	37	finally
      //   14	20	42	java/io/IOException
      //   27	29	42	java/io/IOException
      //   40	42	42	java/io/IOException
      //   73	75	42	java/io/IOException
      //   29	36	70	finally
      //   71	73	70	finally
    }
    
    /* Error */
    protected void engineSetSeed(byte[] paramArrayOfByte)
    {
      // Byte code:
      //   0: getstatic 35	com/mi/milink/sdk/util/PRNGFixes$LinuxPRNGSecureRandom:sLock	Ljava/lang/Object;
      //   3: astore_2
      //   4: aload_2
      //   5: monitorenter
      //   6: aload_0
      //   7: invokespecial 108	com/mi/milink/sdk/util/PRNGFixes$LinuxPRNGSecureRandom:getUrandomOutputStream	()Ljava/io/OutputStream;
      //   10: astore_3
      //   11: aload_2
      //   12: monitorexit
      //   13: aload_3
      //   14: aload_1
      //   15: invokevirtual 113	java/io/OutputStream:write	([B)V
      //   18: aload_3
      //   19: invokevirtual 116	java/io/OutputStream:flush	()V
      //   22: aload_0
      //   23: iconst_1
      //   24: putfield 92	com/mi/milink/sdk/util/PRNGFixes$LinuxPRNGSecureRandom:mSeeded	Z
      //   27: return
      //   28: astore_1
      //   29: aload_2
      //   30: monitorexit
      //   31: aload_1
      //   32: athrow
      //   33: astore_1
      //   34: ldc 6
      //   36: invokevirtual 121	java/lang/Class:getSimpleName	()Ljava/lang/String;
      //   39: new 57	java/lang/StringBuilder
      //   42: dup
      //   43: ldc 123
      //   45: invokespecial 60	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   48: getstatic 29	com/mi/milink/sdk/util/PRNGFixes$LinuxPRNGSecureRandom:URANDOM_FILE	Ljava/io/File;
      //   51: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   54: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   57: invokestatic 129	com/mi/milink/sdk/base/debug/CustomLogcat:w	(Ljava/lang/String;Ljava/lang/String;)V
      //   60: aload_0
      //   61: iconst_1
      //   62: putfield 92	com/mi/milink/sdk/util/PRNGFixes$LinuxPRNGSecureRandom:mSeeded	Z
      //   65: return
      //   66: astore_1
      //   67: aload_0
      //   68: iconst_1
      //   69: putfield 92	com/mi/milink/sdk/util/PRNGFixes$LinuxPRNGSecureRandom:mSeeded	Z
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	LinuxPRNGSecureRandom
      //   0	74	1	paramArrayOfByte	byte[]
      //   10	9	3	localOutputStream	OutputStream
      // Exception table:
      //   from	to	target	type
      //   6	13	28	finally
      //   29	31	28	finally
      //   0	6	33	java/io/IOException
      //   13	22	33	java/io/IOException
      //   31	33	33	java/io/IOException
      //   0	6	66	finally
      //   13	22	66	finally
      //   31	33	66	finally
      //   34	60	66	finally
    }
  }
  
  private static class LinuxPRNGSecureRandomProvider
    extends Provider
  {
    public LinuxPRNGSecureRandomProvider()
    {
      super(1.0D, "A Linux-specific random number provider that uses /dev/urandom");
      put("SecureRandom.SHA1PRNG", PRNGFixes.LinuxPRNGSecureRandom.class.getName());
      put("SecureRandom.SHA1PRNG ImplementedIn", "Software");
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\util\PRNGFixes.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */