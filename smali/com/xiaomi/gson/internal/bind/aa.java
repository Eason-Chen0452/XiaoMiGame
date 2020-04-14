package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.JsonSyntaxException;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonToken;
import java.util.BitSet;

final class aa
  extends TypeAdapter<BitSet>
{
  private static BitSet b(JsonReader paramJsonReader)
  {
    if (paramJsonReader.f() == JsonToken.NULL)
    {
      paramJsonReader.j();
      return null;
    }
    BitSet localBitSet = new BitSet();
    paramJsonReader.a();
    Object localObject = paramJsonReader.f();
    int i = 0;
    if (localObject != JsonToken.END_ARRAY)
    {
      boolean bool;
      switch (at.a[localObject.ordinal()])
      {
      default: 
        throw new JsonSyntaxException("Invalid bitset value type: " + localObject);
      case 1: 
        if (paramJsonReader.m() != 0) {
          bool = true;
        }
        break;
      }
      for (;;)
      {
        if (bool) {
          localBitSet.set(i);
        }
        i += 1;
        localObject = paramJsonReader.f();
        break;
        bool = false;
        continue;
        bool = paramJsonReader.i();
        continue;
        localObject = paramJsonReader.h();
        try
        {
          int j = Integer.parseInt((String)localObject);
          if (j != 0) {
            bool = true;
          } else {
            bool = false;
          }
        }
        catch (NumberFormatException paramJsonReader)
        {
          throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + (String)localObject);
        }
      }
    }
    paramJsonReader.b();
    return localBitSet;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */