package com.xiaomi.gson.stream;

import com.xiaomi.gson.internal.JsonReaderInternalAccess;
import com.xiaomi.gson.internal.bind.JsonTreeReader;

final class a
  extends JsonReaderInternalAccess
{
  public final void a(JsonReader paramJsonReader)
  {
    if ((paramJsonReader instanceof JsonTreeReader))
    {
      ((JsonTreeReader)paramJsonReader).o();
      return;
    }
    int j = paramJsonReader.a;
    int i = j;
    if (j == 0) {
      i = paramJsonReader.q();
    }
    if (i == 13)
    {
      paramJsonReader.a = 9;
      return;
    }
    if (i == 12)
    {
      paramJsonReader.a = 8;
      return;
    }
    if (i == 14)
    {
      paramJsonReader.a = 10;
      return;
    }
    throw new IllegalStateException("Expected a name but was " + paramJsonReader.f() + "  at line " + paramJsonReader.r() + " column " + paramJsonReader.s() + " path " + paramJsonReader.t());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\stream\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */