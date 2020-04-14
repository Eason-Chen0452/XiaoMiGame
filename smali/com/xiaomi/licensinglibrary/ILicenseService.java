package com.xiaomi.licensinglibrary;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface ILicenseService
  extends IInterface
{
  public abstract Bundle a()
    throws RemoteException;
  
  public abstract Bundle a(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(String paramString1, String paramString2, String paramString3, int paramInt)
    throws RemoteException;
  
  public abstract Bundle b(Bundle paramBundle)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements ILicenseService
  {
    private static final String DESCRIPTOR = "com.xiaomi.licensinglibrary.ILicenseService";
    static final int TRANSACTION_checkLicense = 1;
    static final int TRANSACTION_getCpOrderId = 4;
    static final int TRANSACTION_getLocalInfo = 2;
    static final int TRANSACTION_sendReport = 3;
    
    public Stub()
    {
      attachInterface(this, "com.xiaomi.licensinglibrary.ILicenseService");
    }
    
    public static ILicenseService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.licensinglibrary.ILicenseService");
      if ((localIInterface != null) && ((localIInterface instanceof ILicenseService))) {
        return (ILicenseService)localIInterface;
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
      Object localObject2 = null;
      Object localObject1 = null;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.xiaomi.licensinglibrary.ILicenseService");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.xiaomi.licensinglibrary.ILicenseService");
        if (paramParcel1.readInt() != 0) {
          localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        }
        paramParcel1 = a((Bundle)localObject1);
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
        }
        for (;;)
        {
          return true;
          paramParcel2.writeInt(0);
        }
      case 2: 
        paramParcel1.enforceInterface("com.xiaomi.licensinglibrary.ILicenseService");
        paramParcel1 = a();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
        }
        for (;;)
        {
          return true;
          paramParcel2.writeInt(0);
        }
      case 3: 
        paramParcel1.enforceInterface("com.xiaomi.licensinglibrary.ILicenseService");
        a(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel1.enforceInterface("com.xiaomi.licensinglibrary.ILicenseService");
      localObject1 = localObject2;
      if (paramParcel1.readInt() != 0) {
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      }
      paramParcel1 = b((Bundle)localObject1);
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
      }
      for (;;)
      {
        return true;
        paramParcel2.writeInt(0);
      }
    }
    
    private static final class a
      implements ILicenseService
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      /* Error */
      public final Bundle a()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 30
        //   11: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	com/xiaomi/licensinglibrary/ILicenseService$Stub$a:a	Landroid/os/IBinder;
        //   18: iconst_2
        //   19: aload_2
        //   20: aload_3
        //   21: iconst_0
        //   22: invokeinterface 40 5 0
        //   27: pop
        //   28: aload_3
        //   29: invokevirtual 43	android/os/Parcel:readException	()V
        //   32: aload_3
        //   33: invokevirtual 47	android/os/Parcel:readInt	()I
        //   36: ifeq +26 -> 62
        //   39: getstatic 53	android/os/Bundle:CREATOR	Landroid/os/Parcelable$Creator;
        //   42: aload_3
        //   43: invokeinterface 59 2 0
        //   48: checkcast 49	android/os/Bundle
        //   51: astore_1
        //   52: aload_3
        //   53: invokevirtual 62	android/os/Parcel:recycle	()V
        //   56: aload_2
        //   57: invokevirtual 62	android/os/Parcel:recycle	()V
        //   60: aload_1
        //   61: areturn
        //   62: aconst_null
        //   63: astore_1
        //   64: goto -12 -> 52
        //   67: astore_1
        //   68: aload_3
        //   69: invokevirtual 62	android/os/Parcel:recycle	()V
        //   72: aload_2
        //   73: invokevirtual 62	android/os/Parcel:recycle	()V
        //   76: aload_1
        //   77: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	78	0	this	a
        //   51	13	1	localBundle	Bundle
        //   67	10	1	localObject	Object
        //   3	70	2	localParcel1	Parcel
        //   7	62	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	52	67	finally
      }
      
      public final Bundle a(Bundle paramBundle)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.licensinglibrary.ILicenseService");
            if (paramBundle != null)
            {
              localParcel1.writeInt(1);
              paramBundle.writeToParcel(localParcel1, 0);
              this.a.transact(1, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramBundle = (Bundle)Bundle.CREATOR.createFromParcel(localParcel2);
                return paramBundle;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramBundle = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final void a(String paramString1, String paramString2, String paramString3, int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.licensinglibrary.ILicenseService");
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeString(paramString3);
          localParcel1.writeInt(paramInt);
          this.a.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final IBinder asBinder()
      {
        return this.a;
      }
      
      public final Bundle b(Bundle paramBundle)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.licensinglibrary.ILicenseService");
            if (paramBundle != null)
            {
              localParcel1.writeInt(1);
              paramBundle.writeToParcel(localParcel1, 0);
              this.a.transact(4, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramBundle = (Bundle)Bundle.CREATOR.createFromParcel(localParcel2);
                return paramBundle;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramBundle = null;
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
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\ILicenseService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */