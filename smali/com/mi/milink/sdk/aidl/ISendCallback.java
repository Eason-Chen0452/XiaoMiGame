package com.mi.milink.sdk.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface ISendCallback
  extends IInterface
{
  public abstract void onFailed(int paramInt, String paramString)
    throws RemoteException;
  
  public abstract void onRsponse(PacketData paramPacketData)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements ISendCallback
  {
    private static final String DESCRIPTOR = "com.mi.milink.sdk.aidl.ISendCallback";
    static final int TRANSACTION_onFailed = 2;
    static final int TRANSACTION_onRsponse = 1;
    
    public Stub()
    {
      attachInterface(this, "com.mi.milink.sdk.aidl.ISendCallback");
    }
    
    public static ISendCallback asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.mi.milink.sdk.aidl.ISendCallback");
      if ((localIInterface != null) && ((localIInterface instanceof ISendCallback))) {
        return (ISendCallback)localIInterface;
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
        paramParcel2.writeString("com.mi.milink.sdk.aidl.ISendCallback");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.ISendCallback");
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (PacketData)PacketData.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          onRsponse(paramParcel1);
          paramParcel2.writeNoException();
          return true;
        }
      }
      paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.ISendCallback");
      onFailed(paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    }
    
    private static class Proxy
      implements ISendCallback
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
        return "com.mi.milink.sdk.aidl.ISendCallback";
      }
      
      public void onFailed(int paramInt, String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.ISendCallback");
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
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
      
      /* Error */
      public void onRsponse(PacketData paramPacketData)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 36	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 36	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 26
        //   11: invokevirtual 40	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +41 -> 56
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 44	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 68	com/mi/milink/sdk/aidl/PacketData:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 19	com/mi/milink/sdk/aidl/ISendCallback$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   33: iconst_1
        //   34: aload_2
        //   35: aload_3
        //   36: iconst_0
        //   37: invokeinterface 53 5 0
        //   42: pop
        //   43: aload_3
        //   44: invokevirtual 56	android/os/Parcel:readException	()V
        //   47: aload_3
        //   48: invokevirtual 59	android/os/Parcel:recycle	()V
        //   51: aload_2
        //   52: invokevirtual 59	android/os/Parcel:recycle	()V
        //   55: return
        //   56: aload_2
        //   57: iconst_0
        //   58: invokevirtual 44	android/os/Parcel:writeInt	(I)V
        //   61: goto -32 -> 29
        //   64: astore_1
        //   65: aload_3
        //   66: invokevirtual 59	android/os/Parcel:recycle	()V
        //   69: aload_2
        //   70: invokevirtual 59	android/os/Parcel:recycle	()V
        //   73: aload_1
        //   74: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	75	0	this	Proxy
        //   0	75	1	paramPacketData	PacketData
        //   3	67	2	localParcel1	Parcel
        //   7	59	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	64	finally
        //   18	29	64	finally
        //   29	47	64	finally
        //   56	61	64	finally
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\aidl\ISendCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */