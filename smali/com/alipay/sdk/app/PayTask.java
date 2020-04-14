package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.sdk.data.c;
import com.alipay.sdk.util.e;
import com.alipay.sdk.util.e.a;
import com.alipay.sdk.util.i;
import com.alipay.sdk.util.j;
import com.alipay.sdk.util.l;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

public class PayTask
{
  static final Object a = e.class;
  private Activity b;
  private com.alipay.sdk.widget.a c;
  private String d = "wappaygw.alipay.com/service/rest.htm";
  private String e = "mclient.alipay.com/service/rest.htm";
  private String f = "mclient.alipay.com/home/exterfaceAssign.htm";
  private Map<String, a> g = new HashMap();
  
  public PayTask(Activity paramActivity)
  {
    this.b = paramActivity;
    com.alipay.sdk.sys.b localb = com.alipay.sdk.sys.b.a();
    Activity localActivity = this.b;
    c.a();
    localb.a(localActivity);
    com.alipay.sdk.app.statistic.a.a(paramActivity);
    this.c = new com.alipay.sdk.widget.a(paramActivity, "去支付宝付款");
  }
  
  private e.a a()
  {
    return new g(this);
  }
  
  private String a(com.alipay.sdk.protocol.b arg1)
  {
    ??? = ???.b;
    Object localObject1 = new Intent(this.b, H5PayActivity.class);
    Bundle localBundle = new Bundle();
    localBundle.putString("url", ???[0]);
    if (???.length == 2) {
      localBundle.putString("cookie", ???[1]);
    }
    ((Intent)localObject1).putExtras(localBundle);
    this.b.startActivity((Intent)localObject1);
    synchronized (a)
    {
      try
      {
        a.wait();
        localObject1 = h.a;
        ??? = (com.alipay.sdk.protocol.b)localObject1;
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          ??? = h.a();
        }
        return (String)???;
      }
      catch (InterruptedException localInterruptedException)
      {
        String str = h.a();
        return str;
      }
    }
  }
  
  private String a(String paramString)
  {
    paramString = new com.alipay.sdk.sys.a(this.b).a(paramString);
    if (paramString.contains("paymethod=\"expressGateway\"")) {
      paramString = b(paramString);
    }
    String str;
    do
    {
      return paramString;
      if (!l.b(this.b)) {
        break;
      }
      e locale = new e(this.b, new g(this));
      str = locale.a(paramString);
      locale.a = null;
      if (TextUtils.equals(str, "failed")) {
        return b(paramString);
      }
      paramString = str;
    } while (!TextUtils.isEmpty(str));
    return h.a();
    return b(paramString);
  }
  
  private static String a(String paramString1, String paramString2)
  {
    paramString2 = paramString2 + "={";
    int i = paramString1.indexOf(paramString2);
    return paramString1.substring(paramString2.length() + i, paramString1.lastIndexOf("}"));
  }
  
  private static boolean a(boolean paramBoolean1, boolean paramBoolean2, String paramString, StringBuilder paramStringBuilder, Map<String, String> paramMap, String... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    String str;
    if (i < j)
    {
      str = paramVarArgs[i];
      if (TextUtils.isEmpty((CharSequence)paramMap.get(str))) {}
    }
    for (paramMap = (String)paramMap.get(str);; paramMap = "")
    {
      if (TextUtils.isEmpty(paramMap))
      {
        if (!paramBoolean2) {
          break label107;
        }
        return false;
        i += 1;
        break;
      }
      if (paramBoolean1) {
        paramStringBuilder.append("&").append(paramString).append("=\"").append(paramMap).append("\"");
      }
      for (;;)
      {
        label107:
        return true;
        paramStringBuilder.append(paramString).append("=\"").append(paramMap).append("\"");
      }
    }
  }
  
  /* Error */
  private String b(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: invokespecial 224	com/alipay/sdk/app/PayTask:b	()V
    //   6: new 226	com/alipay/sdk/packet/impl/d
    //   9: dup
    //   10: invokespecial 227	com/alipay/sdk/packet/impl/d:<init>	()V
    //   13: aload_0
    //   14: getfield 49	com/alipay/sdk/app/PayTask:b	Landroid/app/Activity;
    //   17: aload_1
    //   18: invokevirtual 230	com/alipay/sdk/packet/impl/d:a	(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
    //   21: invokevirtual 235	com/alipay/sdk/packet/b:a	()Lorg/json/JSONObject;
    //   24: ldc -19
    //   26: invokevirtual 243	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   29: ldc -11
    //   31: invokevirtual 243	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   34: invokestatic 248	com/alipay/sdk/protocol/b:a	(Lorg/json/JSONObject;)Ljava/util/List;
    //   37: astore_1
    //   38: iconst_0
    //   39: istore_2
    //   40: iload_2
    //   41: aload_1
    //   42: invokeinterface 253 1 0
    //   47: if_icmpge +264 -> 311
    //   50: aload_1
    //   51: iload_2
    //   52: invokeinterface 256 2 0
    //   57: checkcast 85	com/alipay/sdk/protocol/b
    //   60: getfield 259	com/alipay/sdk/protocol/b:a	Lcom/alipay/sdk/protocol/a;
    //   63: getstatic 263	com/alipay/sdk/protocol/a:c	Lcom/alipay/sdk/protocol/a;
    //   66: if_acmpne +317 -> 383
    //   69: aload_1
    //   70: iload_2
    //   71: invokeinterface 256 2 0
    //   76: checkcast 85	com/alipay/sdk/protocol/b
    //   79: getfield 88	com/alipay/sdk/protocol/b:b	[Ljava/lang/String;
    //   82: astore 4
    //   84: aload 4
    //   86: arraylength
    //   87: iconst_3
    //   88: if_icmpne +295 -> 383
    //   91: ldc_w 265
    //   94: aload 4
    //   96: iconst_0
    //   97: aaload
    //   98: invokestatic 165	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   101: ifeq +282 -> 383
    //   104: invokestatic 54	com/alipay/sdk/sys/b:a	()Lcom/alipay/sdk/sys/b;
    //   107: getfield 268	com/alipay/sdk/sys/b:a	Landroid/content/Context;
    //   110: astore 5
    //   112: invokestatic 273	com/alipay/sdk/tid/b:a	()Lcom/alipay/sdk/tid/b;
    //   115: astore 6
    //   117: aload 4
    //   119: iconst_1
    //   120: aaload
    //   121: invokestatic 129	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   124: ifne +259 -> 383
    //   127: aload 4
    //   129: iconst_2
    //   130: aaload
    //   131: invokestatic 129	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   134: ifeq +6 -> 140
    //   137: goto +246 -> 383
    //   140: aload 6
    //   142: aload 4
    //   144: iconst_1
    //   145: aaload
    //   146: putfield 274	com/alipay/sdk/tid/b:a	Ljava/lang/String;
    //   149: aload 6
    //   151: aload 4
    //   153: iconst_2
    //   154: aaload
    //   155: putfield 276	com/alipay/sdk/tid/b:b	Ljava/lang/String;
    //   158: new 278	com/alipay/sdk/tid/a
    //   161: dup
    //   162: aload 5
    //   164: invokespecial 279	com/alipay/sdk/tid/a:<init>	(Landroid/content/Context;)V
    //   167: astore 4
    //   169: aload 4
    //   171: aload 5
    //   173: invokestatic 284	com/alipay/sdk/util/a:a	(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
    //   176: invokevirtual 285	com/alipay/sdk/util/a:a	()Ljava/lang/String;
    //   179: aload 5
    //   181: invokestatic 284	com/alipay/sdk/util/a:a	(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
    //   184: invokevirtual 287	com/alipay/sdk/util/a:b	()Ljava/lang/String;
    //   187: aload 6
    //   189: getfield 274	com/alipay/sdk/tid/b:a	Ljava/lang/String;
    //   192: aload 6
    //   194: getfield 276	com/alipay/sdk/tid/b:b	Ljava/lang/String;
    //   197: invokevirtual 290	com/alipay/sdk/tid/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   200: aload 4
    //   202: invokevirtual 293	com/alipay/sdk/tid/a:close	()V
    //   205: goto +178 -> 383
    //   208: astore 4
    //   210: getstatic 298	com/alipay/sdk/app/i:d	Lcom/alipay/sdk/app/i;
    //   213: getfield 302	com/alipay/sdk/app/i:h	I
    //   216: invokestatic 305	com/alipay/sdk/app/i:a	(I)Lcom/alipay/sdk/app/i;
    //   219: astore_1
    //   220: ldc_w 307
    //   223: aload 4
    //   225: invokestatic 310	com/alipay/sdk/app/statistic/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   228: aload_0
    //   229: invokespecial 197	com/alipay/sdk/app/PayTask:c	()V
    //   232: aload_1
    //   233: astore 4
    //   235: aload_1
    //   236: ifnonnull +14 -> 250
    //   239: getstatic 312	com/alipay/sdk/app/i:b	Lcom/alipay/sdk/app/i;
    //   242: getfield 302	com/alipay/sdk/app/i:h	I
    //   245: invokestatic 305	com/alipay/sdk/app/i:a	(I)Lcom/alipay/sdk/app/i;
    //   248: astore 4
    //   250: aload 4
    //   252: getfield 302	com/alipay/sdk/app/i:h	I
    //   255: aload 4
    //   257: getfield 315	com/alipay/sdk/app/i:i	Ljava/lang/String;
    //   260: ldc -42
    //   262: invokestatic 318	com/alipay/sdk/app/h:a	(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   265: areturn
    //   266: astore 5
    //   268: aload 4
    //   270: invokevirtual 293	com/alipay/sdk/tid/a:close	()V
    //   273: goto +110 -> 383
    //   276: astore_1
    //   277: ldc_w 320
    //   280: ldc_w 322
    //   283: aload_1
    //   284: invokestatic 325	com/alipay/sdk/app/statistic/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   287: aload_0
    //   288: invokespecial 197	com/alipay/sdk/app/PayTask:c	()V
    //   291: aconst_null
    //   292: astore_1
    //   293: goto -61 -> 232
    //   296: astore_1
    //   297: aload 4
    //   299: invokevirtual 293	com/alipay/sdk/tid/a:close	()V
    //   302: aload_1
    //   303: athrow
    //   304: astore_1
    //   305: aload_0
    //   306: invokespecial 197	com/alipay/sdk/app/PayTask:c	()V
    //   309: aload_1
    //   310: athrow
    //   311: aload_0
    //   312: invokespecial 197	com/alipay/sdk/app/PayTask:c	()V
    //   315: iload_3
    //   316: istore_2
    //   317: iload_2
    //   318: aload_1
    //   319: invokeinterface 253 1 0
    //   324: if_icmpge +50 -> 374
    //   327: aload_1
    //   328: iload_2
    //   329: invokeinterface 256 2 0
    //   334: checkcast 85	com/alipay/sdk/protocol/b
    //   337: getfield 259	com/alipay/sdk/protocol/b:a	Lcom/alipay/sdk/protocol/a;
    //   340: getstatic 327	com/alipay/sdk/protocol/a:b	Lcom/alipay/sdk/protocol/a;
    //   343: if_acmpne +24 -> 367
    //   346: aload_0
    //   347: aload_1
    //   348: iload_2
    //   349: invokeinterface 256 2 0
    //   354: checkcast 85	com/alipay/sdk/protocol/b
    //   357: invokespecial 329	com/alipay/sdk/app/PayTask:a	(Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;
    //   360: astore_1
    //   361: aload_0
    //   362: invokespecial 197	com/alipay/sdk/app/PayTask:c	()V
    //   365: aload_1
    //   366: areturn
    //   367: iload_2
    //   368: iconst_1
    //   369: iadd
    //   370: istore_2
    //   371: goto -54 -> 317
    //   374: aload_0
    //   375: invokespecial 197	com/alipay/sdk/app/PayTask:c	()V
    //   378: aconst_null
    //   379: astore_1
    //   380: goto -148 -> 232
    //   383: iload_2
    //   384: iconst_1
    //   385: iadd
    //   386: istore_2
    //   387: goto -347 -> 40
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	390	0	this	PayTask
    //   0	390	1	paramString	String
    //   39	348	2	i	int
    //   1	315	3	j	int
    //   82	119	4	localObject1	Object
    //   208	16	4	localIOException	java.io.IOException
    //   233	65	4	localObject2	Object
    //   110	70	5	localContext	android.content.Context
    //   266	1	5	localException	Exception
    //   115	78	6	localb	com.alipay.sdk.tid.b
    // Exception table:
    //   from	to	target	type
    //   6	38	208	java/io/IOException
    //   40	137	208	java/io/IOException
    //   140	169	208	java/io/IOException
    //   200	205	208	java/io/IOException
    //   268	273	208	java/io/IOException
    //   297	304	208	java/io/IOException
    //   311	315	208	java/io/IOException
    //   317	361	208	java/io/IOException
    //   169	200	266	java/lang/Exception
    //   6	38	276	java/lang/Throwable
    //   40	137	276	java/lang/Throwable
    //   140	169	276	java/lang/Throwable
    //   200	205	276	java/lang/Throwable
    //   268	273	276	java/lang/Throwable
    //   297	304	276	java/lang/Throwable
    //   311	315	276	java/lang/Throwable
    //   317	361	276	java/lang/Throwable
    //   169	200	296	finally
    //   6	38	304	finally
    //   40	137	304	finally
    //   140	169	304	finally
    //   200	205	304	finally
    //   210	228	304	finally
    //   268	273	304	finally
    //   277	287	304	finally
    //   297	304	304	finally
    //   311	315	304	finally
    //   317	361	304	finally
  }
  
  private void b()
  {
    if (this.c != null) {
      this.c.a();
    }
  }
  
  private void c()
  {
    if (this.c != null) {
      this.c.b();
    }
  }
  
  public String fetchOrderInfoFromH5PayUrl(String paramString)
  {
    for (;;)
    {
      try
      {
        if (TextUtils.isEmpty(paramString)) {
          continue;
        }
        localObject1 = paramString.trim();
        if ((!((String)localObject1).startsWith("https://" + this.d)) && (!((String)localObject1).startsWith("http://" + this.d))) {
          continue;
        }
        localObject3 = ((String)localObject1).replaceFirst("(http|https)://" + this.d + "\\?", "").trim();
        if (TextUtils.isEmpty((CharSequence)localObject3)) {
          continue;
        }
        paramString = l.a("<request_token>", "</request_token>", (String)l.a((String)localObject3).get("req_data"));
        paramString = "_input_charset=\"utf-8\"&ordertoken=\"" + paramString + "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\"" + new com.alipay.sdk.sys.a(this.b).a("sc", "h5tonative") + "\"";
      }
      catch (Throwable paramString)
      {
        Object localObject1;
        Object localObject3;
        boolean bool;
        StringBuilder localStringBuilder;
        Object localObject2;
        paramString = "";
        continue;
      }
      finally {}
      return paramString;
      if ((((String)localObject1).startsWith("https://" + this.e)) || (((String)localObject1).startsWith("http://" + this.e)))
      {
        localObject3 = ((String)localObject1).replaceFirst("(http|https)://" + this.e + "\\?", "").trim();
        if (!TextUtils.isEmpty((CharSequence)localObject3))
        {
          paramString = l.a("<request_token>", "</request_token>", (String)l.a((String)localObject3).get("req_data"));
          paramString = "_input_charset=\"utf-8\"&ordertoken=\"" + paramString + "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\"" + new com.alipay.sdk.sys.a(this.b).a("sc", "h5tonative") + "\"";
          continue;
        }
      }
      if (((((String)localObject1).startsWith("https://" + this.f)) || (((String)localObject1).startsWith("http://" + this.f))) && (((String)localObject1).contains("alipay.wap.create.direct.pay.by.user")))
      {
        bool = TextUtils.isEmpty(((String)localObject1).replaceFirst("(http|https)://" + this.f + "\\?", "").trim());
        if (!bool) {
          try
          {
            localObject1 = new JSONObject();
            ((JSONObject)localObject1).put("url", paramString);
            ((JSONObject)localObject1).put("bizcontext", new com.alipay.sdk.sys.a(this.b).a("sc", "h5tonative"));
            localObject1 = "new_external_info==" + ((JSONObject)localObject1).toString();
            paramString = (String)localObject1;
          }
          catch (Throwable localThrowable) {}
        }
      }
    }
    if (Pattern.compile("^(http|https)://(maliprod\\.alipay\\.com\\/w\\/trade_pay\\.do.?|mali\\.alipay\\.com\\/w\\/trade_pay\\.do.?|mclient\\.alipay\\.com\\/w\\/trade_pay\\.do.?)").matcher(paramString).find())
    {
      paramString = l.a("?", "", paramString);
      if (!TextUtils.isEmpty(paramString))
      {
        localObject3 = l.a(paramString);
        localStringBuilder = new StringBuilder();
        if (a(false, true, "trade_no", localStringBuilder, (Map)localObject3, new String[] { "trade_no", "alipay_trade_no" }))
        {
          a(true, false, "pay_phase_id", localStringBuilder, (Map)localObject3, new String[] { "payPhaseId", "pay_phase_id", "out_relation_id" });
          localStringBuilder.append("&biz_sub_type=\"TRADE\"");
          localStringBuilder.append("&biz_type=\"trade\"");
          localObject2 = (String)((Map)localObject3).get("app_name");
          if ((TextUtils.isEmpty((CharSequence)localObject2)) && (!TextUtils.isEmpty((CharSequence)((Map)localObject3).get("cid")))) {
            paramString = "ali1688";
          }
        }
      }
    }
    for (;;)
    {
      localStringBuilder.append("&app_name=\"" + paramString + "\"");
      if (!a(true, true, "extern_token", localStringBuilder, (Map)localObject3, new String[] { "extern_token", "cid", "sid", "s_id" }))
      {
        paramString = "";
        break;
        paramString = (String)localObject2;
        if (!TextUtils.isEmpty((CharSequence)localObject2)) {
          continue;
        }
        if (!TextUtils.isEmpty((CharSequence)((Map)localObject3).get("sid"))) {
          break label1014;
        }
        paramString = (String)localObject2;
        if (TextUtils.isEmpty((CharSequence)((Map)localObject3).get("s_id"))) {
          continue;
        }
        break label1014;
      }
      a(true, false, "appenv", localStringBuilder, (Map)localObject3, new String[] { "appenv" });
      localStringBuilder.append("&pay_channel_id=\"alipay_sdk\"");
      localObject2 = new a((byte)0);
      ((a)localObject2).a = ((String)((Map)localObject3).get("return_url"));
      ((a)localObject2).b = ((String)((Map)localObject3).get("pay_order_id"));
      paramString = localStringBuilder.toString() + "&bizcontext=\"" + new com.alipay.sdk.sys.a(this.b).a("sc", "h5tonative") + "\"";
      this.g.put(paramString, localObject2);
      break;
      label1014:
      paramString = "tb";
    }
  }
  
  public String fetchTradeToken()
  {
    try
    {
      String str = i.b(this.b, "pref_trade_token", "");
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String getVersion()
  {
    return "15.2.2";
  }
  
  /* Error */
  public com.alipay.sdk.util.H5PayResultModel h5Pay(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: new 473	com/alipay/sdk/util/H5PayResultModel
    //   7: dup
    //   8: invokespecial 474	com/alipay/sdk/util/H5PayResultModel:<init>	()V
    //   11: astore 7
    //   13: aload_1
    //   14: invokevirtual 336	java/lang/String:trim	()Ljava/lang/String;
    //   17: pop
    //   18: aload_0
    //   19: aload_1
    //   20: iload_2
    //   21: invokevirtual 478	com/alipay/sdk/app/PayTask:pay	(Ljava/lang/String;Z)Ljava/lang/String;
    //   24: ldc_w 480
    //   27: invokevirtual 484	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   30: astore 6
    //   32: new 44	java/util/HashMap
    //   35: dup
    //   36: invokespecial 45	java/util/HashMap:<init>	()V
    //   39: astore 8
    //   41: aload 6
    //   43: arraylength
    //   44: istore 4
    //   46: iload_3
    //   47: iload 4
    //   49: if_icmpge +92 -> 141
    //   52: aload 6
    //   54: iload_3
    //   55: aaload
    //   56: astore 9
    //   58: aload 9
    //   60: iconst_0
    //   61: aload 9
    //   63: ldc -81
    //   65: invokevirtual 182	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   68: invokevirtual 195	java/lang/String:substring	(II)Ljava/lang/String;
    //   71: astore 10
    //   73: new 168	java/lang/StringBuilder
    //   76: dup
    //   77: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   80: aload 10
    //   82: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: ldc -81
    //   87: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   93: astore 11
    //   95: aload 9
    //   97: aload 11
    //   99: invokevirtual 182	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   102: istore 5
    //   104: aload 8
    //   106: aload 10
    //   108: aload 9
    //   110: aload 11
    //   112: invokevirtual 186	java/lang/String:length	()I
    //   115: iload 5
    //   117: iadd
    //   118: aload 9
    //   120: ldc -68
    //   122: invokevirtual 191	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   125: invokevirtual 195	java/lang/String:substring	(II)Ljava/lang/String;
    //   128: invokeinterface 456 3 0
    //   133: pop
    //   134: iload_3
    //   135: iconst_1
    //   136: iadd
    //   137: istore_3
    //   138: goto -92 -> 46
    //   141: aload 8
    //   143: ldc_w 486
    //   146: invokeinterface 490 2 0
    //   151: ifeq +21 -> 172
    //   154: aload 7
    //   156: aload 8
    //   158: ldc_w 486
    //   161: invokeinterface 204 2 0
    //   166: checkcast 143	java/lang/String
    //   169: invokevirtual 493	com/alipay/sdk/util/H5PayResultModel:setResultCode	(Ljava/lang/String;)V
    //   172: aload 8
    //   174: ldc_w 495
    //   177: invokeinterface 490 2 0
    //   182: ifeq +26 -> 208
    //   185: aload 7
    //   187: aload 8
    //   189: ldc_w 495
    //   192: invokeinterface 204 2 0
    //   197: checkcast 143	java/lang/String
    //   200: invokevirtual 498	com/alipay/sdk/util/H5PayResultModel:setReturnUrl	(Ljava/lang/String;)V
    //   203: aload_0
    //   204: monitorexit
    //   205: aload 7
    //   207: areturn
    //   208: aload 8
    //   210: ldc_w 500
    //   213: invokeinterface 490 2 0
    //   218: istore_2
    //   219: iload_2
    //   220: ifeq -17 -> 203
    //   223: aload 8
    //   225: ldc_w 500
    //   228: invokeinterface 204 2 0
    //   233: checkcast 143	java/lang/String
    //   236: astore 8
    //   238: aload 8
    //   240: invokevirtual 186	java/lang/String:length	()I
    //   243: bipush 15
    //   245: if_icmple +237 -> 482
    //   248: aload_0
    //   249: getfield 47	com/alipay/sdk/app/PayTask:g	Ljava/util/Map;
    //   252: aload_1
    //   253: invokeinterface 204 2 0
    //   258: checkcast 6	com/alipay/sdk/app/PayTask$a
    //   261: astore 6
    //   263: aload 6
    //   265: ifnull +63 -> 328
    //   268: aload 6
    //   270: getfield 451	com/alipay/sdk/app/PayTask$a:b	Ljava/lang/String;
    //   273: invokestatic 129	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   276: ifeq +27 -> 303
    //   279: aload 7
    //   281: aload 6
    //   283: getfield 448	com/alipay/sdk/app/PayTask$a:a	Ljava/lang/String;
    //   286: invokevirtual 498	com/alipay/sdk/util/H5PayResultModel:setReturnUrl	(Ljava/lang/String;)V
    //   289: aload_0
    //   290: getfield 47	com/alipay/sdk/app/PayTask:g	Ljava/util/Map;
    //   293: aload_1
    //   294: invokeinterface 503 2 0
    //   299: pop
    //   300: goto -97 -> 203
    //   303: aload 7
    //   305: invokestatic 508	com/alipay/sdk/data/a:b	()Lcom/alipay/sdk/data/a;
    //   308: getfield 511	com/alipay/sdk/data/a:j	Ljava/lang/String;
    //   311: ldc_w 513
    //   314: aload 6
    //   316: getfield 451	com/alipay/sdk/app/PayTask$a:b	Ljava/lang/String;
    //   319: invokevirtual 517	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   322: invokevirtual 498	com/alipay/sdk/util/H5PayResultModel:setReturnUrl	(Ljava/lang/String;)V
    //   325: goto -36 -> 289
    //   328: ldc_w 519
    //   331: ldc -44
    //   333: aload 8
    //   335: invokestatic 366	com/alipay/sdk/util/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   338: astore 6
    //   340: aload 6
    //   342: astore_1
    //   343: aload 6
    //   345: invokestatic 129	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   348: ifeq +182 -> 530
    //   351: ldc_w 521
    //   354: ldc -44
    //   356: aload 8
    //   358: invokestatic 366	com/alipay/sdk/util/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   361: astore 6
    //   363: aload 6
    //   365: astore_1
    //   366: aload 6
    //   368: invokestatic 129	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   371: ifeq +159 -> 530
    //   374: ldc_w 523
    //   377: ldc -44
    //   379: aload 8
    //   381: invokestatic 366	com/alipay/sdk/util/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   384: astore 6
    //   386: aload 6
    //   388: astore_1
    //   389: aload 6
    //   391: invokestatic 129	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   394: ifeq +136 -> 530
    //   397: ldc_w 525
    //   400: ldc -48
    //   402: aload 8
    //   404: invokestatic 366	com/alipay/sdk/util/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   407: ldc_w 527
    //   410: invokestatic 532	java/net/URLDecoder:decode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   413: astore 6
    //   415: aload 6
    //   417: astore_1
    //   418: aload 6
    //   420: invokestatic 129	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   423: ifeq +107 -> 530
    //   426: ldc_w 534
    //   429: ldc -48
    //   431: aload 8
    //   433: invokestatic 366	com/alipay/sdk/util/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   436: ldc_w 527
    //   439: invokestatic 532	java/net/URLDecoder:decode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   442: astore_1
    //   443: aload_1
    //   444: astore 6
    //   446: aload_1
    //   447: invokestatic 129	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   450: ifeq +11 -> 461
    //   453: invokestatic 508	com/alipay/sdk/data/a:b	()Lcom/alipay/sdk/data/a;
    //   456: getfield 511	com/alipay/sdk/data/a:j	Ljava/lang/String;
    //   459: astore 6
    //   461: aload 7
    //   463: aload 6
    //   465: ldc_w 527
    //   468: invokestatic 532	java/net/URLDecoder:decode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   471: invokevirtual 498	com/alipay/sdk/util/H5PayResultModel:setReturnUrl	(Ljava/lang/String;)V
    //   474: goto -271 -> 203
    //   477: astore_1
    //   478: aload_0
    //   479: monitorexit
    //   480: aload_1
    //   481: athrow
    //   482: aload_0
    //   483: getfield 47	com/alipay/sdk/app/PayTask:g	Ljava/util/Map;
    //   486: aload_1
    //   487: invokeinterface 204 2 0
    //   492: checkcast 6	com/alipay/sdk/app/PayTask$a
    //   495: astore 6
    //   497: aload 6
    //   499: ifnull -296 -> 203
    //   502: aload 7
    //   504: aload 6
    //   506: getfield 448	com/alipay/sdk/app/PayTask$a:a	Ljava/lang/String;
    //   509: invokevirtual 498	com/alipay/sdk/util/H5PayResultModel:setReturnUrl	(Ljava/lang/String;)V
    //   512: aload_0
    //   513: getfield 47	com/alipay/sdk/app/PayTask:g	Ljava/util/Map;
    //   516: aload_1
    //   517: invokeinterface 503 2 0
    //   522: pop
    //   523: goto -320 -> 203
    //   526: astore_1
    //   527: goto -324 -> 203
    //   530: goto -87 -> 443
    //   533: astore_1
    //   534: goto -331 -> 203
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	537	0	this	PayTask
    //   0	537	1	paramString	String
    //   0	537	2	paramBoolean	boolean
    //   1	137	3	i	int
    //   44	6	4	j	int
    //   102	16	5	k	int
    //   30	475	6	localObject1	Object
    //   11	492	7	localH5PayResultModel	com.alipay.sdk.util.H5PayResultModel
    //   39	393	8	localObject2	Object
    //   56	63	9	localObject3	Object
    //   71	36	10	str1	String
    //   93	18	11	str2	String
    // Exception table:
    //   from	to	target	type
    //   4	13	477	finally
    //   13	46	477	finally
    //   58	134	477	finally
    //   141	172	477	finally
    //   172	203	477	finally
    //   208	219	477	finally
    //   223	263	477	finally
    //   268	289	477	finally
    //   289	300	477	finally
    //   303	325	477	finally
    //   328	340	477	finally
    //   343	363	477	finally
    //   366	386	477	finally
    //   389	415	477	finally
    //   418	443	477	finally
    //   446	461	477	finally
    //   461	474	477	finally
    //   482	497	477	finally
    //   502	523	477	finally
    //   13	46	526	java/lang/Throwable
    //   58	134	526	java/lang/Throwable
    //   141	172	526	java/lang/Throwable
    //   172	203	526	java/lang/Throwable
    //   208	219	526	java/lang/Throwable
    //   223	263	533	java/lang/Throwable
    //   268	289	533	java/lang/Throwable
    //   289	300	533	java/lang/Throwable
    //   303	325	533	java/lang/Throwable
    //   328	340	533	java/lang/Throwable
    //   343	363	533	java/lang/Throwable
    //   366	386	533	java/lang/Throwable
    //   389	415	533	java/lang/Throwable
    //   418	443	533	java/lang/Throwable
    //   446	461	533	java/lang/Throwable
    //   461	474	533	java/lang/Throwable
    //   482	497	533	java/lang/Throwable
    //   502	523	533	java/lang/Throwable
  }
  
  /* Error */
  public String pay(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 7
    //   6: aload_0
    //   7: monitorenter
    //   8: iload_2
    //   9: ifeq +7 -> 16
    //   12: aload_0
    //   13: invokespecial 224	com/alipay/sdk/app/PayTask:b	()V
    //   16: new 135	com/alipay/sdk/sys/a
    //   19: dup
    //   20: aload_0
    //   21: getfield 49	com/alipay/sdk/app/PayTask:b	Landroid/app/Activity;
    //   24: invokespecial 137	com/alipay/sdk/sys/a:<init>	(Landroid/content/Context;)V
    //   27: aload_1
    //   28: invokevirtual 139	com/alipay/sdk/sys/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   31: astore 5
    //   33: aload 5
    //   35: ldc -115
    //   37: invokevirtual 146	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   40: ifne +135 -> 175
    //   43: aload_0
    //   44: getfield 49	com/alipay/sdk/app/PayTask:b	Landroid/app/Activity;
    //   47: invokestatic 153	com/alipay/sdk/util/l:b	(Landroid/content/Context;)Z
    //   50: ifeq +125 -> 175
    //   53: new 23	com/alipay/sdk/util/e
    //   56: dup
    //   57: aload_0
    //   58: getfield 49	com/alipay/sdk/app/PayTask:b	Landroid/app/Activity;
    //   61: new 77	com/alipay/sdk/app/g
    //   64: dup
    //   65: aload_0
    //   66: invokespecial 80	com/alipay/sdk/app/g:<init>	(Lcom/alipay/sdk/app/PayTask;)V
    //   69: invokespecial 156	com/alipay/sdk/util/e:<init>	(Landroid/app/Activity;Lcom/alipay/sdk/util/e$a;)V
    //   72: astore 9
    //   74: aload 9
    //   76: aload 5
    //   78: invokevirtual 157	com/alipay/sdk/util/e:a	(Ljava/lang/String;)Ljava/lang/String;
    //   81: astore 8
    //   83: aload 9
    //   85: aconst_null
    //   86: putfield 159	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   89: aload 8
    //   91: ldc -95
    //   93: invokestatic 165	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   96: ifne +79 -> 175
    //   99: aload 8
    //   101: astore 5
    //   103: aload 8
    //   105: invokestatic 129	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   108: ifeq +8 -> 116
    //   111: invokestatic 132	com/alipay/sdk/app/h:a	()Ljava/lang/String;
    //   114: astore 5
    //   116: aload_0
    //   117: getfield 49	com/alipay/sdk/app/PayTask:b	Landroid/app/Activity;
    //   120: astore 8
    //   122: aload 5
    //   124: invokestatic 129	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   127: ifeq +59 -> 186
    //   130: aload 7
    //   132: invokestatic 129	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   135: ifne +13 -> 148
    //   138: aload 8
    //   140: ldc_w 461
    //   143: aload 7
    //   145: invokestatic 537	com/alipay/sdk/util/i:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   148: invokestatic 508	com/alipay/sdk/data/a:b	()Lcom/alipay/sdk/data/a;
    //   151: aload_0
    //   152: getfield 49	com/alipay/sdk/app/PayTask:b	Landroid/app/Activity;
    //   155: invokevirtual 538	com/alipay/sdk/data/a:a	(Landroid/content/Context;)V
    //   158: aload_0
    //   159: invokespecial 197	com/alipay/sdk/app/PayTask:c	()V
    //   162: aload_0
    //   163: getfield 49	com/alipay/sdk/app/PayTask:b	Landroid/app/Activity;
    //   166: aload_1
    //   167: invokestatic 541	com/alipay/sdk/app/statistic/a:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   170: aload_0
    //   171: monitorexit
    //   172: aload 5
    //   174: areturn
    //   175: aload_0
    //   176: aload 5
    //   178: invokespecial 148	com/alipay/sdk/app/PayTask:b	(Ljava/lang/String;)Ljava/lang/String;
    //   181: astore 5
    //   183: goto -67 -> 116
    //   186: aload 5
    //   188: ldc_w 480
    //   191: invokevirtual 484	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   194: astore 9
    //   196: iconst_0
    //   197: istore_3
    //   198: aload 6
    //   200: astore 7
    //   202: iload_3
    //   203: aload 9
    //   205: arraylength
    //   206: if_icmpge -76 -> 130
    //   209: aload 6
    //   211: astore 7
    //   213: aload 9
    //   215: iload_3
    //   216: aaload
    //   217: ldc_w 543
    //   220: invokevirtual 345	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   223: ifeq +229 -> 452
    //   226: aload 6
    //   228: astore 7
    //   230: aload 9
    //   232: iload_3
    //   233: aaload
    //   234: ldc -68
    //   236: invokevirtual 546	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   239: ifeq +213 -> 452
    //   242: aload 9
    //   244: iload_3
    //   245: aaload
    //   246: bipush 8
    //   248: aload 9
    //   250: iload_3
    //   251: aaload
    //   252: invokevirtual 186	java/lang/String:length	()I
    //   255: iconst_1
    //   256: isub
    //   257: invokevirtual 195	java/lang/String:substring	(II)Ljava/lang/String;
    //   260: ldc -48
    //   262: invokevirtual 484	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   265: astore 10
    //   267: iconst_0
    //   268: istore 4
    //   270: aload 6
    //   272: astore 7
    //   274: iload 4
    //   276: aload 10
    //   278: arraylength
    //   279: if_icmpge +173 -> 452
    //   282: aload 10
    //   284: iload 4
    //   286: aaload
    //   287: ldc_w 548
    //   290: invokevirtual 345	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   293: ifeq +41 -> 334
    //   296: aload 10
    //   298: iload 4
    //   300: aaload
    //   301: ldc -44
    //   303: invokevirtual 546	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   306: ifeq +28 -> 334
    //   309: aload 10
    //   311: iload 4
    //   313: aaload
    //   314: bipush 13
    //   316: aload 10
    //   318: iload 4
    //   320: aaload
    //   321: invokevirtual 186	java/lang/String:length	()I
    //   324: iconst_1
    //   325: isub
    //   326: invokevirtual 195	java/lang/String:substring	(II)Ljava/lang/String;
    //   329: astore 7
    //   331: goto +121 -> 452
    //   334: aload 10
    //   336: iload 4
    //   338: aaload
    //   339: ldc_w 550
    //   342: invokevirtual 345	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   345: ifeq +18 -> 363
    //   348: aload 10
    //   350: iload 4
    //   352: aaload
    //   353: bipush 12
    //   355: invokevirtual 553	java/lang/String:substring	(I)Ljava/lang/String;
    //   358: astore 7
    //   360: goto +92 -> 452
    //   363: iload 4
    //   365: iconst_1
    //   366: iadd
    //   367: istore 4
    //   369: goto -99 -> 270
    //   372: astore 6
    //   374: ldc_w 320
    //   377: ldc_w 555
    //   380: aload 6
    //   382: invokestatic 325	com/alipay/sdk/app/statistic/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   385: goto -237 -> 148
    //   388: astore 5
    //   390: invokestatic 132	com/alipay/sdk/app/h:a	()Ljava/lang/String;
    //   393: astore 5
    //   395: invokestatic 508	com/alipay/sdk/data/a:b	()Lcom/alipay/sdk/data/a;
    //   398: aload_0
    //   399: getfield 49	com/alipay/sdk/app/PayTask:b	Landroid/app/Activity;
    //   402: invokevirtual 538	com/alipay/sdk/data/a:a	(Landroid/content/Context;)V
    //   405: aload_0
    //   406: invokespecial 197	com/alipay/sdk/app/PayTask:c	()V
    //   409: aload_0
    //   410: getfield 49	com/alipay/sdk/app/PayTask:b	Landroid/app/Activity;
    //   413: aload_1
    //   414: invokestatic 541	com/alipay/sdk/app/statistic/a:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   417: goto -247 -> 170
    //   420: astore_1
    //   421: aload_0
    //   422: monitorexit
    //   423: aload_1
    //   424: athrow
    //   425: astore 5
    //   427: invokestatic 508	com/alipay/sdk/data/a:b	()Lcom/alipay/sdk/data/a;
    //   430: aload_0
    //   431: getfield 49	com/alipay/sdk/app/PayTask:b	Landroid/app/Activity;
    //   434: invokevirtual 538	com/alipay/sdk/data/a:a	(Landroid/content/Context;)V
    //   437: aload_0
    //   438: invokespecial 197	com/alipay/sdk/app/PayTask:c	()V
    //   441: aload_0
    //   442: getfield 49	com/alipay/sdk/app/PayTask:b	Landroid/app/Activity;
    //   445: aload_1
    //   446: invokestatic 541	com/alipay/sdk/app/statistic/a:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   449: aload 5
    //   451: athrow
    //   452: iload_3
    //   453: iconst_1
    //   454: iadd
    //   455: istore_3
    //   456: aload 7
    //   458: astore 6
    //   460: goto -262 -> 198
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	463	0	this	PayTask
    //   0	463	1	paramString	String
    //   0	463	2	paramBoolean	boolean
    //   197	259	3	i	int
    //   268	100	4	j	int
    //   31	156	5	localObject1	Object
    //   388	1	5	localThrowable1	Throwable
    //   393	1	5	str	String
    //   425	25	5	localObject2	Object
    //   1	270	6	localObject3	Object
    //   372	9	6	localThrowable2	Throwable
    //   458	1	6	localObject4	Object
    //   4	453	7	localObject5	Object
    //   81	58	8	localObject6	Object
    //   72	177	9	localObject7	Object
    //   265	84	10	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   122	130	372	java/lang/Throwable
    //   130	148	372	java/lang/Throwable
    //   186	196	372	java/lang/Throwable
    //   202	209	372	java/lang/Throwable
    //   213	226	372	java/lang/Throwable
    //   230	267	372	java/lang/Throwable
    //   274	331	372	java/lang/Throwable
    //   334	360	372	java/lang/Throwable
    //   16	99	388	java/lang/Throwable
    //   103	116	388	java/lang/Throwable
    //   116	122	388	java/lang/Throwable
    //   175	183	388	java/lang/Throwable
    //   374	385	388	java/lang/Throwable
    //   12	16	420	finally
    //   148	170	420	finally
    //   395	417	420	finally
    //   427	452	420	finally
    //   16	99	425	finally
    //   103	116	425	finally
    //   116	122	425	finally
    //   122	130	425	finally
    //   130	148	425	finally
    //   175	183	425	finally
    //   186	196	425	finally
    //   202	209	425	finally
    //   213	226	425	finally
    //   230	267	425	finally
    //   274	331	425	finally
    //   334	360	425	finally
    //   374	385	425	finally
    //   390	395	425	finally
  }
  
  public Map<String, String> payV2(String paramString, boolean paramBoolean)
  {
    try
    {
      paramString = j.a(pay(paramString, paramBoolean));
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  private final class a
  {
    String a = "";
    String b = "";
    
    private a() {}
    
    private String a()
    {
      return this.a;
    }
    
    private void a(String paramString)
    {
      this.a = paramString;
    }
    
    private String b()
    {
      return this.b;
    }
    
    private void b(String paramString)
    {
      this.b = paramString;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\app\PayTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */