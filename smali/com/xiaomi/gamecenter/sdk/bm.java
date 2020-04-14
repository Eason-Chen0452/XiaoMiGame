package com.xiaomi.gamecenter.sdk;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.FIELD})
public @interface bm
{
  boolean a() default true;
  
  boolean b() default true;
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\bm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */