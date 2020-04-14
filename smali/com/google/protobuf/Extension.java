package com.google.protobuf;

public abstract class Extension<ContainingType extends MessageLite, Type>
{
  protected abstract Object fromReflectionType(Object paramObject);
  
  public abstract Type getDefaultValue();
  
  public abstract Descriptors.FieldDescriptor getDescriptor();
  
  protected ExtensionType getExtensionType()
  {
    return ExtensionType.IMMUTABLE;
  }
  
  public abstract WireFormat.FieldType getLiteType();
  
  public abstract MessageLite getMessageDefaultInstance();
  
  public MessageType getMessageType()
  {
    return MessageType.PROTO2;
  }
  
  public abstract int getNumber();
  
  public abstract boolean isRepeated();
  
  protected abstract Object singularFromReflectionType(Object paramObject);
  
  protected abstract Object singularToReflectionType(Object paramObject);
  
  protected abstract Object toReflectionType(Object paramObject);
  
  protected static enum ExtensionType
  {
    IMMUTABLE,  MUTABLE,  PROTO1;
    
    private ExtensionType() {}
  }
  
  public static enum MessageType
  {
    PROTO1,  PROTO2;
    
    private MessageType() {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\protobuf\Extension.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */