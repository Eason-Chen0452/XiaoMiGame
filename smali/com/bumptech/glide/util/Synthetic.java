package com.bumptech.glide.util;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.SOURCE)
@Target({java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.CONSTRUCTOR, java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.TYPE})
public @interface Synthetic {}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\util\Synthetic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */