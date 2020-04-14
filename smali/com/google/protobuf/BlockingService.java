package com.google.protobuf;

public abstract interface BlockingService
{
  public abstract Message callBlockingMethod(Descriptors.MethodDescriptor paramMethodDescriptor, RpcController paramRpcController, Message paramMessage)
    throws ServiceException;
  
  public abstract Descriptors.ServiceDescriptor getDescriptorForType();
  
  public abstract Message getRequestPrototype(Descriptors.MethodDescriptor paramMethodDescriptor);
  
  public abstract Message getResponsePrototype(Descriptors.MethodDescriptor paramMethodDescriptor);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\protobuf\BlockingService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */