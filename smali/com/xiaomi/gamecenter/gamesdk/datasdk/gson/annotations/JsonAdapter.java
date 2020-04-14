package com.xiaomi.gamecenter.gamesdk.datasdk.gson.annotations;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE, java.lang.annotation.ElementType.FIELD})
public @interface JsonAdapter
{
  boolean nullSafe() default true;
  
  Class<?> value();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\annotations\JsonAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */