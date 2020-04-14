package com.xiaomi.hy.dj.f;

import java.io.PrintStream;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public final class j
{
  private static final String a = "HmacSHA1";
  private static final String b = "UTF-8";
  
  public static String a(String paramString1, String paramString2)
    throws Exception
  {
    paramString2 = new SecretKeySpec(paramString2.getBytes("UTF-8"), "HmacSHA1");
    Mac localMac = Mac.getInstance("HmacSHA1");
    localMac.init(paramString2);
    return a(localMac.doFinal(paramString1.getBytes("UTF-8"))).toString();
  }
  
  public static String a(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    paramString = new SecretKeySpec(paramString.getBytes("UTF-8"), "HmacSHA1");
    Mac localMac = Mac.getInstance("HmacSHA1");
    localMac.init(paramString);
    return a(localMac.doFinal(paramArrayOfByte)).toString();
  }
  
  public static StringBuilder a(byte[] paramArrayOfByte)
  {
    Object localObject;
    if (paramArrayOfByte == null)
    {
      localObject = null;
      return (StringBuilder)localObject;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramArrayOfByte.length;
    int i = 0;
    for (;;)
    {
      localObject = localStringBuilder;
      if (i >= j) {
        break;
      }
      localStringBuilder.append(String.format("%02x", new Object[] { Byte.valueOf(paramArrayOfByte[i]) }));
      i += 1;
    }
  }
  
  public static void a(String[] paramArrayOfString)
  {
    try
    {
      System.out.print(a("p=evOlL3w2vL_FRgFvAnMed47cOh1woWx9PCnlPWUERVYh_PUAz2J-PTxgIoE74gCMCewf3JRTxqCMq49f5KQdYenjCjUUK-138Bi8U6H-_vfnJxaqBZNIdcO5bKE5yk2Fc2MVtUqhGIp5_2fPgVDTPlLEtIwJXpmQYfds8Bp9GwvgwfNoT51I06kxQ1nZVK66xHY0jKYko-eHRuv3vFz7QMdWZnujC5U8dYwPOFQDdbnWgnPdp5uNFm5NGdfZdMBQiicTzZVYOxu6ojKOzyB0to9j59kkcES4sfnzycMYjr2E9pmKRtm-Y6kfmsDMIQoeMBho3ikTkzqs3Rr7uQiD9ASp_HwaEl_x_5UguTR4A5nsqJG1LWKZc66s1Y2zFwDYqYi7p1vxj1_cPq_V5FyqMznaTah1JwckOUr3mSpg6K1SLBHSOZhNf7PtTAvbyx-9YzqGY-YEBB-MV6wVedToHYGWAgHXnLnIbFXa06oKx_o.&session=niynZix5mWYZc6o22U&uid=118795252&uri=​/order-manager/order/v1/createWeChatOrder", "5151740219635&key"));
      return;
    }
    catch (Exception paramArrayOfString)
    {
      paramArrayOfString.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\f\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */