package com.xiaomi.licensinglibrary.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.StringTokenizer;

public class ProductCatalog
{
  String a;
  String b;
  String c;
  int d = -1;
  long e = -1L;
  Date f;
  Date g;
  Locale h;
  String i;
  String j;
  
  public ProductCatalog(String paramString1, String paramString2, String paramString3, int paramInt, long paramLong, Date paramDate1, Date paramDate2, Locale paramLocale, String paramString4, String paramString5)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramInt;
    this.e = paramLong;
    this.f = paramDate1;
    this.g = paramDate2;
    this.h = paramLocale;
    this.i = paramString4;
    this.j = paramString5;
  }
  
  public ProductCatalog(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10)
    throws ParseException
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = Integer.parseInt(paramString4);
    this.e = Long.parseLong(paramString5);
    paramString1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
    try
    {
      this.f = paramString1.parse(paramString6);
      this.g = paramString1.parse(paramString7);
      paramString2 = new StringTokenizer(paramString8, ",");
      if (paramString2.hasMoreTokens())
      {
        paramString1 = (String)paramString2.nextElement();
        if (paramString2.hasMoreTokens())
        {
          paramString2 = (String)paramString2.nextElement();
          this.h = new Locale(paramString1, paramString2);
          this.i = paramString9;
          this.j = paramString10;
          return;
        }
      }
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        paramString1.printStackTrace();
        continue;
        paramString2 = "";
        continue;
        paramString1 = "";
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\model\ProductCatalog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */