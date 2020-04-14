package com.xiaomi.passport.uicontroller;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.data.MiLoginResult;
import com.xiaomi.accountsdk.account.data.NotificationAuthResult;
import com.xiaomi.accountsdk.account.data.NotificationLoginEndParams;
import com.xiaomi.accountsdk.account.data.PasswordLoginParams;
import com.xiaomi.accountsdk.account.data.Step2LoginParams;

public abstract interface IMiPassportUIControllerService
  extends IInterface
{
  public abstract MiLoginResult a(NotificationLoginEndParams paramNotificationLoginEndParams)
    throws RemoteException;
  
  public abstract MiLoginResult a(PasswordLoginParams paramPasswordLoginParams)
    throws RemoteException;
  
  public abstract MiLoginResult a(Step2LoginParams paramStep2LoginParams)
    throws RemoteException;
  
  public abstract NotificationAuthResult a(String paramString)
    throws RemoteException;
  
  public abstract void a(AccountInfo paramAccountInfo)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IMiPassportUIControllerService
  {
    private static final String DESCRIPTOR = "com.xiaomi.passport.uicontroller.IMiPassportUIControllerService";
    static final int TRANSACTION_addOrUpdateAccountManager = 4;
    static final int TRANSACTION_loginByPassword = 1;
    static final int TRANSACTION_loginByStep2 = 3;
    static final int TRANSACTION_onNotificationAuthEnd = 5;
    static final int TRANSACTION_onNotificationLoginEnd = 2;
    
    public Stub()
    {
      attachInterface(this, "com.xiaomi.passport.uicontroller.IMiPassportUIControllerService");
    }
    
    public static IMiPassportUIControllerService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.passport.uicontroller.IMiPassportUIControllerService");
      if ((localIInterface != null) && ((localIInterface instanceof IMiPassportUIControllerService))) {
        return (IMiPassportUIControllerService)localIInterface;
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
      Object localObject3 = null;
      Object localObject4 = null;
      Object localObject1 = null;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.xiaomi.passport.uicontroller.IMiPassportUIControllerService");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.xiaomi.passport.uicontroller.IMiPassportUIControllerService");
        if (paramParcel1.readInt() != 0) {
          localObject1 = (PasswordLoginParams)PasswordLoginParams.CREATOR.createFromParcel(paramParcel1);
        }
        paramParcel1 = a((PasswordLoginParams)localObject1);
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
        paramParcel1.enforceInterface("com.xiaomi.passport.uicontroller.IMiPassportUIControllerService");
        localObject1 = localObject2;
        if (paramParcel1.readInt() != 0) {
          localObject1 = (NotificationLoginEndParams)NotificationLoginEndParams.CREATOR.createFromParcel(paramParcel1);
        }
        paramParcel1 = a((NotificationLoginEndParams)localObject1);
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
        paramParcel1.enforceInterface("com.xiaomi.passport.uicontroller.IMiPassportUIControllerService");
        localObject1 = localObject3;
        if (paramParcel1.readInt() != 0) {
          localObject1 = (Step2LoginParams)Step2LoginParams.CREATOR.createFromParcel(paramParcel1);
        }
        paramParcel1 = a((Step2LoginParams)localObject1);
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
      case 4: 
        paramParcel1.enforceInterface("com.xiaomi.passport.uicontroller.IMiPassportUIControllerService");
        localObject1 = localObject4;
        if (paramParcel1.readInt() != 0) {
          localObject1 = (AccountInfo)AccountInfo.CREATOR.createFromParcel(paramParcel1);
        }
        a((AccountInfo)localObject1);
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel1.enforceInterface("com.xiaomi.passport.uicontroller.IMiPassportUIControllerService");
      paramParcel1 = a(paramParcel1.readString());
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
      implements IMiPassportUIControllerService
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      public final MiLoginResult a(NotificationLoginEndParams paramNotificationLoginEndParams)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.passport.uicontroller.IMiPassportUIControllerService");
            if (paramNotificationLoginEndParams != null)
            {
              localParcel1.writeInt(1);
              paramNotificationLoginEndParams.writeToParcel(localParcel1, 0);
              this.a.transact(2, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramNotificationLoginEndParams = (MiLoginResult)MiLoginResult.CREATOR.createFromParcel(localParcel2);
                return paramNotificationLoginEndParams;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramNotificationLoginEndParams = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final MiLoginResult a(PasswordLoginParams paramPasswordLoginParams)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.passport.uicontroller.IMiPassportUIControllerService");
            if (paramPasswordLoginParams != null)
            {
              localParcel1.writeInt(1);
              paramPasswordLoginParams.writeToParcel(localParcel1, 0);
              this.a.transact(1, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramPasswordLoginParams = (MiLoginResult)MiLoginResult.CREATOR.createFromParcel(localParcel2);
                return paramPasswordLoginParams;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramPasswordLoginParams = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final MiLoginResult a(Step2LoginParams paramStep2LoginParams)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.passport.uicontroller.IMiPassportUIControllerService");
            if (paramStep2LoginParams != null)
            {
              localParcel1.writeInt(1);
              paramStep2LoginParams.writeToParcel(localParcel1, 0);
              this.a.transact(3, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramStep2LoginParams = (MiLoginResult)MiLoginResult.CREATOR.createFromParcel(localParcel2);
                return paramStep2LoginParams;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramStep2LoginParams = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      /* Error */
      public final NotificationAuthResult a(String paramString)
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
        //   16: invokevirtual 85	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   19: aload_0
        //   20: getfield 18	com/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub$a:a	Landroid/os/IBinder;
        //   23: iconst_5
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
        //   44: getstatic 88	com/xiaomi/accountsdk/account/data/NotificationAuthResult:CREATOR	Landroid/os/Parcelable$Creator;
        //   47: aload_3
        //   48: invokeinterface 69 2 0
        //   53: checkcast 87	com/xiaomi/accountsdk/account/data/NotificationAuthResult
        //   56: astore_1
        //   57: aload_3
        //   58: invokevirtual 72	android/os/Parcel:recycle	()V
        //   61: aload_2
        //   62: invokevirtual 72	android/os/Parcel:recycle	()V
        //   65: aload_1
        //   66: areturn
        //   67: aconst_null
        //   68: astore_1
        //   69: goto -12 -> 57
        //   72: astore_1
        //   73: aload_3
        //   74: invokevirtual 72	android/os/Parcel:recycle	()V
        //   77: aload_2
        //   78: invokevirtual 72	android/os/Parcel:recycle	()V
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
      
      /* Error */
      public final void a(AccountInfo paramAccountInfo)
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
        //   14: aload_1
        //   15: ifnull +41 -> 56
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 92	com/xiaomi/accountsdk/account/data/AccountInfo:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 18	com/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub$a:a	Landroid/os/IBinder;
        //   33: iconst_4
        //   34: aload_2
        //   35: aload_3
        //   36: iconst_0
        //   37: invokeinterface 50 5 0
        //   42: pop
        //   43: aload_3
        //   44: invokevirtual 53	android/os/Parcel:readException	()V
        //   47: aload_3
        //   48: invokevirtual 72	android/os/Parcel:recycle	()V
        //   51: aload_2
        //   52: invokevirtual 72	android/os/Parcel:recycle	()V
        //   55: return
        //   56: aload_2
        //   57: iconst_0
        //   58: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   61: goto -32 -> 29
        //   64: astore_1
        //   65: aload_3
        //   66: invokevirtual 72	android/os/Parcel:recycle	()V
        //   69: aload_2
        //   70: invokevirtual 72	android/os/Parcel:recycle	()V
        //   73: aload_1
        //   74: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	75	0	this	a
        //   0	75	1	paramAccountInfo	AccountInfo
        //   3	67	2	localParcel1	Parcel
        //   7	59	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	64	finally
        //   18	29	64	finally
        //   29	47	64	finally
        //   56	61	64	finally
      }
      
      public final IBinder asBinder()
      {
        return this.a;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\uicontroller\IMiPassportUIControllerService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */