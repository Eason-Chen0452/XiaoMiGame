package com.xiaomi.gamecenter.sdk;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface IServiceCallback
  extends IInterface
{
  public abstract void startActivity(String paramString1, String paramString2, Bundle paramBundle)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IServiceCallback
  {
    private static final String DESCRIPTOR = "com.xiaomi.gamecenter.sdk.IServiceCallback";
    static final int TRANSACTION_startActivity = 1;
    
    public Stub()
    {
      attachInterface(this, "com.xiaomi.gamecenter.sdk.IServiceCallback");
    }
    
    public static IServiceCallback asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.gamecenter.sdk.IServiceCallback");
      if ((localIInterface != null) && ((localIInterface instanceof IServiceCallback))) {
        return (IServiceCallback)localIInterface;
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
        paramParcel2.writeString("com.xiaomi.gamecenter.sdk.IServiceCallback");
        return true;
      }
      paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IServiceCallback");
      String str1 = paramParcel1.readString();
      String str2 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        startActivity(str1, str2, paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    }
    
    private static final class a
      implements IServiceCallback
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
      
      /* Error */
      public final void startActivity(String paramString1, String paramString2, Bundle paramBundle)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore 4
        //   5: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   8: astore 5
        //   10: aload 4
        //   12: ldc 33
        //   14: invokevirtual 37	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   17: aload 4
        //   19: aload_1
        //   20: invokevirtual 40	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   23: aload 4
        //   25: aload_2
        //   26: invokevirtual 40	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   29: aload_3
        //   30: ifnull +48 -> 78
        //   33: aload 4
        //   35: iconst_1
        //   36: invokevirtual 44	android/os/Parcel:writeInt	(I)V
        //   39: aload_3
        //   40: aload 4
        //   42: iconst_0
        //   43: invokevirtual 50	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   46: aload_0
        //   47: getfield 18	com/xiaomi/gamecenter/sdk/IServiceCallback$Stub$a:a	Landroid/os/IBinder;
        //   50: iconst_1
        //   51: aload 4
        //   53: aload 5
        //   55: iconst_0
        //   56: invokeinterface 56 5 0
        //   61: pop
        //   62: aload 5
        //   64: invokevirtual 59	android/os/Parcel:readException	()V
        //   67: aload 5
        //   69: invokevirtual 62	android/os/Parcel:recycle	()V
        //   72: aload 4
        //   74: invokevirtual 62	android/os/Parcel:recycle	()V
        //   77: return
        //   78: aload 4
        //   80: iconst_0
        //   81: invokevirtual 44	android/os/Parcel:writeInt	(I)V
        //   84: goto -38 -> 46
        //   87: astore_1
        //   88: aload 5
        //   90: invokevirtual 62	android/os/Parcel:recycle	()V
        //   93: aload 4
        //   95: invokevirtual 62	android/os/Parcel:recycle	()V
        //   98: aload_1
        //   99: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	100	0	this	a
        //   0	100	1	paramString1	String
        //   0	100	2	paramString2	String
        //   0	100	3	paramBundle	Bundle
        //   3	91	4	localParcel1	Parcel
        //   8	81	5	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   10	29	87	finally
        //   33	46	87	finally
        //   46	67	87	finally
        //   78	84	87	finally
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\IServiceCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */