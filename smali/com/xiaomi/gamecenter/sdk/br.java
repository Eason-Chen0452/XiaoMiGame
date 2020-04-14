package com.xiaomi.gamecenter.sdk;

import com.xiaomi.gson.internal.a;
import com.xiaomi.gson.internal.b;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.HashMap;
import java.util.Map;

public class br<T>
{
  final int hashCode;
  final Class<? super T> rawType;
  final Type type;
  
  protected br()
  {
    this.type = getSuperclassTypeParameter(getClass());
    this.rawType = b.b(this.type);
    this.hashCode = this.type.hashCode();
  }
  
  br(Type paramType)
  {
    this.type = b.a((Type)a.a(paramType));
    this.rawType = b.b(this.type);
    this.hashCode = this.type.hashCode();
  }
  
  private static AssertionError buildUnexpectedTypeError(Type paramType, Class<?>... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder("Unexpected type. Expected one of: ");
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      localStringBuilder.append(paramVarArgs[i].getName()).append(", ");
      i += 1;
    }
    localStringBuilder.append("but got: ").append(paramType.getClass().getName()).append(", for type token: ").append(paramType.toString()).append('.');
    return new AssertionError(localStringBuilder.toString());
  }
  
  public static <T> br<T> get(Class<T> paramClass)
  {
    return new br(paramClass);
  }
  
  public static br<?> get(Type paramType)
  {
    return new br(paramType);
  }
  
  static Type getSuperclassTypeParameter(Class<?> paramClass)
  {
    paramClass = paramClass.getGenericSuperclass();
    if ((paramClass instanceof Class)) {
      throw new RuntimeException("Missing type parameter.");
    }
    return b.a(((ParameterizedType)paramClass).getActualTypeArguments()[0]);
  }
  
  private static boolean isAssignableFrom(Type paramType, GenericArrayType paramGenericArrayType)
  {
    Type localType = paramGenericArrayType.getGenericComponentType();
    if ((localType instanceof ParameterizedType))
    {
      if ((paramType instanceof GenericArrayType)) {
        paramGenericArrayType = ((GenericArrayType)paramType).getGenericComponentType();
      }
      do
      {
        return isAssignableFrom(paramGenericArrayType, (ParameterizedType)localType, new HashMap());
        paramGenericArrayType = paramType;
      } while (!(paramType instanceof Class));
      for (paramType = (Class)paramType;; paramType = paramType.getComponentType())
      {
        paramGenericArrayType = paramType;
        if (!paramType.isArray()) {
          break;
        }
      }
    }
    return true;
  }
  
  private static boolean isAssignableFrom(Type paramType, ParameterizedType paramParameterizedType, Map<String, Type> paramMap)
  {
    if (paramType == null) {
      return false;
    }
    if (paramParameterizedType.equals(paramType)) {
      return true;
    }
    Class localClass = b.b(paramType);
    if ((paramType instanceof ParameterizedType)) {}
    for (paramType = (ParameterizedType)paramType;; paramType = null)
    {
      if (paramType != null)
      {
        Type[] arrayOfType = paramType.getActualTypeArguments();
        TypeVariable[] arrayOfTypeVariable = localClass.getTypeParameters();
        i = 0;
        while (i < arrayOfType.length)
        {
          Type localType = arrayOfType[i];
          TypeVariable localTypeVariable = arrayOfTypeVariable[i];
          while ((localType instanceof TypeVariable)) {
            localType = (Type)paramMap.get(((TypeVariable)localType).getName());
          }
          paramMap.put(localTypeVariable.getName(), localType);
          i += 1;
        }
        if (typeEquals(paramType, paramParameterizedType, paramMap)) {
          return true;
        }
      }
      paramType = localClass.getGenericInterfaces();
      int j = paramType.length;
      int i = 0;
      while (i < j)
      {
        if (isAssignableFrom(paramType[i], paramParameterizedType, new HashMap(paramMap))) {
          return true;
        }
        i += 1;
      }
      paramType = localClass.getGenericSuperclass();
      paramMap = new HashMap(paramMap);
      break;
    }
  }
  
  private static boolean matches(Type paramType1, Type paramType2, Map<String, Type> paramMap)
  {
    return (paramType2.equals(paramType1)) || (((paramType1 instanceof TypeVariable)) && (paramType2.equals(paramMap.get(((TypeVariable)paramType1).getName()))));
  }
  
  private static boolean typeEquals(ParameterizedType paramParameterizedType1, ParameterizedType paramParameterizedType2, Map<String, Type> paramMap)
  {
    int i;
    if (paramParameterizedType1.getRawType().equals(paramParameterizedType2.getRawType()))
    {
      paramParameterizedType1 = paramParameterizedType1.getActualTypeArguments();
      paramParameterizedType2 = paramParameterizedType2.getActualTypeArguments();
      i = 0;
    }
    while (i < paramParameterizedType1.length)
    {
      if (!matches(paramParameterizedType1[i], paramParameterizedType2[i], paramMap)) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof br)) && (b.a(this.type, ((br)paramObject).type));
  }
  
  public final Class<? super T> getRawType()
  {
    return this.rawType;
  }
  
  public final Type getType()
  {
    return this.type;
  }
  
  public final int hashCode()
  {
    return this.hashCode;
  }
  
  @Deprecated
  public boolean isAssignableFrom(br<?> parambr)
  {
    return isAssignableFrom(parambr.getType());
  }
  
  @Deprecated
  public boolean isAssignableFrom(Class<?> paramClass)
  {
    return isAssignableFrom(paramClass);
  }
  
  @Deprecated
  public boolean isAssignableFrom(Type paramType)
  {
    if (paramType == null) {
      return false;
    }
    if (this.type.equals(paramType)) {
      return true;
    }
    if ((this.type instanceof Class)) {
      return this.rawType.isAssignableFrom(b.b(paramType));
    }
    if ((this.type instanceof ParameterizedType)) {
      return isAssignableFrom(paramType, (ParameterizedType)this.type, new HashMap());
    }
    if ((this.type instanceof GenericArrayType)) {
      return (this.rawType.isAssignableFrom(b.b(paramType))) && (isAssignableFrom(paramType, (GenericArrayType)this.type));
    }
    throw buildUnexpectedTypeError(this.type, new Class[] { Class.class, ParameterizedType.class, GenericArrayType.class });
  }
  
  public final String toString()
  {
    return b.c(this.type);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\br.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */