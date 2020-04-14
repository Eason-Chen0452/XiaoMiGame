package com.google.protobuf;

public abstract interface Service
{
  public abstract void callMethod(Descriptors.MethodDescriptor paramMethodDescriptor, RpcController paramRpcController, Message paramMessage, RpcCallback<Message> paramRpcCallback);
  
  public abstract Descriptors.ServiceDescriptor getDescriptorForType();
  
  public abstract Message getRequestPrototype(Descriptors.MethodDescriptor paramMethodDescriptor);
  
  public abstract Message getResponsePrototype(Descriptors.MethodDescriptor paramMethodDescriptor);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\protobuf\Service.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */