package com.mi.milink.sdk.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

public abstract interface IPacketCallback
  extends IInterface
{
  public abstract boolean onReceive(List<PacketData> paramList)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IPacketCallback
  {
    private static final String DESCRIPTOR = "com.mi.milink.sdk.aidl.IPacketCallback";
    static final int TRANSACTION_onReceive = 1;
    
    public Stub()
    {
      attachInterface(this, "com.mi.milink.sdk.aidl.IPacketCallback");
    }
    
    public static IPacketCallback asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.mi.milink.sdk.aidl.IPacketCallback");
      if ((localIInterface != null) && ((localIInterface instanceof IPacketCallback))) {
        return (IPacketCallback)localIInterface;
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
        paramParcel2.writeString("com.mi.milink.sdk.aidl.IPacketCallback");
        return true;
      }
      paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IPacketCallback");
      boolean bool = onReceive(paramParcel1.createTypedArrayList(PacketData.CREATOR));
      paramParcel2.writeNoException();
      if (bool) {}
      for (paramInt1 = 1;; paramInt1 = 0)
      {
        paramParcel2.writeInt(paramInt1);
        return true;
      }
    }
    
    private static class Proxy
      implements IPacketCallback
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
        return "com.mi.milink.sdk.aidl.IPacketCallback";
      }
      
      /* Error */
      public boolean onReceive(List<PacketData> paramList)
        throws RemoteException
      {
        // Byte code:
        //   0: iconst_1
        //   1: istore_3
        //   2: invokestatic 36	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   5: astore 4
        //   7: invokestatic 36	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   10: astore 5
        //   12: aload 4
        //   14: ldc 26
        //   16: invokevirtual 40	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   19: aload 4
        //   21: aload_1
        //   22: invokevirtual 44	android/os/Parcel:writeTypedList	(Ljava/util/List;)V
        //   25: aload_0
        //   26: getfield 19	com/mi/milink/sdk/aidl/IPacketCallback$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   29: iconst_1
        //   30: aload 4
        //   32: aload 5
        //   34: iconst_0
        //   35: invokeinterface 50 5 0
        //   40: pop
        //   41: aload 5
        //   43: invokevirtual 53	android/os/Parcel:readException	()V
        //   46: aload 5
        //   48: invokevirtual 57	android/os/Parcel:readInt	()I
        //   51: istore_2
        //   52: iload_2
        //   53: ifeq +15 -> 68
        //   56: aload 5
        //   58: invokevirtual 60	android/os/Parcel:recycle	()V
        //   61: aload 4
        //   63: invokevirtual 60	android/os/Parcel:recycle	()V
        //   66: iload_3
        //   67: ireturn
        //   68: iconst_0
        //   69: istore_3
        //   70: goto -14 -> 56
        //   73: astore_1
        //   74: aload 5
        //   76: invokevirtual 60	android/os/Parcel:recycle	()V
        //   79: aload 4
        //   81: invokevirtual 60	android/os/Parcel:recycle	()V
        //   84: aload_1
        //   85: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	86	0	this	Proxy
        //   0	86	1	paramList	List<PacketData>
        //   51	2	2	i	int
        //   1	69	3	bool	boolean
        //   5	75	4	localParcel1	Parcel
        //   10	65	5	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   12	52	73	finally
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\aidl\IPacketCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */