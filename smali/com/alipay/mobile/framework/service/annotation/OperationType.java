package com.alipay.mobile.framework.service.annotation;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OperationType
{
  String value();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\mobile\framework\service\annotation\OperationType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */