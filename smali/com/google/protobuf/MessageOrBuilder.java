package com.google.protobuf;

import java.util.List;
import java.util.Map;

public abstract interface MessageOrBuilder
  extends MessageLiteOrBuilder
{
  public abstract List<String> findInitializationErrors();
  
  public abstract Map<Descriptors.FieldDescriptor, Object> getAllFields();
  
  public abstract Message getDefaultInstanceForType();
  
  public abstract Descriptors.Descriptor getDescriptorForType();
  
  public abstract Object getField(Descriptors.FieldDescriptor paramFieldDescriptor);
  
  public abstract String getInitializationErrorString();
  
  public abstract Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor paramOneofDescriptor);
  
  public abstract Object getRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt);
  
  public abstract int getRepeatedFieldCount(Descriptors.FieldDescriptor paramFieldDescriptor);
  
  public abstract UnknownFieldSet getUnknownFields();
  
  public abstract boolean hasField(Descriptors.FieldDescriptor paramFieldDescriptor);
  
  public abstract boolean hasOneof(Descriptors.OneofDescriptor paramOneofDescriptor);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\protobuf\MessageOrBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */