package com.mi.milink.sdk.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface IEventCallback
  extends IInterface
{
  public abstract void onEventGetServiceToken()
    throws RemoteException;
  
  public abstract void onEventInvalidPacket()
    throws RemoteException;
  
  public abstract void onEventKickedByServer(int paramInt, long paramLong, String paramString)
    throws RemoteException;
  
  public abstract void onEventServiceTokenExpired()
    throws RemoteException;
  
  public abstract void onEventShouldCheckUpdate()
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IEventCallback
  {
    private static final String DESCRIPTOR = "com.mi.milink.sdk.aidl.IEventCallback";
    static final int TRANSACTION_onEventGetServiceToken = 1;
    static final int TRANSACTION_onEventInvalidPacket = 4;
    static final int TRANSACTION_onEventKickedByServer = 5;
    static final int TRANSACTION_onEventServiceTokenExpired = 2;
    static final int TRANSACTION_onEventShouldCheckUpdate = 3;
    
    public Stub()
    {
      attachInterface(this, "com.mi.milink.sdk.aidl.IEventCallback");
    }
    
    public static IEventCallback asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.mi.milink.sdk.aidl.IEventCallback");
      if ((localIInterface != null) && ((localIInterface instanceof IEventCallback))) {
        return (IEventCallback)localIInterface;
      }
      return new Proxy(paramIBinder);
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.mi.milink.sdk.aidl.IEventCallback");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IEventCallback");
        onEventGetServiceToken();
        paramParcel2.writeNoException();
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IEventCallback");
        onEventServiceTokenExpired();
        paramParcel2.writeNoException();
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IEventCallback");
        onEventShouldCheckUpdate();
        paramParcel2.writeNoException();
        return true;
      case 4: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IEventCallback");
        onEventInvalidPacket();
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IEventCallback");
      onEventKickedByServer(paramParcel1.readInt(), paramParcel1.readLong(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    }
    
    private static class Proxy
      implements IEventCallback
    {
      private IBinder mRemote;
      
      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }
      
      public IBinder asBinder()
      {
        return this.mRemote;
      }
      
      public String getInterfaceDescriptor()
      {
        return "com.mi.milink.sdk.aidl.IEventCallback";
      }
      
      public void onEventGetServiceToken()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IEventCallback");
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onEventInvalidPacket()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IEventCallback");
          this.mRemote.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onEventKickedByServer(int paramInt, long paramLong, String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IEventCallback");
          localParcel1.writeInt(paramInt);
          localParcel1.writeLong(paramLong);
          localParcel1.writeString(paramString);
          this.mRemote.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onEventServiceTokenExpired()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IEventCallback");
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onEventShouldCheckUpdate()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IEventCallback");
          this.mRemote.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\aidl\IEventCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */