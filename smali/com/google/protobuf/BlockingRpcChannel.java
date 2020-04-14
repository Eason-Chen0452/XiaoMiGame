package com.google.protobuf;

public abstract interface BlockingRpcChannel
{
  public abstract Message callBlockingMethod(Descriptors.MethodDescriptor paramMethodDescriptor, RpcController paramRpcController, Message paramMessage1, Message paramMessage2)
    throws ServiceException;
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\protobuf\BlockingRpcChannel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */