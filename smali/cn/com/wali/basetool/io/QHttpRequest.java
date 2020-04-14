package cn.com.wali.basetool.io;

import cn.com.wali.basetool.utils.Pair;
import java.util.ArrayList;

public final class QHttpRequest
{
  String a;
  byte[] b;
  ArrayList<Pair<String, String>> c;
  RequestMethod d = RequestMethod.GET;
  String e;
  String f = "";
  boolean g;
  boolean h = true;
  private int i = 20000;
  
  private QHttpRequest(String paramString1, byte[] paramArrayOfByte, RequestMethod paramRequestMethod, String paramString2, boolean paramBoolean)
  {
    this.a = paramString1;
    this.d = paramRequestMethod;
    paramRequestMethod = paramString2;
    if (paramArrayOfByte != null)
    {
      if (paramString2 != null)
      {
        paramString1 = paramString2;
        if (paramString2.length() != 0) {}
      }
      else
      {
        paramString1 = "application/x-www-form-urlencoded";
      }
      this.b = new byte[paramArrayOfByte.length];
      System.arraycopy(paramArrayOfByte, 0, this.b, 0, this.b.length);
      paramRequestMethod = paramString1;
      if (this.d == RequestMethod.GET)
      {
        this.d = RequestMethod.POST;
        paramRequestMethod = paramString1;
      }
    }
    this.e = paramRequestMethod;
    this.g = paramBoolean;
  }
  
  public static QHttpRequest a(String paramString1, RequestMethod paramRequestMethod, byte[] paramArrayOfByte, String paramString2, boolean paramBoolean)
  {
    if (paramString1 == null) {}
    while ((paramRequestMethod == RequestMethod.POST) && (paramArrayOfByte == null)) {
      return null;
    }
    if (paramRequestMethod == RequestMethod.POST) {
      paramString2 = "application/x-www-form-urlencoded";
    }
    for (;;)
    {
      return new QHttpRequest(paramString1, paramArrayOfByte, paramRequestMethod, paramString2, paramBoolean);
    }
  }
  
  public final byte[] a()
  {
    return this.b;
  }
  
  public final ArrayList<Pair<String, String>> b()
  {
    return this.c;
  }
  
  public final String c()
  {
    return this.e;
  }
  
  public final int d()
  {
    return this.i;
  }
  
  public static enum RequestMethod
  {
    private RequestMethod() {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\cn\com\wali\basetool\io\QHttpRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */