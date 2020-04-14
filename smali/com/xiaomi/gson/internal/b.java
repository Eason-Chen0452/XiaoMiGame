package com.xiaomi.gson.internal;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Properties;

public final class b
{
  static final Type[] a = new Type[0];
  
  static int a(Object paramObject)
  {
    if (paramObject != null) {
      return paramObject.hashCode();
    }
    return 0;
  }
  
  public static Type a(Type paramType)
  {
    if ((paramType instanceof Class))
    {
      paramType = (Class)paramType;
      if (paramType.isArray()) {
        paramType = new .Gson.Types.GenericArrayTypeImpl(a(paramType.getComponentType()));
      }
      for (;;)
      {
        return (Type)paramType;
      }
    }
    if ((paramType instanceof ParameterizedType))
    {
      paramType = (ParameterizedType)paramType;
      return new .Gson.Types.ParameterizedTypeImpl(paramType.getOwnerType(), paramType.getRawType(), paramType.getActualTypeArguments());
    }
    if ((paramType instanceof GenericArrayType)) {
      return new .Gson.Types.GenericArrayTypeImpl(((GenericArrayType)paramType).getGenericComponentType());
    }
    if ((paramType instanceof WildcardType))
    {
      paramType = (WildcardType)paramType;
      return new .Gson.Types.WildcardTypeImpl(paramType.getUpperBounds(), paramType.getLowerBounds());
    }
    return paramType;
  }
  
  public static Type a(Type paramType, Class<?> paramClass)
  {
    paramClass = b(paramType, paramClass, Collection.class);
    paramType = paramClass;
    if ((paramClass instanceof WildcardType)) {
      paramType = ((WildcardType)paramClass).getUpperBounds()[0];
    }
    if ((paramType instanceof ParameterizedType)) {
      return ((ParameterizedType)paramType).getActualTypeArguments()[0];
    }
    return Object.class;
  }
  
  private static Type a(Type paramType, Class<?> paramClass1, Class<?> paramClass2)
  {
    Object localObject = paramClass1;
    paramClass1 = paramType;
    paramType = (Type)localObject;
    if (paramClass2 == paramType) {}
    label13:
    label89:
    do
    {
      return paramClass1;
      if (paramClass2.isInterface())
      {
        localObject = paramType.getInterfaces();
        int i = 0;
        int j = localObject.length;
        for (;;)
        {
          if (i >= j) {
            break label89;
          }
          if (localObject[i] == paramClass2) {
            return paramType.getGenericInterfaces()[i];
          }
          if (paramClass2.isAssignableFrom(localObject[i]))
          {
            paramClass1 = paramType.getGenericInterfaces()[i];
            paramType = localObject[i];
            break;
          }
          i += 1;
        }
      }
      paramClass1 = paramClass2;
    } while (paramType.isInterface());
    for (;;)
    {
      paramClass1 = paramClass2;
      if (paramType == Object.class) {
        break label13;
      }
      paramClass1 = paramType.getSuperclass();
      if (paramClass1 == paramClass2) {
        return paramType.getGenericSuperclass();
      }
      if (paramClass2.isAssignableFrom(paramClass1))
      {
        localObject = paramType.getGenericSuperclass();
        paramType = paramClass1;
        paramClass1 = (Class<?>)localObject;
        break;
      }
      paramType = paramClass1;
    }
  }
  
  public static Type a(Type paramType1, Class<?> paramClass, Type paramType2)
  {
    Object localObject1 = paramType2;
    Object localObject2;
    int i;
    label65:
    label95:
    do
    {
      if (!(localObject1 instanceof TypeVariable)) {
        break label132;
      }
      localObject2 = (TypeVariable)localObject1;
      paramType2 = ((TypeVariable)localObject2).getGenericDeclaration();
      if (!(paramType2 instanceof Class)) {
        break;
      }
      paramType2 = (Class)paramType2;
      if (paramType2 == null) {
        break label126;
      }
      localObject1 = a(paramType1, paramClass, paramType2);
      if (!(localObject1 instanceof ParameterizedType)) {
        break label126;
      }
      paramType2 = paramType2.getTypeParameters();
      i = 0;
      if (i >= paramType2.length) {
        break label118;
      }
      if (!localObject2.equals(paramType2[i])) {
        break label111;
      }
      paramType2 = ((ParameterizedType)localObject1).getActualTypeArguments()[i];
      localObject1 = paramType2;
    } while (paramType2 != localObject2);
    label111:
    label118:
    label126:
    label132:
    label182:
    do
    {
      do
      {
        return paramType2;
        paramType2 = null;
        break;
        i += 1;
        break label65;
        throw new NoSuchElementException();
        paramType2 = (Type)localObject2;
        break label95;
        if ((!(localObject1 instanceof Class)) || (!((Class)localObject1).isArray())) {
          break label182;
        }
        paramType2 = (Class)localObject1;
        localObject1 = paramType2.getComponentType();
        paramType1 = a(paramType1, paramClass, (Type)localObject1);
      } while (localObject1 == paramType1);
      return f(paramType1);
      if (!(localObject1 instanceof GenericArrayType)) {
        break label223;
      }
      paramType2 = (GenericArrayType)localObject1;
      localObject1 = paramType2.getGenericComponentType();
      paramType1 = a(paramType1, paramClass, (Type)localObject1);
    } while (localObject1 == paramType1);
    return f(paramType1);
    label223:
    Object localObject3;
    label262:
    int j;
    if ((localObject1 instanceof ParameterizedType))
    {
      localObject2 = (ParameterizedType)localObject1;
      paramType2 = ((ParameterizedType)localObject2).getOwnerType();
      localObject3 = a(paramType1, paramClass, paramType2);
      if (localObject3 != paramType2)
      {
        i = 1;
        localObject1 = ((ParameterizedType)localObject2).getActualTypeArguments();
        int k = localObject1.length;
        j = 0;
        label279:
        if (j >= k) {
          break label346;
        }
        Type localType = a(paramType1, paramClass, localObject1[j]);
        if (localType == localObject1[j]) {
          break label519;
        }
        if (i != 0) {
          break label513;
        }
        paramType2 = (Type[])((Type[])localObject1).clone();
        i = 1;
        label323:
        paramType2[j] = localType;
      }
    }
    for (;;)
    {
      j += 1;
      localObject1 = paramType2;
      break label279;
      i = 0;
      break label262;
      label346:
      paramType2 = (Type)localObject2;
      if (i == 0) {
        break;
      }
      return new .Gson.Types.ParameterizedTypeImpl((Type)localObject3, ((ParameterizedType)localObject2).getRawType(), (Type[])localObject1);
      paramType2 = (Type)localObject1;
      if (!(localObject1 instanceof WildcardType)) {
        break;
      }
      localObject1 = (WildcardType)localObject1;
      localObject2 = ((WildcardType)localObject1).getLowerBounds();
      localObject3 = ((WildcardType)localObject1).getUpperBounds();
      if (localObject2.length == 1)
      {
        paramType1 = a(paramType1, paramClass, localObject2[0]);
        paramType2 = (Type)localObject1;
        if (paramType1 == localObject2[0]) {
          break;
        }
        return new .Gson.Types.WildcardTypeImpl(new Type[] { Object.class }, new Type[] { paramType1 });
      }
      paramType2 = (Type)localObject1;
      if (localObject3.length != 1) {
        break;
      }
      paramType1 = a(paramType1, paramClass, localObject3[0]);
      paramType2 = (Type)localObject1;
      if (paramType1 == localObject3[0]) {
        break;
      }
      paramClass = a;
      return new .Gson.Types.WildcardTypeImpl(new Type[] { paramType1 }, paramClass);
      label513:
      paramType2 = (Type)localObject1;
      break label323;
      label519:
      paramType2 = (Type)localObject1;
    }
  }
  
  public static boolean a(Type paramType1, Type paramType2)
  {
    Type localType1 = paramType1;
    for (paramType1 = paramType2;; paramType1 = paramType1.getGenericComponentType())
    {
      if (localType1 == paramType1) {
        return true;
      }
      if ((localType1 instanceof Class)) {
        return localType1.equals(paramType1);
      }
      if ((localType1 instanceof ParameterizedType))
      {
        if (!(paramType1 instanceof ParameterizedType)) {
          return false;
        }
        paramType2 = (ParameterizedType)localType1;
        paramType1 = (ParameterizedType)paramType1;
        localType1 = paramType2.getOwnerType();
        Type localType2 = paramType1.getOwnerType();
        if ((localType1 == localType2) || ((localType1 != null) && (localType1.equals(localType2)))) {}
        for (int i = 1; (i != 0) && (paramType2.getRawType().equals(paramType1.getRawType())) && (Arrays.equals(paramType2.getActualTypeArguments(), paramType1.getActualTypeArguments())); i = 0) {
          return true;
        }
        return false;
      }
      if (!(localType1 instanceof GenericArrayType)) {
        break;
      }
      if (!(paramType1 instanceof GenericArrayType)) {
        return false;
      }
      paramType2 = (GenericArrayType)localType1;
      paramType1 = (GenericArrayType)paramType1;
      localType1 = paramType2.getGenericComponentType();
    }
    if ((localType1 instanceof WildcardType))
    {
      if (!(paramType1 instanceof WildcardType)) {
        return false;
      }
      paramType2 = (WildcardType)localType1;
      paramType1 = (WildcardType)paramType1;
      return (Arrays.equals(paramType2.getUpperBounds(), paramType1.getUpperBounds())) && (Arrays.equals(paramType2.getLowerBounds(), paramType1.getLowerBounds()));
    }
    if ((localType1 instanceof TypeVariable))
    {
      if (!(paramType1 instanceof TypeVariable)) {
        return false;
      }
      paramType2 = (TypeVariable)localType1;
      paramType1 = (TypeVariable)paramType1;
      return (paramType2.getGenericDeclaration() == paramType1.getGenericDeclaration()) && (paramType2.getName().equals(paramType1.getName()));
    }
    return false;
  }
  
  public static Class<?> b(Type paramType)
  {
    for (;;)
    {
      if ((paramType instanceof Class)) {
        return (Class)paramType;
      }
      if ((paramType instanceof ParameterizedType))
      {
        paramType = ((ParameterizedType)paramType).getRawType();
        a.a(paramType instanceof Class);
        return (Class)paramType;
      }
      if ((paramType instanceof GenericArrayType)) {
        return Array.newInstance(b(((GenericArrayType)paramType).getGenericComponentType()), 0).getClass();
      }
      if ((paramType instanceof TypeVariable)) {
        return Object.class;
      }
      if (!(paramType instanceof WildcardType)) {
        break;
      }
      paramType = ((WildcardType)paramType).getUpperBounds()[0];
    }
    if (paramType == null) {}
    for (String str = "null";; str = paramType.getClass().getName()) {
      throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + paramType + "> is of type " + str);
    }
  }
  
  private static Type b(Type paramType, Class<?> paramClass1, Class<?> paramClass2)
  {
    a.a(paramClass2.isAssignableFrom(paramClass1));
    return a(paramType, paramClass1, a(paramType, paramClass1, paramClass2));
  }
  
  public static Type[] b(Type paramType, Class<?> paramClass)
  {
    if (paramType == Properties.class) {
      return new Type[] { String.class, String.class };
    }
    paramType = b(paramType, paramClass, Map.class);
    if ((paramType instanceof ParameterizedType)) {
      return ((ParameterizedType)paramType).getActualTypeArguments();
    }
    return new Type[] { Object.class, Object.class };
  }
  
  public static String c(Type paramType)
  {
    if ((paramType instanceof Class)) {
      return ((Class)paramType).getName();
    }
    return paramType.toString();
  }
  
  public static Type d(Type paramType)
  {
    if ((paramType instanceof GenericArrayType)) {
      return ((GenericArrayType)paramType).getGenericComponentType();
    }
    return ((Class)paramType).getComponentType();
  }
  
  static void e(Type paramType)
  {
    if ((!(paramType instanceof Class)) || (!((Class)paramType).isPrimitive())) {}
    for (boolean bool = true;; bool = false)
    {
      a.a(bool);
      return;
    }
  }
  
  private static GenericArrayType f(Type paramType)
  {
    return new .Gson.Types.GenericArrayTypeImpl(paramType);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */