package com.xiaomi.gamecenter.sdk.for3thd;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface IInstallCallback
  extends IInterface
{
  public abstract void packageInstalled(int paramInt)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IInstallCallback
  {
    private static final String DESCRIPTOR = "com.xiaomi.gamecenter.for3thd.IInstallCallback";
    static final int TRANSACTION_packageInstalled = 1;
    
    public Stub()
    {
      attachInterface(this, "com.xiaomi.gamecenter.for3thd.IInstallCallback");
    }
    
    public static IInstallCallback asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.gamecenter.for3thd.IInstallCallback");
      if ((localIInterface != null) && ((localIInterface instanceof IInstallCallback))) {
        return (IInstallCallback)localIInterface;
      }
      return new a(paramIBinder);
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
        paramParcel2.writeString("com.xiaomi.gamecenter.for3thd.IInstallCallback");
        return true;
      }
      paramParcel1.enforceInterface("com.xiaomi.gamecenter.for3thd.IInstallCallback");
      packageInstalled(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    }
    
    private static final class a
      implements IInstallCallback
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      public final IBinder asBinder()
      {
        return this.a;
      }
      
      public final void packageInstalled(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.for3thd.IInstallCallback");
          localParcel1.writeInt(paramInt);
          this.a.transact(1, localParcel1, localParcel2, 0);
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\for3thd\IInstallCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */