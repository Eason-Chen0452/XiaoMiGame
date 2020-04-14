package com.xiaomi.hy.dj.pbformat;

public class FormatFactory
{
  public ProtobufFormatter createFormatter(Formatter paramFormatter)
  {
    try
    {
      paramFormatter = (ProtobufFormatter)paramFormatter.getFormatterClass().newInstance();
      return paramFormatter;
    }
    catch (InstantiationException paramFormatter)
    {
      throw new RuntimeException(paramFormatter);
    }
    catch (IllegalAccessException paramFormatter)
    {
      throw new RuntimeException(paramFormatter);
    }
  }
  
  public static enum Formatter
  {
    COUCHDB(CouchDBFormat.class),  JAVA_PROPS(JavaPropsFormat.class),  JSON(JsonFormat.class);
    
    private Class<? extends ProtobufFormatter> formatterClass;
    
    private Formatter(Class<? extends ProtobufFormatter> paramClass)
    {
      this.formatterClass = paramClass;
    }
    
    protected final Class<? extends ProtobufFormatter> getFormatterClass()
    {
      return this.formatterClass;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pbformat\FormatFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */