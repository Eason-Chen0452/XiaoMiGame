package com.xiaomi.passport;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.xiaomi.passport.servicetoken.ServiceTokenResult;
import com.xiaomi.passport.servicetoken.data.XmAccountVisibility;

public abstract interface IPassportServiceTokenService
  extends IInterface
{
  public abstract ServiceTokenResult a(ServiceTokenResult paramServiceTokenResult)
    throws RemoteException;
  
  public abstract ServiceTokenResult a(String paramString)
    throws RemoteException;
  
  public abstract boolean a()
    throws RemoteException;
  
  public abstract XmAccountVisibility b(String paramString)
    throws RemoteException;
  
  public abstract boolean b()
    throws RemoteException;
  
  public abstract XmAccountVisibility c(String paramString)
    throws RemoteException;
  
  public abstract boolean c()
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IPassportServiceTokenService
  {
    private static final String DESCRIPTOR = "com.xiaomi.passport.IPassportServiceTokenService";
    static final int TRANSACTION_fastCheckSlhPhCompatibility = 4;
    static final int TRANSACTION_getAccountVisible = 7;
    static final int TRANSACTION_getServiceToken = 1;
    static final int TRANSACTION_invalidateServiceToken = 2;
    static final int TRANSACTION_setAccountVisible = 6;
    static final int TRANSACTION_supportAccessAccount = 5;
    static final int TRANSACTION_supportServiceTokenUIResponse = 3;
    
    public Stub()
    {
      attachInterface(this, "com.xiaomi.passport.IPassportServiceTokenService");
    }
    
    public static IPassportServiceTokenService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.passport.IPassportServiceTokenService");
      if ((localIInterface != null) && ((localIInterface instanceof IPassportServiceTokenService))) {
        return (IPassportServiceTokenService)localIInterface;
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
      int j = 0;
      int i = 0;
      boolean bool;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.xiaomi.passport.IPassportServiceTokenService");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.xiaomi.passport.IPassportServiceTokenService");
        paramParcel1 = a(paramParcel1.readString());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.xiaomi.passport.IPassportServiceTokenService");
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (ServiceTokenResult)ServiceTokenResult.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          paramParcel1 = a(paramParcel1);
          paramParcel2.writeNoException();
          if (paramParcel1 == null) {
            break;
          }
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.xiaomi.passport.IPassportServiceTokenService");
        bool = a();
        paramParcel2.writeNoException();
        if (bool) {}
        for (paramInt1 = 1;; paramInt1 = 0)
        {
          paramParcel2.writeInt(paramInt1);
          return true;
        }
      case 4: 
        paramParcel1.enforceInterface("com.xiaomi.passport.IPassportServiceTokenService");
        bool = b();
        paramParcel2.writeNoException();
        paramInt1 = i;
        if (bool) {
          paramInt1 = 1;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      case 5: 
        paramParcel1.enforceInterface("com.xiaomi.passport.IPassportServiceTokenService");
        bool = c();
        paramParcel2.writeNoException();
        paramInt1 = j;
        if (bool) {
          paramInt1 = 1;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      case 6: 
        paramParcel1.enforceInterface("com.xiaomi.passport.IPassportServiceTokenService");
        paramParcel1 = b(paramParcel1.readString());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      }
      paramParcel1.enforceInterface("com.xiaomi.passport.IPassportServiceTokenService");
      paramParcel1 = c(paramParcel1.readString());
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    }
    
    private static final class a
      implements IPassportServiceTokenService
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      public final ServiceTokenResult a(ServiceTokenResult paramServiceTokenResult)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.passport.IPassportServiceTokenService");
            if (paramServiceTokenResult != null)
            {
              localParcel1.writeInt(1);
              paramServiceTokenResult.writeToParcel(localParcel1, 0);
              this.a.transact(2, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramServiceTokenResult = (ServiceTokenResult)ServiceTokenResult.CREATOR.createFromParcel(localParcel2);
                return paramServiceTokenResult;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramServiceTokenResult = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      /* Error */
      public final ServiceTokenResult a(String paramString)
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
        //   14: aload_2
        //   15: aload_1
        //   16: invokevirtual 75	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   19: aload_0
        //   20: getfield 18	com/xiaomi/passport/IPassportServiceTokenService$Stub$a:a	Landroid/os/IBinder;
        //   23: iconst_1
        //   24: aload_2
        //   25: aload_3
        //   26: iconst_0
        //   27: invokeinterface 50 5 0
        //   32: pop
        //   33: aload_3
        //   34: invokevirtual 53	android/os/Parcel:readException	()V
        //   37: aload_3
        //   38: invokevirtual 57	android/os/Parcel:readInt	()I
        //   41: ifeq +26 -> 67
        //   44: getstatic 61	com/xiaomi/passport/servicetoken/ServiceTokenResult:CREATOR	Landroid/os/Parcelable$Creator;
        //   47: aload_3
        //   48: invokeinterface 67 2 0
        //   53: checkcast 40	com/xiaomi/passport/servicetoken/ServiceTokenResult
        //   56: astore_1
        //   57: aload_3
        //   58: invokevirtual 70	android/os/Parcel:recycle	()V
        //   61: aload_2
        //   62: invokevirtual 70	android/os/Parcel:recycle	()V
        //   65: aload_1
        //   66: areturn
        //   67: aconst_null
        //   68: astore_1
        //   69: goto -12 -> 57
        //   72: astore_1
        //   73: aload_3
        //   74: invokevirtual 70	android/os/Parcel:recycle	()V
        //   77: aload_2
        //   78: invokevirtual 70	android/os/Parcel:recycle	()V
        //   81: aload_1
        //   82: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	83	0	this	a
        //   0	83	1	paramString	String
        //   3	75	2	localParcel1	Parcel
        //   7	67	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	57	72	finally
      }
      
      public final boolean a()
        throws RemoteException
      {
        boolean bool = false;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.passport.IPassportServiceTokenService");
          this.a.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          if (i != 0) {
            bool = true;
          }
          return bool;
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
      
      /* Error */
      public final XmAccountVisibility b(String paramString)
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
        //   14: aload_2
        //   15: aload_1
        //   16: invokevirtual 75	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   19: aload_0
        //   20: getfield 18	com/xiaomi/passport/IPassportServiceTokenService$Stub$a:a	Landroid/os/IBinder;
        //   23: bipush 6
        //   25: aload_2
        //   26: aload_3
        //   27: iconst_0
        //   28: invokeinterface 50 5 0
        //   33: pop
        //   34: aload_3
        //   35: invokevirtual 53	android/os/Parcel:readException	()V
        //   38: aload_3
        //   39: invokevirtual 57	android/os/Parcel:readInt	()I
        //   42: ifeq +26 -> 68
        //   45: getstatic 83	com/xiaomi/passport/servicetoken/data/XmAccountVisibility:CREATOR	Landroid/os/Parcelable$Creator;
        //   48: aload_3
        //   49: invokeinterface 67 2 0
        //   54: checkcast 82	com/xiaomi/passport/servicetoken/data/XmAccountVisibility
        //   57: astore_1
        //   58: aload_3
        //   59: invokevirtual 70	android/os/Parcel:recycle	()V
        //   62: aload_2
        //   63: invokevirtual 70	android/os/Parcel:recycle	()V
        //   66: aload_1
        //   67: areturn
        //   68: aconst_null
        //   69: astore_1
        //   70: goto -12 -> 58
        //   73: astore_1
        //   74: aload_3
        //   75: invokevirtual 70	android/os/Parcel:recycle	()V
        //   78: aload_2
        //   79: invokevirtual 70	android/os/Parcel:recycle	()V
        //   82: aload_1
        //   83: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	84	0	this	a
        //   0	84	1	paramString	String
        //   3	76	2	localParcel1	Parcel
        //   7	68	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	58	73	finally
      }
      
      public final boolean b()
        throws RemoteException
      {
        boolean bool = false;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.passport.IPassportServiceTokenService");
          this.a.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          if (i != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final XmAccountVisibility c(String paramString)
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
        //   14: aload_2
        //   15: aload_1
        //   16: invokevirtual 75	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   19: aload_0
        //   20: getfield 18	com/xiaomi/passport/IPassportServiceTokenService$Stub$a:a	Landroid/os/IBinder;
        //   23: bipush 7
        //   25: aload_2
        //   26: aload_3
        //   27: iconst_0
        //   28: invokeinterface 50 5 0
        //   33: pop
        //   34: aload_3
        //   35: invokevirtual 53	android/os/Parcel:readException	()V
        //   38: aload_3
        //   39: invokevirtual 57	android/os/Parcel:readInt	()I
        //   42: ifeq +26 -> 68
        //   45: getstatic 83	com/xiaomi/passport/servicetoken/data/XmAccountVisibility:CREATOR	Landroid/os/Parcelable$Creator;
        //   48: aload_3
        //   49: invokeinterface 67 2 0
        //   54: checkcast 82	com/xiaomi/passport/servicetoken/data/XmAccountVisibility
        //   57: astore_1
        //   58: aload_3
        //   59: invokevirtual 70	android/os/Parcel:recycle	()V
        //   62: aload_2
        //   63: invokevirtual 70	android/os/Parcel:recycle	()V
        //   66: aload_1
        //   67: areturn
        //   68: aconst_null
        //   69: astore_1
        //   70: goto -12 -> 58
        //   73: astore_1
        //   74: aload_3
        //   75: invokevirtual 70	android/os/Parcel:recycle	()V
        //   78: aload_2
        //   79: invokevirtual 70	android/os/Parcel:recycle	()V
        //   82: aload_1
        //   83: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	84	0	this	a
        //   0	84	1	paramString	String
        //   3	76	2	localParcel1	Parcel
        //   7	68	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	58	73	finally
      }
      
      public final boolean c()
        throws RemoteException
      {
        boolean bool = false;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.passport.IPassportServiceTokenService");
          this.a.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          if (i != 0) {
            bool = true;
          }
          return bool;
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\IPassportServiceTokenService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */