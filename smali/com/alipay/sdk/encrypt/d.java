package com.alipay.sdk.encrypt;

import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;

public final class d
{
  private static final String a = "RSA";
  
  /* Error */
  public static byte[] a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: new 20	java/security/spec/X509EncodedKeySpec
    //   6: dup
    //   7: aload_1
    //   8: invokestatic 25	com/alipay/sdk/encrypt/a:a	(Ljava/lang/String;)[B
    //   11: invokespecial 28	java/security/spec/X509EncodedKeySpec:<init>	([B)V
    //   14: astore_1
    //   15: ldc 8
    //   17: invokestatic 34	java/security/KeyFactory:getInstance	(Ljava/lang/String;)Ljava/security/KeyFactory;
    //   20: aload_1
    //   21: invokevirtual 38	java/security/KeyFactory:generatePublic	(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    //   24: astore 6
    //   26: ldc 40
    //   28: invokestatic 45	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   31: astore_1
    //   32: aload_1
    //   33: iconst_1
    //   34: aload 6
    //   36: invokevirtual 49	javax/crypto/Cipher:init	(ILjava/security/Key;)V
    //   39: aload_0
    //   40: ldc 51
    //   42: invokevirtual 56	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   45: astore 6
    //   47: aload_1
    //   48: invokevirtual 60	javax/crypto/Cipher:getBlockSize	()I
    //   51: istore 4
    //   53: new 62	java/io/ByteArrayOutputStream
    //   56: dup
    //   57: invokespecial 63	java/io/ByteArrayOutputStream:<init>	()V
    //   60: astore_0
    //   61: iconst_0
    //   62: istore_2
    //   63: iload_2
    //   64: aload 6
    //   66: arraylength
    //   67: if_icmpge +39 -> 106
    //   70: aload 6
    //   72: arraylength
    //   73: iload_2
    //   74: isub
    //   75: iload 4
    //   77: if_icmpge +95 -> 172
    //   80: aload 6
    //   82: arraylength
    //   83: iload_2
    //   84: isub
    //   85: istore_3
    //   86: aload_0
    //   87: aload_1
    //   88: aload 6
    //   90: iload_2
    //   91: iload_3
    //   92: invokevirtual 67	javax/crypto/Cipher:doFinal	([BII)[B
    //   95: invokevirtual 70	java/io/ByteArrayOutputStream:write	([B)V
    //   98: iload_2
    //   99: iload 4
    //   101: iadd
    //   102: istore_2
    //   103: goto -40 -> 63
    //   106: aload_0
    //   107: invokevirtual 74	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   110: astore_1
    //   111: aload_0
    //   112: invokevirtual 77	java/io/ByteArrayOutputStream:close	()V
    //   115: aload_1
    //   116: areturn
    //   117: astore_0
    //   118: aconst_null
    //   119: astore_0
    //   120: aload 5
    //   122: astore_1
    //   123: aload_0
    //   124: ifnull -9 -> 115
    //   127: aload_0
    //   128: invokevirtual 77	java/io/ByteArrayOutputStream:close	()V
    //   131: aconst_null
    //   132: areturn
    //   133: astore_0
    //   134: aconst_null
    //   135: areturn
    //   136: astore_0
    //   137: aconst_null
    //   138: astore_1
    //   139: aload_1
    //   140: ifnull +7 -> 147
    //   143: aload_1
    //   144: invokevirtual 77	java/io/ByteArrayOutputStream:close	()V
    //   147: aload_0
    //   148: athrow
    //   149: astore_0
    //   150: aload_1
    //   151: areturn
    //   152: astore_1
    //   153: goto -6 -> 147
    //   156: astore_1
    //   157: aload_0
    //   158: astore 5
    //   160: aload_1
    //   161: astore_0
    //   162: aload 5
    //   164: astore_1
    //   165: goto -26 -> 139
    //   168: astore_1
    //   169: goto -49 -> 120
    //   172: iload 4
    //   174: istore_3
    //   175: goto -89 -> 86
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	178	0	paramString1	String
    //   0	178	1	paramString2	String
    //   62	41	2	i	int
    //   85	90	3	j	int
    //   51	122	4	k	int
    //   1	162	5	str	String
    //   24	65	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	61	117	java/lang/Exception
    //   127	131	133	java/io/IOException
    //   3	61	136	finally
    //   111	115	149	java/io/IOException
    //   143	147	152	java/io/IOException
    //   63	86	156	finally
    //   86	98	156	finally
    //   106	111	156	finally
    //   63	86	168	java/lang/Exception
    //   86	98	168	java/lang/Exception
    //   106	111	168	java/lang/Exception
  }
  
  private static PublicKey b(String paramString1, String paramString2)
    throws NoSuchAlgorithmException, Exception
  {
    paramString2 = new X509EncodedKeySpec(a.a(paramString2));
    return KeyFactory.getInstance(paramString1).generatePublic(paramString2);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\encrypt\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */