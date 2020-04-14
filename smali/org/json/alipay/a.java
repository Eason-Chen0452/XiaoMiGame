package org.json.alipay;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;

public class a
{
  private ArrayList a;
  
  public a()
  {
    this.a = new ArrayList();
  }
  
  public a(Object paramObject)
  {
    this();
    if (paramObject.getClass().isArray())
    {
      int j = Array.getLength(paramObject);
      int i = 0;
      while (i < j)
      {
        Object localObject = Array.get(paramObject, i);
        this.a.add(localObject);
        i += 1;
      }
    }
    throw new JSONException("JSONArray initial value should be a string or collection or array.");
  }
  
  public a(String paramString)
  {
    this(new c(paramString));
  }
  
  public a(Collection paramCollection)
  {
    if (paramCollection == null) {}
    for (paramCollection = new ArrayList();; paramCollection = new ArrayList(paramCollection))
    {
      this.a = paramCollection;
      return;
    }
  }
  
  public a(c paramc)
  {
    this();
    int i = paramc.c();
    char c;
    if (i == 91)
    {
      c = ']';
      if (paramc.c() != ']') {
        break label47;
      }
    }
    label47:
    do
    {
      return;
      if (i == 40)
      {
        c = ')';
        break;
      }
      throw paramc.a("A JSONArray text must start with '['");
      paramc.a();
      for (;;)
      {
        if (paramc.c() == ',')
        {
          paramc.a();
          this.a.add(null);
        }
        for (;;)
        {
          i = paramc.c();
          switch (i)
          {
          default: 
            throw paramc.a("Expected a ',' or ']'");
            paramc.a();
            this.a.add(paramc.d());
          }
        }
        if (paramc.c() == ']') {
          break;
        }
        paramc.a();
      }
    } while (c == i);
    throw paramc.a("Expected a '" + new Character(c) + "'");
  }
  
  private String a(String paramString)
  {
    int j = this.a.size();
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < j)
    {
      if (i > 0) {
        localStringBuffer.append(paramString);
      }
      localStringBuffer.append(b.a(this.a.get(i)));
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  public final int a()
  {
    return this.a.size();
  }
  
  public final Object a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.a.size())) {}
    for (Object localObject = null; localObject == null; localObject = this.a.get(paramInt)) {
      throw new JSONException("JSONArray[" + paramInt + "] not found.");
    }
    return localObject;
  }
  
  public String toString()
  {
    try
    {
      String str = "[" + a(",") + ']';
      return str;
    }
    catch (Exception localException) {}
    return null;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\json\alipay\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */