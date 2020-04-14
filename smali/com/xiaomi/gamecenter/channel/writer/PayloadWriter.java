package com.xiaomi.gamecenter.channel.writer;

import com.xiaomi.gamecenter.channel.common.util.AESEncryption;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Map;

public final class PayloadWriter
{
  /* Error */
  static void handleApkSigningBlock(File paramFile, a parama, boolean paramBoolean)
    throws IOException, SignatureNotFoundException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 17
    //   3: aconst_null
    //   4: astore 16
    //   6: new 20	java/io/RandomAccessFile
    //   9: dup
    //   10: aload_0
    //   11: ldc 22
    //   13: invokespecial 25	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   16: astore 15
    //   18: aload 15
    //   20: invokevirtual 29	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   23: astore 17
    //   25: aload 17
    //   27: invokestatic 34	com/xiaomi/gamecenter/channel/writer/c:a	(Ljava/nio/channels/FileChannel;)J
    //   30: lstore 5
    //   32: iconst_4
    //   33: invokestatic 40	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   36: astore 16
    //   38: aload 16
    //   40: getstatic 46	java/nio/ByteOrder:LITTLE_ENDIAN	Ljava/nio/ByteOrder;
    //   43: invokevirtual 50	java/nio/ByteBuffer:order	(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    //   46: pop
    //   47: aload 17
    //   49: aload 17
    //   51: invokevirtual 56	java/nio/channels/FileChannel:size	()J
    //   54: lload 5
    //   56: lsub
    //   57: ldc2_w 57
    //   60: lsub
    //   61: invokevirtual 62	java/nio/channels/FileChannel:position	(J)Ljava/nio/channels/FileChannel;
    //   64: pop
    //   65: aload 17
    //   67: aload 16
    //   69: invokevirtual 66	java/nio/channels/FileChannel:read	(Ljava/nio/ByteBuffer;)I
    //   72: pop
    //   73: aload 16
    //   75: iconst_0
    //   76: invokevirtual 70	java/nio/ByteBuffer:getInt	(I)I
    //   79: i2l
    //   80: lstore 7
    //   82: lload 7
    //   84: ldc2_w 71
    //   87: lcmp
    //   88: ifge +62 -> 150
    //   91: new 18	com/xiaomi/gamecenter/channel/writer/SignatureNotFoundException
    //   94: dup
    //   95: new 74	java/lang/StringBuilder
    //   98: dup
    //   99: ldc 76
    //   101: invokespecial 79	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   104: lload 7
    //   106: invokevirtual 83	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   109: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: invokespecial 88	com/xiaomi/gamecenter/channel/writer/SignatureNotFoundException:<init>	(Ljava/lang/String;)V
    //   115: athrow
    //   116: astore 16
    //   118: aload 17
    //   120: astore_0
    //   121: aload 15
    //   123: astore_1
    //   124: aload_0
    //   125: astore 15
    //   127: aload 16
    //   129: astore_0
    //   130: aload 15
    //   132: ifnull +8 -> 140
    //   135: aload 15
    //   137: invokevirtual 91	java/nio/channels/FileChannel:close	()V
    //   140: aload_1
    //   141: ifnull +7 -> 148
    //   144: aload_1
    //   145: invokevirtual 92	java/io/RandomAccessFile:close	()V
    //   148: aload_0
    //   149: athrow
    //   150: aload 17
    //   152: lload 7
    //   154: ldc2_w 93
    //   157: lsub
    //   158: invokevirtual 62	java/nio/channels/FileChannel:position	(J)Ljava/nio/channels/FileChannel;
    //   161: pop
    //   162: bipush 24
    //   164: invokestatic 40	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   167: astore 16
    //   169: aload 17
    //   171: aload 16
    //   173: invokevirtual 66	java/nio/channels/FileChannel:read	(Ljava/nio/ByteBuffer;)I
    //   176: pop
    //   177: aload 16
    //   179: getstatic 46	java/nio/ByteOrder:LITTLE_ENDIAN	Ljava/nio/ByteOrder;
    //   182: invokevirtual 50	java/nio/ByteBuffer:order	(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    //   185: pop
    //   186: aload 16
    //   188: bipush 8
    //   190: invokevirtual 98	java/nio/ByteBuffer:getLong	(I)J
    //   193: ldc2_w 99
    //   196: lcmp
    //   197: ifne +17 -> 214
    //   200: aload 16
    //   202: bipush 16
    //   204: invokevirtual 98	java/nio/ByteBuffer:getLong	(I)J
    //   207: ldc2_w 101
    //   210: lcmp
    //   211: ifeq +13 -> 224
    //   214: new 18	com/xiaomi/gamecenter/channel/writer/SignatureNotFoundException
    //   217: dup
    //   218: ldc 104
    //   220: invokespecial 88	com/xiaomi/gamecenter/channel/writer/SignatureNotFoundException:<init>	(Ljava/lang/String;)V
    //   223: athrow
    //   224: aload 16
    //   226: iconst_0
    //   227: invokevirtual 98	java/nio/ByteBuffer:getLong	(I)J
    //   230: lstore 9
    //   232: lload 9
    //   234: aload 16
    //   236: invokevirtual 108	java/nio/ByteBuffer:capacity	()I
    //   239: i2l
    //   240: lcmp
    //   241: iflt +12 -> 253
    //   244: lload 9
    //   246: ldc2_w 109
    //   249: lcmp
    //   250: ifle +28 -> 278
    //   253: new 18	com/xiaomi/gamecenter/channel/writer/SignatureNotFoundException
    //   256: dup
    //   257: new 74	java/lang/StringBuilder
    //   260: dup
    //   261: ldc 112
    //   263: invokespecial 79	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   266: lload 9
    //   268: invokevirtual 83	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   271: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   274: invokespecial 88	com/xiaomi/gamecenter/channel/writer/SignatureNotFoundException:<init>	(Ljava/lang/String;)V
    //   277: athrow
    //   278: ldc2_w 113
    //   281: lload 9
    //   283: ladd
    //   284: l2i
    //   285: istore_3
    //   286: lload 7
    //   288: iload_3
    //   289: i2l
    //   290: lsub
    //   291: lstore 11
    //   293: lload 11
    //   295: lconst_0
    //   296: lcmp
    //   297: ifge +28 -> 325
    //   300: new 18	com/xiaomi/gamecenter/channel/writer/SignatureNotFoundException
    //   303: dup
    //   304: new 74	java/lang/StringBuilder
    //   307: dup
    //   308: ldc 116
    //   310: invokespecial 79	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   313: lload 11
    //   315: invokevirtual 83	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   318: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   321: invokespecial 88	com/xiaomi/gamecenter/channel/writer/SignatureNotFoundException:<init>	(Ljava/lang/String;)V
    //   324: athrow
    //   325: aload 17
    //   327: lload 11
    //   329: invokevirtual 62	java/nio/channels/FileChannel:position	(J)Ljava/nio/channels/FileChannel;
    //   332: pop
    //   333: iload_3
    //   334: invokestatic 40	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   337: astore 16
    //   339: aload 17
    //   341: aload 16
    //   343: invokevirtual 66	java/nio/channels/FileChannel:read	(Ljava/nio/ByteBuffer;)I
    //   346: pop
    //   347: aload 16
    //   349: getstatic 46	java/nio/ByteOrder:LITTLE_ENDIAN	Ljava/nio/ByteOrder;
    //   352: invokevirtual 50	java/nio/ByteBuffer:order	(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    //   355: pop
    //   356: aload 16
    //   358: iconst_0
    //   359: invokevirtual 98	java/nio/ByteBuffer:getLong	(I)J
    //   362: lstore 13
    //   364: lload 13
    //   366: lload 9
    //   368: lcmp
    //   369: ifeq +38 -> 407
    //   372: new 18	com/xiaomi/gamecenter/channel/writer/SignatureNotFoundException
    //   375: dup
    //   376: new 74	java/lang/StringBuilder
    //   379: dup
    //   380: ldc 118
    //   382: invokespecial 79	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   385: lload 13
    //   387: invokevirtual 83	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   390: ldc 120
    //   392: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   395: lload 9
    //   397: invokevirtual 83	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   400: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   403: invokespecial 88	com/xiaomi/gamecenter/channel/writer/SignatureNotFoundException:<init>	(Ljava/lang/String;)V
    //   406: athrow
    //   407: aload 16
    //   409: lload 11
    //   411: invokestatic 129	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   414: invokestatic 135	com/xiaomi/gamecenter/channel/common/Pair:create	(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/gamecenter/channel/common/Pair;
    //   417: astore 16
    //   419: aload 16
    //   421: invokevirtual 139	com/xiaomi/gamecenter/channel/common/Pair:getFirst	()Ljava/lang/Object;
    //   424: checkcast 36	java/nio/ByteBuffer
    //   427: astore 18
    //   429: aload 16
    //   431: invokevirtual 142	com/xiaomi/gamecenter/channel/common/Pair:getSecond	()Ljava/lang/Object;
    //   434: checkcast 125	java/lang/Long
    //   437: invokevirtual 145	java/lang/Long:longValue	()J
    //   440: lstore 9
    //   442: aload 18
    //   444: invokestatic 148	com/xiaomi/gamecenter/channel/writer/c:a	(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    //   447: astore 16
    //   449: aload 16
    //   451: ldc -107
    //   453: invokestatic 154	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   456: invokeinterface 160 2 0
    //   461: ifnull +428 -> 889
    //   464: iconst_1
    //   465: istore_3
    //   466: aload_1
    //   467: aload 16
    //   469: invokeinterface 163 2 0
    //   474: astore 16
    //   476: iload_3
    //   477: ifeq +67 -> 544
    //   480: aload 16
    //   482: invokevirtual 168	com/xiaomi/gamecenter/channel/writer/a:a	()Ljava/util/List;
    //   485: invokeinterface 174 1 0
    //   490: astore_1
    //   491: iconst_0
    //   492: istore_3
    //   493: aload_1
    //   494: invokeinterface 180 1 0
    //   499: ifeq +395 -> 894
    //   502: aload_1
    //   503: invokeinterface 183 1 0
    //   508: checkcast 185	com/xiaomi/gamecenter/channel/writer/b
    //   511: invokevirtual 188	com/xiaomi/gamecenter/channel/writer/b:c	()I
    //   514: iload_3
    //   515: iadd
    //   516: istore_3
    //   517: goto -24 -> 493
    //   520: aload 16
    //   522: new 185	com/xiaomi/gamecenter/channel/writer/b
    //   525: dup
    //   526: ldc -107
    //   528: iload_3
    //   529: invokestatic 40	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   532: getstatic 46	java/nio/ByteOrder:LITTLE_ENDIAN	Ljava/nio/ByteOrder;
    //   535: invokevirtual 50	java/nio/ByteBuffer:order	(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    //   538: invokespecial 191	com/xiaomi/gamecenter/channel/writer/b:<init>	(ILjava/nio/ByteBuffer;)V
    //   541: invokevirtual 194	com/xiaomi/gamecenter/channel/writer/a:a	(Lcom/xiaomi/gamecenter/channel/writer/b;)V
    //   544: lload 9
    //   546: lconst_0
    //   547: lcmp
    //   548: ifeq +281 -> 829
    //   551: lload 7
    //   553: lconst_0
    //   554: lcmp
    //   555: ifeq +274 -> 829
    //   558: aload 15
    //   560: lload 7
    //   562: invokevirtual 198	java/io/RandomAccessFile:seek	(J)V
    //   565: iload_2
    //   566: ifeq +154 -> 720
    //   569: new 200	java/io/File
    //   572: dup
    //   573: aload_0
    //   574: invokevirtual 203	java/io/File:getParent	()Ljava/lang/String;
    //   577: invokestatic 209	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   580: invokevirtual 210	java/util/UUID:toString	()Ljava/lang/String;
    //   583: invokespecial 213	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   586: astore_0
    //   587: new 215	java/io/FileOutputStream
    //   590: dup
    //   591: aload_0
    //   592: invokespecial 218	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   595: astore_1
    //   596: sipush 1024
    //   599: newarray <illegal type>
    //   601: astore 18
    //   603: aload 15
    //   605: aload 18
    //   607: invokevirtual 221	java/io/RandomAccessFile:read	([B)I
    //   610: istore_3
    //   611: iload_3
    //   612: ifle +25 -> 637
    //   615: aload_1
    //   616: aload 18
    //   618: iconst_0
    //   619: iload_3
    //   620: invokevirtual 225	java/io/FileOutputStream:write	([BII)V
    //   623: goto -20 -> 603
    //   626: astore_0
    //   627: aload_1
    //   628: ifnull +7 -> 635
    //   631: aload_1
    //   632: invokevirtual 226	java/io/FileOutputStream:close	()V
    //   635: aload_0
    //   636: athrow
    //   637: aload_1
    //   638: invokevirtual 226	java/io/FileOutputStream:close	()V
    //   641: aconst_null
    //   642: astore_1
    //   643: aload 17
    //   645: lload 9
    //   647: invokevirtual 62	java/nio/channels/FileChannel:position	(J)Ljava/nio/channels/FileChannel;
    //   650: pop
    //   651: aload 16
    //   653: aload 15
    //   655: invokevirtual 229	com/xiaomi/gamecenter/channel/writer/a:a	(Ljava/io/DataOutput;)J
    //   658: lstore 11
    //   660: iload_2
    //   661: ifeq +184 -> 845
    //   664: new 231	java/io/FileInputStream
    //   667: dup
    //   668: aload_0
    //   669: invokespecial 232	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   672: astore 16
    //   674: sipush 1024
    //   677: newarray <illegal type>
    //   679: astore_1
    //   680: aload 16
    //   682: aload_1
    //   683: invokevirtual 233	java/io/FileInputStream:read	([B)I
    //   686: istore_3
    //   687: iload_3
    //   688: ifle +56 -> 744
    //   691: aload 15
    //   693: aload_1
    //   694: iconst_0
    //   695: iload_3
    //   696: invokevirtual 234	java/io/RandomAccessFile:write	([BII)V
    //   699: goto -19 -> 680
    //   702: astore_1
    //   703: aload 16
    //   705: ifnull +8 -> 713
    //   708: aload 16
    //   710: invokevirtual 235	java/io/FileInputStream:close	()V
    //   713: aload_0
    //   714: invokevirtual 238	java/io/File:delete	()Z
    //   717: pop
    //   718: aload_1
    //   719: athrow
    //   720: aload 17
    //   722: invokevirtual 56	java/nio/channels/FileChannel:size	()J
    //   725: lload 7
    //   727: lsub
    //   728: l2i
    //   729: newarray <illegal type>
    //   731: astore_1
    //   732: aload 15
    //   734: aload_1
    //   735: invokevirtual 221	java/io/RandomAccessFile:read	([B)I
    //   738: pop
    //   739: aconst_null
    //   740: astore_0
    //   741: goto -98 -> 643
    //   744: aload 16
    //   746: invokevirtual 235	java/io/FileInputStream:close	()V
    //   749: aload_0
    //   750: invokevirtual 238	java/io/File:delete	()Z
    //   753: pop
    //   754: aload 15
    //   756: aload 15
    //   758: invokevirtual 241	java/io/RandomAccessFile:getFilePointer	()J
    //   761: invokevirtual 244	java/io/RandomAccessFile:setLength	(J)V
    //   764: aload 15
    //   766: aload 17
    //   768: invokevirtual 56	java/nio/channels/FileChannel:size	()J
    //   771: lload 5
    //   773: lsub
    //   774: ldc2_w 57
    //   777: lsub
    //   778: invokevirtual 198	java/io/RandomAccessFile:seek	(J)V
    //   781: iconst_4
    //   782: invokestatic 40	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   785: astore_0
    //   786: aload_0
    //   787: getstatic 46	java/nio/ByteOrder:LITTLE_ENDIAN	Ljava/nio/ByteOrder;
    //   790: invokevirtual 50	java/nio/ByteBuffer:order	(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    //   793: pop
    //   794: aload_0
    //   795: lload 11
    //   797: lload 7
    //   799: ladd
    //   800: ldc2_w 113
    //   803: ladd
    //   804: lload 7
    //   806: lload 9
    //   808: lsub
    //   809: lsub
    //   810: l2i
    //   811: invokevirtual 247	java/nio/ByteBuffer:putInt	(I)Ljava/nio/ByteBuffer;
    //   814: pop
    //   815: aload_0
    //   816: invokevirtual 251	java/nio/ByteBuffer:flip	()Ljava/nio/Buffer;
    //   819: pop
    //   820: aload 15
    //   822: aload_0
    //   823: invokevirtual 255	java/nio/ByteBuffer:array	()[B
    //   826: invokevirtual 258	java/io/RandomAccessFile:write	([B)V
    //   829: aload 17
    //   831: ifnull +8 -> 839
    //   834: aload 17
    //   836: invokevirtual 91	java/nio/channels/FileChannel:close	()V
    //   839: aload 15
    //   841: invokevirtual 92	java/io/RandomAccessFile:close	()V
    //   844: return
    //   845: aload 15
    //   847: aload_1
    //   848: invokevirtual 258	java/io/RandomAccessFile:write	([B)V
    //   851: goto -97 -> 754
    //   854: astore_0
    //   855: aload 16
    //   857: astore 15
    //   859: aload 17
    //   861: astore_1
    //   862: goto -732 -> 130
    //   865: astore_0
    //   866: aload 15
    //   868: astore_1
    //   869: aload 16
    //   871: astore 15
    //   873: goto -743 -> 130
    //   876: astore_1
    //   877: aconst_null
    //   878: astore 16
    //   880: goto -177 -> 703
    //   883: astore_0
    //   884: aconst_null
    //   885: astore_1
    //   886: goto -259 -> 627
    //   889: iconst_0
    //   890: istore_3
    //   891: goto -425 -> 466
    //   894: iload_3
    //   895: bipush 8
    //   897: iadd
    //   898: bipush 8
    //   900: iadd
    //   901: bipush 16
    //   903: iadd
    //   904: istore_3
    //   905: iload_3
    //   906: sipush 4096
    //   909: irem
    //   910: ifeq -366 -> 544
    //   913: sipush 4084
    //   916: iload_3
    //   917: sipush 4096
    //   920: irem
    //   921: isub
    //   922: istore 4
    //   924: iload 4
    //   926: istore_3
    //   927: iload 4
    //   929: ifge -409 -> 520
    //   932: iload 4
    //   934: sipush 4096
    //   937: iadd
    //   938: istore_3
    //   939: goto -419 -> 520
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	942	0	paramFile	File
    //   0	942	1	parama	a
    //   0	942	2	paramBoolean	boolean
    //   285	654	3	i	int
    //   922	16	4	j	int
    //   30	742	5	l1	long
    //   80	725	7	l2	long
    //   230	577	9	l3	long
    //   291	505	11	l4	long
    //   362	24	13	l5	long
    //   16	856	15	localObject1	Object
    //   4	70	16	localByteBuffer	ByteBuffer
    //   116	12	16	localObject2	Object
    //   167	712	16	localObject3	Object
    //   1	859	17	localFileChannel	java.nio.channels.FileChannel
    //   427	190	18	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   25	82	116	finally
    //   91	116	116	finally
    //   150	214	116	finally
    //   214	224	116	finally
    //   224	244	116	finally
    //   253	278	116	finally
    //   300	325	116	finally
    //   325	364	116	finally
    //   372	407	116	finally
    //   407	464	116	finally
    //   466	476	116	finally
    //   480	491	116	finally
    //   493	517	116	finally
    //   520	544	116	finally
    //   558	565	116	finally
    //   569	587	116	finally
    //   631	635	116	finally
    //   635	637	116	finally
    //   637	641	116	finally
    //   643	660	116	finally
    //   708	713	116	finally
    //   713	720	116	finally
    //   720	739	116	finally
    //   744	754	116	finally
    //   754	829	116	finally
    //   845	851	116	finally
    //   596	603	626	finally
    //   603	611	626	finally
    //   615	623	626	finally
    //   674	680	702	finally
    //   680	687	702	finally
    //   691	699	702	finally
    //   6	18	854	finally
    //   18	25	865	finally
    //   664	674	876	finally
    //   587	596	883	finally
  }
  
  public static void put(File paramFile, int paramInt, String paramString)
    throws IOException, SignatureNotFoundException
  {
    put(paramFile, paramInt, paramString, false);
  }
  
  public static void put(File paramFile, int paramInt, String paramString, boolean paramBoolean)
    throws IOException, SignatureNotFoundException
  {
    try
    {
      paramString = AESEncryption.Encrypt(paramString);
      ByteBuffer localByteBuffer = ByteBuffer.allocate(paramString.length);
      localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
      localByteBuffer.put(paramString, 0, paramString.length);
      localByteBuffer.flip();
      put(paramFile, paramInt, localByteBuffer, paramBoolean);
      return;
    }
    catch (Exception paramFile)
    {
      paramFile.printStackTrace();
    }
  }
  
  public static void put(File paramFile, int paramInt, ByteBuffer paramByteBuffer)
    throws IOException, SignatureNotFoundException
  {
    put(paramFile, paramInt, paramByteBuffer, false);
  }
  
  public static void put(File paramFile, int paramInt, ByteBuffer paramByteBuffer, boolean paramBoolean)
    throws IOException, SignatureNotFoundException
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(Integer.valueOf(paramInt), paramByteBuffer);
    putAll(paramFile, localHashMap, paramBoolean);
  }
  
  public static void putAll(File paramFile, Map<Integer, ByteBuffer> paramMap)
    throws IOException, SignatureNotFoundException
  {
    putAll(paramFile, paramMap, false);
  }
  
  public static void putAll(File paramFile, Map<Integer, ByteBuffer> paramMap, boolean paramBoolean)
    throws IOException, SignatureNotFoundException
  {
    handleApkSigningBlock(paramFile, new d(paramMap), paramBoolean);
  }
  
  public static void remove(File paramFile, int paramInt)
    throws IOException, SignatureNotFoundException
  {
    remove(paramFile, paramInt, false);
  }
  
  public static void remove(File paramFile, int paramInt, boolean paramBoolean)
    throws IOException, SignatureNotFoundException
  {
    handleApkSigningBlock(paramFile, new e(paramInt), paramBoolean);
  }
  
  static abstract interface a
  {
    public abstract a a(Map<Integer, ByteBuffer> paramMap);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\writer\PayloadWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */