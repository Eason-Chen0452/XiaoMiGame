package com.alipay.b.a.a.e;

import com.alipay.b.a.a.c.b.a;
import java.io.File;
import org.json.JSONObject;

public final class b
{
  private File a = null;
  private a b = null;
  
  public b(String paramString, a parama)
  {
    this.a = new File(paramString);
    this.b = parama;
  }
  
  private static String a(String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("type", "id");
      localJSONObject.put("error", paramString);
      return localJSONObject.toString();
    }
    catch (Exception paramString) {}
    return "";
  }
  
  /* Error */
  private void b()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: getfield 15	com/alipay/b/a/a/e/b:a	Ljava/io/File;
    //   9: astore 5
    //   11: aload 5
    //   13: ifnonnull +6 -> 19
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: aload_0
    //   20: getfield 15	com/alipay/b/a/a/e/b:a	Ljava/io/File;
    //   23: invokevirtual 52	java/io/File:exists	()Z
    //   26: ifeq -10 -> 16
    //   29: aload_0
    //   30: getfield 15	com/alipay/b/a/a/e/b:a	Ljava/io/File;
    //   33: invokevirtual 55	java/io/File:isDirectory	()Z
    //   36: ifeq -20 -> 16
    //   39: aload_0
    //   40: getfield 15	com/alipay/b/a/a/e/b:a	Ljava/io/File;
    //   43: invokevirtual 59	java/io/File:list	()[Ljava/lang/String;
    //   46: arraylength
    //   47: ifeq -31 -> 16
    //   50: new 61	java/util/ArrayList
    //   53: dup
    //   54: invokespecial 62	java/util/ArrayList:<init>	()V
    //   57: astore 7
    //   59: aload_0
    //   60: getfield 15	com/alipay/b/a/a/e/b:a	Ljava/io/File;
    //   63: invokevirtual 59	java/io/File:list	()[Ljava/lang/String;
    //   66: astore 5
    //   68: aload 5
    //   70: arraylength
    //   71: istore_2
    //   72: iconst_0
    //   73: istore_1
    //   74: iload_1
    //   75: iload_2
    //   76: if_icmpge +22 -> 98
    //   79: aload 7
    //   81: aload 5
    //   83: iload_1
    //   84: aaload
    //   85: invokeinterface 68 2 0
    //   90: pop
    //   91: iload_1
    //   92: iconst_1
    //   93: iadd
    //   94: istore_1
    //   95: goto -21 -> 74
    //   98: aload 7
    //   100: invokestatic 74	java/util/Collections:sort	(Ljava/util/List;)V
    //   103: aload 7
    //   105: aload 7
    //   107: invokeinterface 78 1 0
    //   112: iconst_1
    //   113: isub
    //   114: invokeinterface 82 2 0
    //   119: checkcast 84	java/lang/String
    //   122: astore 6
    //   124: aload 7
    //   126: invokeinterface 78 1 0
    //   131: istore_2
    //   132: invokestatic 90	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   135: invokevirtual 94	java/util/Calendar:getTime	()Ljava/util/Date;
    //   138: astore 5
    //   140: new 96	java/text/SimpleDateFormat
    //   143: dup
    //   144: ldc 98
    //   146: invokespecial 99	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   149: aload 5
    //   151: invokevirtual 103	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   154: astore 8
    //   156: aload 6
    //   158: astore 5
    //   160: iload_2
    //   161: istore_1
    //   162: aload 6
    //   164: new 105	java/lang/StringBuilder
    //   167: dup
    //   168: invokespecial 106	java/lang/StringBuilder:<init>	()V
    //   171: aload 8
    //   173: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: ldc 112
    //   178: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: invokevirtual 113	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   184: invokevirtual 116	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   187: ifeq +39 -> 226
    //   190: aload 7
    //   192: invokeinterface 78 1 0
    //   197: iconst_2
    //   198: if_icmplt -182 -> 16
    //   201: aload 7
    //   203: aload 7
    //   205: invokeinterface 78 1 0
    //   210: iconst_2
    //   211: isub
    //   212: invokeinterface 82 2 0
    //   217: checkcast 84	java/lang/String
    //   220: astore 5
    //   222: iload_2
    //   223: iconst_1
    //   224: isub
    //   225: istore_1
    //   226: aload_0
    //   227: getfield 15	com/alipay/b/a/a/e/b:a	Ljava/io/File;
    //   230: invokevirtual 119	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   233: aload 5
    //   235: invokestatic 124	com/alipay/b/a/a/a/b:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   238: invokestatic 126	com/alipay/b/a/a/e/b:a	(Ljava/lang/String;)Ljava/lang/String;
    //   241: astore 5
    //   243: iload_1
    //   244: istore_2
    //   245: iload 4
    //   247: istore_3
    //   248: aload_0
    //   249: getfield 17	com/alipay/b/a/a/e/b:b	Lcom/alipay/b/a/a/c/b/a;
    //   252: aload 5
    //   254: invokeinterface 131 2 0
    //   259: ifne +10 -> 269
    //   262: iload_1
    //   263: iconst_1
    //   264: isub
    //   265: istore_2
    //   266: iload 4
    //   268: istore_3
    //   269: iload_3
    //   270: iload_2
    //   271: if_icmpge -255 -> 16
    //   274: aload 7
    //   276: iload_3
    //   277: invokeinterface 82 2 0
    //   282: checkcast 84	java/lang/String
    //   285: astore 5
    //   287: new 19	java/io/File
    //   290: dup
    //   291: aload_0
    //   292: getfield 15	com/alipay/b/a/a/e/b:a	Ljava/io/File;
    //   295: aload 5
    //   297: invokespecial 134	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   300: invokevirtual 137	java/io/File:delete	()Z
    //   303: pop
    //   304: iload_3
    //   305: iconst_1
    //   306: iadd
    //   307: istore_3
    //   308: goto -39 -> 269
    //   311: astore 5
    //   313: aload_0
    //   314: monitorexit
    //   315: aload 5
    //   317: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	318	0	this	b
    //   73	192	1	i	int
    //   71	201	2	j	int
    //   247	61	3	k	int
    //   1	266	4	m	int
    //   9	287	5	localObject1	Object
    //   311	5	5	localObject2	Object
    //   122	41	6	str1	String
    //   57	218	7	localArrayList	java.util.ArrayList
    //   154	18	8	str2	String
    // Exception table:
    //   from	to	target	type
    //   5	11	311	finally
    //   19	72	311	finally
    //   79	91	311	finally
    //   98	156	311	finally
    //   162	222	311	finally
    //   226	243	311	finally
    //   248	262	311	finally
    //   274	304	311	finally
  }
  
  public final void a()
  {
    new Thread(new c(this)).start();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\b\a\a\e\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */