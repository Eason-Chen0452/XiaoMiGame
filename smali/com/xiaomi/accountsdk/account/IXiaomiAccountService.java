package com.xiaomi.accountsdk.account;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface IXiaomiAccountService
  extends IInterface
{
  public abstract ParcelFileDescriptor a(String paramString)
    throws RemoteException;
  
  public abstract XiaomiAccount a(boolean paramBoolean, Account paramAccount)
    throws RemoteException;
  
  public abstract String a(Account paramAccount)
    throws RemoteException;
  
  public abstract String a(Account paramAccount, String paramString1, String paramString2, boolean paramBoolean)
    throws RemoteException;
  
  public abstract boolean a(String paramString1, String paramString2)
    throws RemoteException;
  
  public abstract String b(Account paramAccount)
    throws RemoteException;
  
  public abstract String b(String paramString)
    throws RemoteException;
  
  public abstract String c(Account paramAccount)
    throws RemoteException;
  
  public abstract String d(Account paramAccount)
    throws RemoteException;
  
  public abstract String e(Account paramAccount)
    throws RemoteException;
  
  public abstract ParcelFileDescriptor f(Account paramAccount)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IXiaomiAccountService
  {
    private static final String DESCRIPTOR = "com.xiaomi.accountsdk.account.IXiaomiAccountService";
    static final int TRANSACTION_getAccessToken = 9;
    static final int TRANSACTION_getAvatarFd = 6;
    static final int TRANSACTION_getAvatarFdByFileName = 8;
    static final int TRANSACTION_getEmail = 3;
    static final int TRANSACTION_getEncryptedUserId = 4;
    static final int TRANSACTION_getNickName = 2;
    static final int TRANSACTION_getPhone = 5;
    static final int TRANSACTION_getSnsAccessToken = 10;
    static final int TRANSACTION_getUserName = 1;
    static final int TRANSACTION_getXiaomiAccount = 7;
    static final int TRANSACTION_invalidateSnsAccessToken = 11;
    
    public Stub()
    {
      attachInterface(this, "com.xiaomi.accountsdk.account.IXiaomiAccountService");
    }
    
    public static IXiaomiAccountService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.accountsdk.account.IXiaomiAccountService");
      if ((localIInterface != null) && ((localIInterface instanceof IXiaomiAccountService))) {
        return (IXiaomiAccountService)localIInterface;
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
      int i = 0;
      boolean bool = false;
      String str1 = null;
      String str2 = null;
      Object localObject2 = null;
      Object localObject3 = null;
      Object localObject4 = null;
      Object localObject5 = null;
      Object localObject6 = null;
      Object localObject1 = null;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.xiaomi.accountsdk.account.IXiaomiAccountService");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.xiaomi.accountsdk.account.IXiaomiAccountService");
        if (paramParcel1.readInt() != 0) {
          localObject1 = (Account)Account.CREATOR.createFromParcel(paramParcel1);
        }
        paramParcel1 = a((Account)localObject1);
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.xiaomi.accountsdk.account.IXiaomiAccountService");
        localObject1 = str1;
        if (paramParcel1.readInt() != 0) {
          localObject1 = (Account)Account.CREATOR.createFromParcel(paramParcel1);
        }
        paramParcel1 = b((Account)localObject1);
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.xiaomi.accountsdk.account.IXiaomiAccountService");
        localObject1 = str2;
        if (paramParcel1.readInt() != 0) {
          localObject1 = (Account)Account.CREATOR.createFromParcel(paramParcel1);
        }
        paramParcel1 = c((Account)localObject1);
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      case 4: 
        paramParcel1.enforceInterface("com.xiaomi.accountsdk.account.IXiaomiAccountService");
        localObject1 = localObject2;
        if (paramParcel1.readInt() != 0) {
          localObject1 = (Account)Account.CREATOR.createFromParcel(paramParcel1);
        }
        paramParcel1 = d((Account)localObject1);
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      case 5: 
        paramParcel1.enforceInterface("com.xiaomi.accountsdk.account.IXiaomiAccountService");
        localObject1 = localObject3;
        if (paramParcel1.readInt() != 0) {
          localObject1 = (Account)Account.CREATOR.createFromParcel(paramParcel1);
        }
        paramParcel1 = e((Account)localObject1);
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      case 6: 
        paramParcel1.enforceInterface("com.xiaomi.accountsdk.account.IXiaomiAccountService");
        localObject1 = localObject4;
        if (paramParcel1.readInt() != 0) {
          localObject1 = (Account)Account.CREATOR.createFromParcel(paramParcel1);
        }
        paramParcel1 = f((Account)localObject1);
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 7: 
        paramParcel1.enforceInterface("com.xiaomi.accountsdk.account.IXiaomiAccountService");
        if (paramParcel1.readInt() != 0) {}
        for (bool = true;; bool = false)
        {
          localObject1 = localObject5;
          if (paramParcel1.readInt() != 0) {
            localObject1 = (Account)Account.CREATOR.createFromParcel(paramParcel1);
          }
          paramParcel1 = a(bool, (Account)localObject1);
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
      case 8: 
        paramParcel1.enforceInterface("com.xiaomi.accountsdk.account.IXiaomiAccountService");
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
      case 9: 
        paramParcel1.enforceInterface("com.xiaomi.accountsdk.account.IXiaomiAccountService");
        localObject1 = localObject6;
        if (paramParcel1.readInt() != 0) {
          localObject1 = (Account)Account.CREATOR.createFromParcel(paramParcel1);
        }
        str1 = paramParcel1.readString();
        str2 = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {
          bool = true;
        }
        paramParcel1 = a((Account)localObject1, str1, str2, bool);
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      case 10: 
        paramParcel1.enforceInterface("com.xiaomi.accountsdk.account.IXiaomiAccountService");
        paramParcel1 = b(paramParcel1.readString());
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      }
      paramParcel1.enforceInterface("com.xiaomi.accountsdk.account.IXiaomiAccountService");
      bool = a(paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      paramInt1 = i;
      if (bool) {
        paramInt1 = 1;
      }
      paramParcel2.writeInt(paramInt1);
      return true;
    }
    
    private static final class a
      implements IXiaomiAccountService
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      /* Error */
      public final ParcelFileDescriptor a(String paramString)
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
        //   16: invokevirtual 37	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   19: aload_0
        //   20: getfield 18	com/xiaomi/accountsdk/account/IXiaomiAccountService$Stub$a:a	Landroid/os/IBinder;
        //   23: bipush 8
        //   25: aload_2
        //   26: aload_3
        //   27: iconst_0
        //   28: invokeinterface 43 5 0
        //   33: pop
        //   34: aload_3
        //   35: invokevirtual 46	android/os/Parcel:readException	()V
        //   38: aload_3
        //   39: invokevirtual 50	android/os/Parcel:readInt	()I
        //   42: ifeq +26 -> 68
        //   45: getstatic 56	android/os/ParcelFileDescriptor:CREATOR	Landroid/os/Parcelable$Creator;
        //   48: aload_3
        //   49: invokeinterface 62 2 0
        //   54: checkcast 52	android/os/ParcelFileDescriptor
        //   57: astore_1
        //   58: aload_3
        //   59: invokevirtual 65	android/os/Parcel:recycle	()V
        //   62: aload_2
        //   63: invokevirtual 65	android/os/Parcel:recycle	()V
        //   66: aload_1
        //   67: areturn
        //   68: aconst_null
        //   69: astore_1
        //   70: goto -12 -> 58
        //   73: astore_1
        //   74: aload_3
        //   75: invokevirtual 65	android/os/Parcel:recycle	()V
        //   78: aload_2
        //   79: invokevirtual 65	android/os/Parcel:recycle	()V
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
      
      public final XiaomiAccount a(boolean paramBoolean, Account paramAccount)
        throws RemoteException
      {
        int i = 1;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        label129:
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.accountsdk.account.IXiaomiAccountService");
            if (paramBoolean)
            {
              localParcel1.writeInt(i);
              if (paramAccount != null)
              {
                localParcel1.writeInt(1);
                paramAccount.writeToParcel(localParcel1, 0);
                this.a.transact(7, localParcel1, localParcel2, 0);
                localParcel2.readException();
                if (localParcel2.readInt() == 0) {
                  break label129;
                }
                paramAccount = (XiaomiAccount)XiaomiAccount.CREATOR.createFromParcel(localParcel2);
                return paramAccount;
              }
            }
            else
            {
              i = 0;
              continue;
            }
            localParcel1.writeInt(0);
            continue;
            paramAccount = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      /* Error */
      public final String a(Account paramAccount)
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
        //   15: ifnull +47 -> 62
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 71	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 77	android/accounts/Account:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 18	com/xiaomi/accountsdk/account/IXiaomiAccountService$Stub$a:a	Landroid/os/IBinder;
        //   33: iconst_1
        //   34: aload_2
        //   35: aload_3
        //   36: iconst_0
        //   37: invokeinterface 43 5 0
        //   42: pop
        //   43: aload_3
        //   44: invokevirtual 46	android/os/Parcel:readException	()V
        //   47: aload_3
        //   48: invokevirtual 85	android/os/Parcel:readString	()Ljava/lang/String;
        //   51: astore_1
        //   52: aload_3
        //   53: invokevirtual 65	android/os/Parcel:recycle	()V
        //   56: aload_2
        //   57: invokevirtual 65	android/os/Parcel:recycle	()V
        //   60: aload_1
        //   61: areturn
        //   62: aload_2
        //   63: iconst_0
        //   64: invokevirtual 71	android/os/Parcel:writeInt	(I)V
        //   67: goto -38 -> 29
        //   70: astore_1
        //   71: aload_3
        //   72: invokevirtual 65	android/os/Parcel:recycle	()V
        //   75: aload_2
        //   76: invokevirtual 65	android/os/Parcel:recycle	()V
        //   79: aload_1
        //   80: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	81	0	this	a
        //   0	81	1	paramAccount	Account
        //   3	73	2	localParcel1	Parcel
        //   7	65	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	70	finally
        //   18	29	70	finally
        //   29	52	70	finally
        //   62	67	70	finally
      }
      
      public final String a(Account paramAccount, String paramString1, String paramString2, boolean paramBoolean)
        throws RemoteException
      {
        int i = 1;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.accountsdk.account.IXiaomiAccountService");
            if (paramAccount != null)
            {
              localParcel1.writeInt(1);
              paramAccount.writeToParcel(localParcel1, 0);
              localParcel1.writeString(paramString1);
              localParcel1.writeString(paramString2);
              if (paramBoolean)
              {
                localParcel1.writeInt(i);
                this.a.transact(9, localParcel1, localParcel2, 0);
                localParcel2.readException();
                paramAccount = localParcel2.readString();
                return paramAccount;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            i = 0;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final boolean a(String paramString1, String paramString2)
        throws RemoteException
      {
        boolean bool = false;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.accountsdk.account.IXiaomiAccountService");
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          this.a.transact(11, localParcel1, localParcel2, 0);
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
      public final String b(Account paramAccount)
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
        //   15: ifnull +47 -> 62
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 71	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 77	android/accounts/Account:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 18	com/xiaomi/accountsdk/account/IXiaomiAccountService$Stub$a:a	Landroid/os/IBinder;
        //   33: iconst_2
        //   34: aload_2
        //   35: aload_3
        //   36: iconst_0
        //   37: invokeinterface 43 5 0
        //   42: pop
        //   43: aload_3
        //   44: invokevirtual 46	android/os/Parcel:readException	()V
        //   47: aload_3
        //   48: invokevirtual 85	android/os/Parcel:readString	()Ljava/lang/String;
        //   51: astore_1
        //   52: aload_3
        //   53: invokevirtual 65	android/os/Parcel:recycle	()V
        //   56: aload_2
        //   57: invokevirtual 65	android/os/Parcel:recycle	()V
        //   60: aload_1
        //   61: areturn
        //   62: aload_2
        //   63: iconst_0
        //   64: invokevirtual 71	android/os/Parcel:writeInt	(I)V
        //   67: goto -38 -> 29
        //   70: astore_1
        //   71: aload_3
        //   72: invokevirtual 65	android/os/Parcel:recycle	()V
        //   75: aload_2
        //   76: invokevirtual 65	android/os/Parcel:recycle	()V
        //   79: aload_1
        //   80: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	81	0	this	a
        //   0	81	1	paramAccount	Account
        //   3	73	2	localParcel1	Parcel
        //   7	65	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	70	finally
        //   18	29	70	finally
        //   29	52	70	finally
        //   62	67	70	finally
      }
      
      public final String b(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.accountsdk.account.IXiaomiAccountService");
          localParcel1.writeString(paramString);
          this.a.transact(10, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramString = localParcel2.readString();
          return paramString;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final String c(Account paramAccount)
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
        //   15: ifnull +47 -> 62
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 71	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 77	android/accounts/Account:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 18	com/xiaomi/accountsdk/account/IXiaomiAccountService$Stub$a:a	Landroid/os/IBinder;
        //   33: iconst_3
        //   34: aload_2
        //   35: aload_3
        //   36: iconst_0
        //   37: invokeinterface 43 5 0
        //   42: pop
        //   43: aload_3
        //   44: invokevirtual 46	android/os/Parcel:readException	()V
        //   47: aload_3
        //   48: invokevirtual 85	android/os/Parcel:readString	()Ljava/lang/String;
        //   51: astore_1
        //   52: aload_3
        //   53: invokevirtual 65	android/os/Parcel:recycle	()V
        //   56: aload_2
        //   57: invokevirtual 65	android/os/Parcel:recycle	()V
        //   60: aload_1
        //   61: areturn
        //   62: aload_2
        //   63: iconst_0
        //   64: invokevirtual 71	android/os/Parcel:writeInt	(I)V
        //   67: goto -38 -> 29
        //   70: astore_1
        //   71: aload_3
        //   72: invokevirtual 65	android/os/Parcel:recycle	()V
        //   75: aload_2
        //   76: invokevirtual 65	android/os/Parcel:recycle	()V
        //   79: aload_1
        //   80: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	81	0	this	a
        //   0	81	1	paramAccount	Account
        //   3	73	2	localParcel1	Parcel
        //   7	65	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	70	finally
        //   18	29	70	finally
        //   29	52	70	finally
        //   62	67	70	finally
      }
      
      /* Error */
      public final String d(Account paramAccount)
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
        //   15: ifnull +47 -> 62
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 71	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 77	android/accounts/Account:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 18	com/xiaomi/accountsdk/account/IXiaomiAccountService$Stub$a:a	Landroid/os/IBinder;
        //   33: iconst_4
        //   34: aload_2
        //   35: aload_3
        //   36: iconst_0
        //   37: invokeinterface 43 5 0
        //   42: pop
        //   43: aload_3
        //   44: invokevirtual 46	android/os/Parcel:readException	()V
        //   47: aload_3
        //   48: invokevirtual 85	android/os/Parcel:readString	()Ljava/lang/String;
        //   51: astore_1
        //   52: aload_3
        //   53: invokevirtual 65	android/os/Parcel:recycle	()V
        //   56: aload_2
        //   57: invokevirtual 65	android/os/Parcel:recycle	()V
        //   60: aload_1
        //   61: areturn
        //   62: aload_2
        //   63: iconst_0
        //   64: invokevirtual 71	android/os/Parcel:writeInt	(I)V
        //   67: goto -38 -> 29
        //   70: astore_1
        //   71: aload_3
        //   72: invokevirtual 65	android/os/Parcel:recycle	()V
        //   75: aload_2
        //   76: invokevirtual 65	android/os/Parcel:recycle	()V
        //   79: aload_1
        //   80: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	81	0	this	a
        //   0	81	1	paramAccount	Account
        //   3	73	2	localParcel1	Parcel
        //   7	65	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	70	finally
        //   18	29	70	finally
        //   29	52	70	finally
        //   62	67	70	finally
      }
      
      /* Error */
      public final String e(Account paramAccount)
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
        //   15: ifnull +47 -> 62
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 71	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 77	android/accounts/Account:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 18	com/xiaomi/accountsdk/account/IXiaomiAccountService$Stub$a:a	Landroid/os/IBinder;
        //   33: iconst_5
        //   34: aload_2
        //   35: aload_3
        //   36: iconst_0
        //   37: invokeinterface 43 5 0
        //   42: pop
        //   43: aload_3
        //   44: invokevirtual 46	android/os/Parcel:readException	()V
        //   47: aload_3
        //   48: invokevirtual 85	android/os/Parcel:readString	()Ljava/lang/String;
        //   51: astore_1
        //   52: aload_3
        //   53: invokevirtual 65	android/os/Parcel:recycle	()V
        //   56: aload_2
        //   57: invokevirtual 65	android/os/Parcel:recycle	()V
        //   60: aload_1
        //   61: areturn
        //   62: aload_2
        //   63: iconst_0
        //   64: invokevirtual 71	android/os/Parcel:writeInt	(I)V
        //   67: goto -38 -> 29
        //   70: astore_1
        //   71: aload_3
        //   72: invokevirtual 65	android/os/Parcel:recycle	()V
        //   75: aload_2
        //   76: invokevirtual 65	android/os/Parcel:recycle	()V
        //   79: aload_1
        //   80: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	81	0	this	a
        //   0	81	1	paramAccount	Account
        //   3	73	2	localParcel1	Parcel
        //   7	65	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	70	finally
        //   18	29	70	finally
        //   29	52	70	finally
        //   62	67	70	finally
      }
      
      public final ParcelFileDescriptor f(Account paramAccount)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.accountsdk.account.IXiaomiAccountService");
            if (paramAccount != null)
            {
              localParcel1.writeInt(1);
              paramAccount.writeToParcel(localParcel1, 0);
              this.a.transact(6, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramAccount = (ParcelFileDescriptor)ParcelFileDescriptor.CREATOR.createFromParcel(localParcel2);
                return paramAccount;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramAccount = null;
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\IXiaomiAccountService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */