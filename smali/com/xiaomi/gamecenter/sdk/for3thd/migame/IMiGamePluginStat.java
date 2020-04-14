package com.xiaomi.gamecenter.sdk.for3thd.migame;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.xiaomi.gamecenter.sdk.for3thd.IInstallCallback;
import com.xiaomi.gamecenter.sdk.for3thd.IInstallCallback.Stub;

public abstract interface IMiGamePluginStat
  extends IInterface
{
  public abstract void a(String paramString, IInstallCallback paramIInstallCallback)
    throws RemoteException;
  
  public abstract boolean a(String paramString1, String paramString2, String paramString3, String paramString4)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IMiGamePluginStat
  {
    private static final String DESCRIPTOR = "com.xiaomi.gamecenter.for3thd.migame.IMiGamePluginStat";
    static final int TRANSACTION_installFromFile = 2;
    static final int TRANSACTION_uploadInfo = 1;
    
    public Stub()
    {
      attachInterface(this, "com.xiaomi.gamecenter.for3thd.migame.IMiGamePluginStat");
    }
    
    public static IMiGamePluginStat asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.gamecenter.for3thd.migame.IMiGamePluginStat");
      if ((localIInterface != null) && ((localIInterface instanceof IMiGamePluginStat))) {
        return (IMiGamePluginStat)localIInterface;
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
        paramParcel2.writeString("com.xiaomi.gamecenter.for3thd.migame.IMiGamePluginStat");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.for3thd.migame.IMiGamePluginStat");
        boolean bool = a(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
        paramParcel2.writeNoException();
        if (bool) {}
        for (paramInt1 = 1;; paramInt1 = 0)
        {
          paramParcel2.writeInt(paramInt1);
          return true;
        }
      }
      paramParcel1.enforceInterface("com.xiaomi.gamecenter.for3thd.migame.IMiGamePluginStat");
      a(paramParcel1.readString(), IInstallCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    }
    
    private static final class a
      implements IMiGamePluginStat
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      /* Error */
      public final void a(String paramString, IInstallCallback paramIInstallCallback)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 30
        //   12: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_3
        //   16: aload_1
        //   17: invokevirtual 37	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   20: aload_2
        //   21: ifnull +45 -> 66
        //   24: aload_2
        //   25: invokeinterface 43 1 0
        //   30: astore_1
        //   31: aload_3
        //   32: aload_1
        //   33: invokevirtual 46	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   36: aload_0
        //   37: getfield 18	com/xiaomi/gamecenter/sdk/for3thd/migame/IMiGamePluginStat$Stub$a:a	Landroid/os/IBinder;
        //   40: iconst_2
        //   41: aload_3
        //   42: aload 4
        //   44: iconst_0
        //   45: invokeinterface 52 5 0
        //   50: pop
        //   51: aload 4
        //   53: invokevirtual 55	android/os/Parcel:readException	()V
        //   56: aload 4
        //   58: invokevirtual 58	android/os/Parcel:recycle	()V
        //   61: aload_3
        //   62: invokevirtual 58	android/os/Parcel:recycle	()V
        //   65: return
        //   66: aconst_null
        //   67: astore_1
        //   68: goto -37 -> 31
        //   71: astore_1
        //   72: aload 4
        //   74: invokevirtual 58	android/os/Parcel:recycle	()V
        //   77: aload_3
        //   78: invokevirtual 58	android/os/Parcel:recycle	()V
        //   81: aload_1
        //   82: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	83	0	this	a
        //   0	83	1	paramString	String
        //   0	83	2	paramIInstallCallback	IInstallCallback
        //   3	75	3	localParcel1	Parcel
        //   7	66	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	20	71	finally
        //   24	31	71	finally
        //   31	56	71	finally
      }
      
      /* Error */
      public final boolean a(String paramString1, String paramString2, String paramString3, String paramString4)
        throws RemoteException
      {
        // Byte code:
        //   0: iconst_1
        //   1: istore 6
        //   3: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   6: astore 7
        //   8: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   11: astore 8
        //   13: aload 7
        //   15: ldc 30
        //   17: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   20: aload 7
        //   22: aload_1
        //   23: invokevirtual 37	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   26: aload 7
        //   28: aload_2
        //   29: invokevirtual 37	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   32: aload 7
        //   34: aload_3
        //   35: invokevirtual 37	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   38: aload 7
        //   40: aload 4
        //   42: invokevirtual 37	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   45: aload_0
        //   46: getfield 18	com/xiaomi/gamecenter/sdk/for3thd/migame/IMiGamePluginStat$Stub$a:a	Landroid/os/IBinder;
        //   49: iconst_1
        //   50: aload 7
        //   52: aload 8
        //   54: iconst_0
        //   55: invokeinterface 52 5 0
        //   60: pop
        //   61: aload 8
        //   63: invokevirtual 55	android/os/Parcel:readException	()V
        //   66: aload 8
        //   68: invokevirtual 64	android/os/Parcel:readInt	()I
        //   71: istore 5
        //   73: iload 5
        //   75: ifeq +16 -> 91
        //   78: aload 8
        //   80: invokevirtual 58	android/os/Parcel:recycle	()V
        //   83: aload 7
        //   85: invokevirtual 58	android/os/Parcel:recycle	()V
        //   88: iload 6
        //   90: ireturn
        //   91: iconst_0
        //   92: istore 6
        //   94: goto -16 -> 78
        //   97: astore_1
        //   98: aload 8
        //   100: invokevirtual 58	android/os/Parcel:recycle	()V
        //   103: aload 7
        //   105: invokevirtual 58	android/os/Parcel:recycle	()V
        //   108: aload_1
        //   109: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	110	0	this	a
        //   0	110	1	paramString1	String
        //   0	110	2	paramString2	String
        //   0	110	3	paramString3	String
        //   0	110	4	paramString4	String
        //   71	3	5	i	int
        //   1	92	6	bool	boolean
        //   6	98	7	localParcel1	Parcel
        //   11	88	8	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   13	73	97	finally
      }
      
      public final IBinder asBinder()
      {
        return this.a;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\for3thd\migame\IMiGamePluginStat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */