package com.mi.milink.sdk.aidl;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface IService
  extends IInterface
{
  public abstract boolean enableConnectionManualMode(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void fastLogin(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte)
    throws RemoteException;
  
  public abstract void forceReconnet()
    throws RemoteException;
  
  public abstract long getAnonymousAccountId()
    throws RemoteException;
  
  public abstract int getServerState()
    throws RemoteException;
  
  public abstract String getSuid()
    throws RemoteException;
  
  public abstract void init(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, boolean paramBoolean)
    throws RemoteException;
  
  public abstract void initUseAnonymousMode()
    throws RemoteException;
  
  public abstract boolean isMiLinkLogined()
    throws RemoteException;
  
  public abstract void logoff()
    throws RemoteException;
  
  public abstract void sendAsyncWithResponse(PacketData paramPacketData, int paramInt, ISendCallback paramISendCallback)
    throws RemoteException;
  
  public abstract void setAllowAnonymousLoginSwitch(boolean paramBoolean)
    throws RemoteException;
  
  public abstract int setClientInfo(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void setEventCallBack(IEventCallback paramIEventCallback)
    throws RemoteException;
  
  public abstract void setGlobalPushFlag(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void setIpAndPortInManualMode(String paramString, int paramInt)
    throws RemoteException;
  
  public abstract void setLanguage(String paramString)
    throws RemoteException;
  
  public abstract void setMilinkLogLevel(int paramInt)
    throws RemoteException;
  
  public abstract void setMipushRegId(String paramString)
    throws RemoteException;
  
  public abstract void setPacketCallBack(IPacketCallback paramIPacketCallback)
    throws RemoteException;
  
  public abstract void setTimeoutMultiply(float paramFloat)
    throws RemoteException;
  
  public abstract void suspectBadConnection()
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IService
  {
    private static final String DESCRIPTOR = "com.mi.milink.sdk.aidl.IService";
    static final int TRANSACTION_enableConnectionManualMode = 14;
    static final int TRANSACTION_fastLogin = 7;
    static final int TRANSACTION_forceReconnet = 6;
    static final int TRANSACTION_getAnonymousAccountId = 21;
    static final int TRANSACTION_getServerState = 10;
    static final int TRANSACTION_getSuid = 13;
    static final int TRANSACTION_init = 1;
    static final int TRANSACTION_initUseAnonymousMode = 16;
    static final int TRANSACTION_isMiLinkLogined = 11;
    static final int TRANSACTION_logoff = 3;
    static final int TRANSACTION_sendAsyncWithResponse = 2;
    static final int TRANSACTION_setAllowAnonymousLoginSwitch = 15;
    static final int TRANSACTION_setClientInfo = 9;
    static final int TRANSACTION_setEventCallBack = 5;
    static final int TRANSACTION_setGlobalPushFlag = 22;
    static final int TRANSACTION_setIpAndPortInManualMode = 12;
    static final int TRANSACTION_setLanguage = 20;
    static final int TRANSACTION_setMilinkLogLevel = 19;
    static final int TRANSACTION_setMipushRegId = 17;
    static final int TRANSACTION_setPacketCallBack = 4;
    static final int TRANSACTION_setTimeoutMultiply = 8;
    static final int TRANSACTION_suspectBadConnection = 18;
    
    public Stub()
    {
      attachInterface(this, "com.mi.milink.sdk.aidl.IService");
    }
    
    public static IService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.mi.milink.sdk.aidl.IService");
      if ((localIInterface != null) && ((localIInterface instanceof IService))) {
        return (IService)localIInterface;
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
      String str1 = null;
      Object localObject = null;
      int i = 0;
      int j = 0;
      boolean bool2 = false;
      boolean bool3 = false;
      boolean bool1 = false;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.mi.milink.sdk.aidl.IService");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        localObject = paramParcel1.readString();
        str1 = paramParcel1.readString();
        String str2 = paramParcel1.readString();
        byte[] arrayOfByte = paramParcel1.createByteArray();
        if (paramParcel1.readInt() != 0) {
          bool1 = true;
        }
        init((String)localObject, str1, str2, arrayOfByte, bool1);
        paramParcel2.writeNoException();
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        if (paramParcel1.readInt() != 0) {
          localObject = (PacketData)PacketData.CREATOR.createFromParcel(paramParcel1);
        }
        sendAsyncWithResponse((PacketData)localObject, paramParcel1.readInt(), ISendCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        logoff();
        paramParcel2.writeNoException();
        return true;
      case 4: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        setPacketCallBack(IPacketCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 5: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        setEventCallBack(IEventCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 6: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        forceReconnet();
        paramParcel2.writeNoException();
        return true;
      case 7: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        fastLogin(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.createByteArray());
        paramParcel2.writeNoException();
        return true;
      case 8: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        setTimeoutMultiply(paramParcel1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 9: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        localObject = str1;
        if (paramParcel1.readInt() != 0) {
          localObject = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        }
        paramInt1 = setClientInfo((Bundle)localObject);
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 10: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        paramInt1 = getServerState();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 11: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        bool1 = isMiLinkLogined();
        paramParcel2.writeNoException();
        paramInt1 = i;
        if (bool1) {
          paramInt1 = 1;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      case 12: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        setIpAndPortInManualMode(paramParcel1.readString(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 13: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        paramParcel1 = getSuid();
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      case 14: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        if (paramParcel1.readInt() != 0) {}
        for (bool1 = true;; bool1 = false)
        {
          bool1 = enableConnectionManualMode(bool1);
          paramParcel2.writeNoException();
          paramInt1 = j;
          if (bool1) {
            paramInt1 = 1;
          }
          paramParcel2.writeInt(paramInt1);
          return true;
        }
      case 15: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        bool1 = bool2;
        if (paramParcel1.readInt() != 0) {
          bool1 = true;
        }
        setAllowAnonymousLoginSwitch(bool1);
        paramParcel2.writeNoException();
        return true;
      case 16: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        initUseAnonymousMode();
        paramParcel2.writeNoException();
        return true;
      case 17: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        setMipushRegId(paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 18: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        suspectBadConnection();
        paramParcel2.writeNoException();
        return true;
      case 19: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        setMilinkLogLevel(paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 20: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        setLanguage(paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 21: 
        paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
        long l = getAnonymousAccountId();
        paramParcel2.writeNoException();
        paramParcel2.writeLong(l);
        return true;
      }
      paramParcel1.enforceInterface("com.mi.milink.sdk.aidl.IService");
      bool1 = bool3;
      if (paramParcel1.readInt() != 0) {
        bool1 = true;
      }
      setGlobalPushFlag(bool1);
      paramParcel2.writeNoException();
      return true;
    }
    
    private static class Proxy
      implements IService
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
      
      /* Error */
      public boolean enableConnectionManualMode(boolean paramBoolean)
        throws RemoteException
      {
        // Byte code:
        //   0: iconst_1
        //   1: istore_3
        //   2: invokestatic 32	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   5: astore 4
        //   7: invokestatic 32	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   10: astore 5
        //   12: aload 4
        //   14: ldc 34
        //   16: invokevirtual 38	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   19: iload_1
        //   20: ifeq +57 -> 77
        //   23: iconst_1
        //   24: istore_2
        //   25: aload 4
        //   27: iload_2
        //   28: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   31: aload_0
        //   32: getfield 19	com/mi/milink/sdk/aidl/IService$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   35: bipush 14
        //   37: aload 4
        //   39: aload 5
        //   41: iconst_0
        //   42: invokeinterface 48 5 0
        //   47: pop
        //   48: aload 5
        //   50: invokevirtual 51	android/os/Parcel:readException	()V
        //   53: aload 5
        //   55: invokevirtual 55	android/os/Parcel:readInt	()I
        //   58: istore_2
        //   59: iload_2
        //   60: ifeq +22 -> 82
        //   63: iload_3
        //   64: istore_1
        //   65: aload 5
        //   67: invokevirtual 58	android/os/Parcel:recycle	()V
        //   70: aload 4
        //   72: invokevirtual 58	android/os/Parcel:recycle	()V
        //   75: iload_1
        //   76: ireturn
        //   77: iconst_0
        //   78: istore_2
        //   79: goto -54 -> 25
        //   82: iconst_0
        //   83: istore_1
        //   84: goto -19 -> 65
        //   87: astore 6
        //   89: aload 5
        //   91: invokevirtual 58	android/os/Parcel:recycle	()V
        //   94: aload 4
        //   96: invokevirtual 58	android/os/Parcel:recycle	()V
        //   99: aload 6
        //   101: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	102	0	this	Proxy
        //   0	102	1	paramBoolean	boolean
        //   24	55	2	i	int
        //   1	63	3	bool	boolean
        //   5	90	4	localParcel1	Parcel
        //   10	80	5	localParcel2	Parcel
        //   87	13	6	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   12	19	87	finally
        //   25	59	87	finally
      }
      
      public void fastLogin(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeString(paramString3);
          localParcel1.writeByteArray(paramArrayOfByte);
          this.mRemote.transact(7, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void forceReconnet()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          this.mRemote.transact(6, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public long getAnonymousAccountId()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          this.mRemote.transact(21, localParcel1, localParcel2, 0);
          localParcel2.readException();
          long l = localParcel2.readLong();
          return l;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public String getInterfaceDescriptor()
      {
        return "com.mi.milink.sdk.aidl.IService";
      }
      
      public int getServerState()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          this.mRemote.transact(10, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public String getSuid()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          this.mRemote.transact(13, localParcel1, localParcel2, 0);
          localParcel2.readException();
          String str = localParcel2.readString();
          return str;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public void init(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, boolean paramBoolean)
        throws RemoteException
      {
        // Byte code:
        //   0: iconst_1
        //   1: istore 6
        //   3: invokestatic 32	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   6: astore 7
        //   8: invokestatic 32	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   11: astore 8
        //   13: aload 7
        //   15: ldc 34
        //   17: invokevirtual 38	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   20: aload 7
        //   22: aload_1
        //   23: invokevirtual 64	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   26: aload 7
        //   28: aload_2
        //   29: invokevirtual 64	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   32: aload 7
        //   34: aload_3
        //   35: invokevirtual 64	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   38: aload 7
        //   40: aload 4
        //   42: invokevirtual 68	android/os/Parcel:writeByteArray	([B)V
        //   45: iload 5
        //   47: ifeq +42 -> 89
        //   50: aload 7
        //   52: iload 6
        //   54: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   57: aload_0
        //   58: getfield 19	com/mi/milink/sdk/aidl/IService$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   61: iconst_1
        //   62: aload 7
        //   64: aload 8
        //   66: iconst_0
        //   67: invokeinterface 48 5 0
        //   72: pop
        //   73: aload 8
        //   75: invokevirtual 51	android/os/Parcel:readException	()V
        //   78: aload 8
        //   80: invokevirtual 58	android/os/Parcel:recycle	()V
        //   83: aload 7
        //   85: invokevirtual 58	android/os/Parcel:recycle	()V
        //   88: return
        //   89: iconst_0
        //   90: istore 6
        //   92: goto -42 -> 50
        //   95: astore_1
        //   96: aload 8
        //   98: invokevirtual 58	android/os/Parcel:recycle	()V
        //   101: aload 7
        //   103: invokevirtual 58	android/os/Parcel:recycle	()V
        //   106: aload_1
        //   107: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	108	0	this	Proxy
        //   0	108	1	paramString1	String
        //   0	108	2	paramString2	String
        //   0	108	3	paramString3	String
        //   0	108	4	paramArrayOfByte	byte[]
        //   0	108	5	paramBoolean	boolean
        //   1	90	6	i	int
        //   6	96	7	localParcel1	Parcel
        //   11	86	8	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   13	45	95	finally
        //   50	78	95	finally
      }
      
      public void initUseAnonymousMode()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          this.mRemote.transact(16, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean isMiLinkLogined()
        throws RemoteException
      {
        boolean bool = false;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          this.mRemote.transact(11, localParcel1, localParcel2, 0);
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
      
      public void logoff()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
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
      
      public void sendAsyncWithResponse(PacketData paramPacketData, int paramInt, ISendCallback paramISendCallback)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
            if (paramPacketData != null)
            {
              localParcel1.writeInt(1);
              paramPacketData.writeToParcel(localParcel1, 0);
              localParcel1.writeInt(paramInt);
              if (paramISendCallback != null)
              {
                paramPacketData = paramISendCallback.asBinder();
                localParcel1.writeStrongBinder(paramPacketData);
                this.mRemote.transact(2, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramPacketData = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public void setAllowAnonymousLoginSwitch(boolean paramBoolean)
        throws RemoteException
      {
        int i = 0;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          if (paramBoolean) {
            i = 1;
          }
          localParcel1.writeInt(i);
          this.mRemote.transact(15, localParcel1, localParcel2, 0);
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
      public int setClientInfo(Bundle paramBundle)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 32	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 32	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 34
        //   12: invokevirtual 38	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_1
        //   16: ifnull +52 -> 68
        //   19: aload_3
        //   20: iconst_1
        //   21: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   24: aload_1
        //   25: aload_3
        //   26: iconst_0
        //   27: invokevirtual 109	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   30: aload_0
        //   31: getfield 19	com/mi/milink/sdk/aidl/IService$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   34: bipush 9
        //   36: aload_3
        //   37: aload 4
        //   39: iconst_0
        //   40: invokeinterface 48 5 0
        //   45: pop
        //   46: aload 4
        //   48: invokevirtual 51	android/os/Parcel:readException	()V
        //   51: aload 4
        //   53: invokevirtual 55	android/os/Parcel:readInt	()I
        //   56: istore_2
        //   57: aload 4
        //   59: invokevirtual 58	android/os/Parcel:recycle	()V
        //   62: aload_3
        //   63: invokevirtual 58	android/os/Parcel:recycle	()V
        //   66: iload_2
        //   67: ireturn
        //   68: aload_3
        //   69: iconst_0
        //   70: invokevirtual 42	android/os/Parcel:writeInt	(I)V
        //   73: goto -43 -> 30
        //   76: astore_1
        //   77: aload 4
        //   79: invokevirtual 58	android/os/Parcel:recycle	()V
        //   82: aload_3
        //   83: invokevirtual 58	android/os/Parcel:recycle	()V
        //   86: aload_1
        //   87: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	88	0	this	Proxy
        //   0	88	1	paramBundle	Bundle
        //   56	11	2	i	int
        //   3	80	3	localParcel1	Parcel
        //   7	71	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	15	76	finally
        //   19	30	76	finally
        //   30	57	76	finally
        //   68	73	76	finally
      }
      
      /* Error */
      public void setEventCallBack(IEventCallback paramIEventCallback)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 32	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 32	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 34
        //   11: invokevirtual 38	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +42 -> 57
        //   18: aload_1
        //   19: invokeinterface 114 1 0
        //   24: astore_1
        //   25: aload_2
        //   26: aload_1
        //   27: invokevirtual 102	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   30: aload_0
        //   31: getfield 19	com/mi/milink/sdk/aidl/IService$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   34: iconst_5
        //   35: aload_2
        //   36: aload_3
        //   37: iconst_0
        //   38: invokeinterface 48 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 51	android/os/Parcel:readException	()V
        //   48: aload_3
        //   49: invokevirtual 58	android/os/Parcel:recycle	()V
        //   52: aload_2
        //   53: invokevirtual 58	android/os/Parcel:recycle	()V
        //   56: return
        //   57: aconst_null
        //   58: astore_1
        //   59: goto -34 -> 25
        //   62: astore_1
        //   63: aload_3
        //   64: invokevirtual 58	android/os/Parcel:recycle	()V
        //   67: aload_2
        //   68: invokevirtual 58	android/os/Parcel:recycle	()V
        //   71: aload_1
        //   72: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	73	0	this	Proxy
        //   0	73	1	paramIEventCallback	IEventCallback
        //   3	65	2	localParcel1	Parcel
        //   7	57	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	62	finally
        //   18	25	62	finally
        //   25	48	62	finally
      }
      
      public void setGlobalPushFlag(boolean paramBoolean)
        throws RemoteException
      {
        int i = 0;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          if (paramBoolean) {
            i = 1;
          }
          localParcel1.writeInt(i);
          this.mRemote.transact(22, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void setIpAndPortInManualMode(String paramString, int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          localParcel1.writeString(paramString);
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(12, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void setLanguage(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          localParcel1.writeString(paramString);
          this.mRemote.transact(20, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void setMilinkLogLevel(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(19, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void setMipushRegId(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          localParcel1.writeString(paramString);
          this.mRemote.transact(17, localParcel1, localParcel2, 0);
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
      public void setPacketCallBack(IPacketCallback paramIPacketCallback)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 32	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 32	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 34
        //   11: invokevirtual 38	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +42 -> 57
        //   18: aload_1
        //   19: invokeinterface 125 1 0
        //   24: astore_1
        //   25: aload_2
        //   26: aload_1
        //   27: invokevirtual 102	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   30: aload_0
        //   31: getfield 19	com/mi/milink/sdk/aidl/IService$Stub$Proxy:mRemote	Landroid/os/IBinder;
        //   34: iconst_4
        //   35: aload_2
        //   36: aload_3
        //   37: iconst_0
        //   38: invokeinterface 48 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 51	android/os/Parcel:readException	()V
        //   48: aload_3
        //   49: invokevirtual 58	android/os/Parcel:recycle	()V
        //   52: aload_2
        //   53: invokevirtual 58	android/os/Parcel:recycle	()V
        //   56: return
        //   57: aconst_null
        //   58: astore_1
        //   59: goto -34 -> 25
        //   62: astore_1
        //   63: aload_3
        //   64: invokevirtual 58	android/os/Parcel:recycle	()V
        //   67: aload_2
        //   68: invokevirtual 58	android/os/Parcel:recycle	()V
        //   71: aload_1
        //   72: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	73	0	this	Proxy
        //   0	73	1	paramIPacketCallback	IPacketCallback
        //   3	65	2	localParcel1	Parcel
        //   7	57	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	62	finally
        //   18	25	62	finally
        //   25	48	62	finally
      }
      
      public void setTimeoutMultiply(float paramFloat)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          localParcel1.writeFloat(paramFloat);
          this.mRemote.transact(8, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void suspectBadConnection()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.mi.milink.sdk.aidl.IService");
          this.mRemote.transact(18, localParcel1, localParcel2, 0);
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\aidl\IService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */