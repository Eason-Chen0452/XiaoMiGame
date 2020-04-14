package com.aonesoft.lib;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.UUID;

public class AoneInstallation
{
  private static final String INSTALLATION = "INSTALLATION";
  private static final String INSTALLATION_PATH = "/AOne";
  private static String sID = null;
  
  /* Error */
  public static String id(android.content.Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 15	com/aonesoft/lib/AoneInstallation:sID	Ljava/lang/String;
    //   6: ifnonnull +79 -> 85
    //   9: new 25	java/lang/StringBuilder
    //   12: dup
    //   13: aload_0
    //   14: invokevirtual 31	android/content/Context:getFilesDir	()Ljava/io/File;
    //   17: invokevirtual 37	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   20: invokestatic 43	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   23: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   26: ldc 10
    //   28: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: astore_0
    //   35: new 33	java/io/File
    //   38: dup
    //   39: aload_0
    //   40: invokespecial 54	java/io/File:<init>	(Ljava/lang/String;)V
    //   43: astore_1
    //   44: aload_1
    //   45: invokevirtual 58	java/io/File:exists	()Z
    //   48: ifne +8 -> 56
    //   51: aload_1
    //   52: invokevirtual 61	java/io/File:mkdir	()Z
    //   55: pop
    //   56: new 33	java/io/File
    //   59: dup
    //   60: aload_0
    //   61: ldc 7
    //   63: invokespecial 64	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   66: astore_0
    //   67: aload_0
    //   68: invokevirtual 58	java/io/File:exists	()Z
    //   71: ifne +7 -> 78
    //   74: aload_0
    //   75: invokestatic 68	com/aonesoft/lib/AoneInstallation:writeInstallationFile	(Ljava/io/File;)V
    //   78: aload_0
    //   79: invokestatic 72	com/aonesoft/lib/AoneInstallation:readInstallationFile	(Ljava/io/File;)Ljava/lang/String;
    //   82: putstatic 15	com/aonesoft/lib/AoneInstallation:sID	Ljava/lang/String;
    //   85: getstatic 15	com/aonesoft/lib/AoneInstallation:sID	Ljava/lang/String;
    //   88: astore_0
    //   89: ldc 2
    //   91: monitorexit
    //   92: aload_0
    //   93: areturn
    //   94: astore_0
    //   95: new 74	java/lang/RuntimeException
    //   98: dup
    //   99: aload_0
    //   100: invokespecial 77	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   103: athrow
    //   104: astore_0
    //   105: ldc 2
    //   107: monitorexit
    //   108: aload_0
    //   109: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	110	0	paramContext	android.content.Context
    //   43	9	1	localFile	File
    // Exception table:
    //   from	to	target	type
    //   67	78	94	java/lang/Exception
    //   78	85	94	java/lang/Exception
    //   3	56	104	finally
    //   56	67	104	finally
    //   67	78	104	finally
    //   78	85	104	finally
    //   85	89	104	finally
    //   95	104	104	finally
  }
  
  private static String readInstallationFile(File paramFile)
    throws IOException
  {
    paramFile = new RandomAccessFile(paramFile, "r");
    byte[] arrayOfByte = new byte[(int)paramFile.length()];
    paramFile.readFully(arrayOfByte);
    paramFile.close();
    return new String(arrayOfByte);
  }
  
  private static void writeInstallationFile(File paramFile)
    throws IOException
  {
    paramFile = new FileOutputStream(paramFile);
    paramFile.write(UUID.randomUUID().toString().getBytes());
    paramFile.close();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneInstallation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */