package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.Gson;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapterFactory;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal..Gson.Types;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.ConstructorConstructor;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.ObjectConstructor;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.reflect.TypeToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

public final class CollectionTypeAdapterFactory
  implements TypeAdapterFactory
{
  private final ConstructorConstructor constructorConstructor;
  
  public CollectionTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor)
  {
    this.constructorConstructor = paramConstructorConstructor;
  }
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Type localType = paramTypeToken.getType();
    Class localClass = paramTypeToken.getRawType();
    if (!Collection.class.isAssignableFrom(localClass)) {
      return null;
    }
    localType = .Gson.Types.getCollectionElementType(localType, localClass);
    return new Adapter(paramGson, localType, paramGson.getAdapter(TypeToken.get(localType)), this.constructorConstructor.get(paramTypeToken));
  }
  
  private static final class Adapter<E>
    extends TypeAdapter<Collection<E>>
  {
    private final ObjectConstructor<? extends Collection<E>> constructor;
    private final TypeAdapter<E> elementTypeAdapter;
    
    public Adapter(Gson paramGson, Type paramType, TypeAdapter<E> paramTypeAdapter, ObjectConstructor<? extends Collection<E>> paramObjectConstructor)
    {
      this.elementTypeAdapter = new TypeAdapterRuntimeTypeWrapper(paramGson, paramTypeAdapter, paramType);
      this.constructor = paramObjectConstructor;
    }
    
    public final Collection<E> read(JsonReader paramJsonReader)
    {
      if (paramJsonReader.peek() == JsonToken.NULL)
      {
        paramJsonReader.nextNull();
        return null;
      }
      Collection localCollection = (Collection)this.constructor.construct();
      paramJsonReader.beginArray();
      while (paramJsonReader.hasNext()) {
        localCollection.add(this.elementTypeAdapter.read(paramJsonReader));
      }
      paramJsonReader.endArray();
      return localCollection;
    }
    
    public final void write(JsonWriter paramJsonWriter, Collection<E> paramCollection)
    {
      if (paramCollection == null)
      {
        paramJsonWriter.nullValue();
        return;
      }
      paramJsonWriter.beginArray();
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        Object localObject = paramCollection.next();
        this.elementTypeAdapter.write(paramJsonWriter, localObject);
      }
      paramJsonWriter.endArray();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\CollectionTypeAdapterFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */