package com.aonesoft.lib.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.io.PrintStream;
import java.util.concurrent.LinkedBlockingQueue;

public class AoneAdvertisingIdClient
{
  private static String adId = "";
  
  public static String getAdId()
  {
    return adId;
  }
  
  public static AdInfo getAdvertisingIdInfo(Context paramContext)
    throws Exception
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot be called from the main thread");
    }
    try
    {
      paramContext.getPackageManager().getPackageInfo("com.android.vending", 0);
      AdvertisingConnection localAdvertisingConnection = new AdvertisingConnection(null);
      Object localObject1 = new Intent("com.google.android.gms.ads.identifier.service.START");
      ((Intent)localObject1).setPackage("com.google.android.gms");
      if (paramContext.bindService((Intent)localObject1, localAdvertisingConnection, 1)) {}
      throw new IOException("Google Play connection failed");
    }
    catch (Exception paramContext)
    {
      try
      {
        localObject1 = new AdvertisingInterface(localAdvertisingConnection.getBinder());
        localObject1 = new AdInfo(((AdvertisingInterface)localObject1).getId(), ((AdvertisingInterface)localObject1).isLimitAdTrackingEnabled(true));
        return (AdInfo)localObject1;
      }
      catch (Exception localException)
      {
        throw localException;
      }
      finally
      {
        paramContext.unbindService(localAdvertisingConnection);
      }
      paramContext = paramContext;
      throw paramContext;
    }
  }
  
  public static void initAdId(Context paramContext)
  {
    new Thread(new Runnable()
    {
      public void run()
      {
        try
        {
          AoneAdvertisingIdClient.AdInfo localAdInfo = AoneAdvertisingIdClient.getAdvertisingIdInfo(AoneAdvertisingIdClient.this);
          AoneAdvertisingIdClient.adId = localAdInfo.getId();
          System.out.println("adInfo.getId2:" + localAdInfo.getId());
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }).start();
  }
  
  public static final class AdInfo
  {
    private final String advertisingId;
    private final boolean limitAdTrackingEnabled;
    
    AdInfo(String paramString, boolean paramBoolean)
    {
      this.advertisingId = paramString;
      this.limitAdTrackingEnabled = paramBoolean;
    }
    
    public String getId()
    {
      return this.advertisingId;
    }
    
    public boolean isLimitAdTrackingEnabled()
    {
      return this.limitAdTrackingEnabled;
    }
  }
  
  private static final class AdvertisingConnection
    implements ServiceConnection
  {
    private final LinkedBlockingQueue<IBinder> queue = new LinkedBlockingQueue(1);
    boolean retrieved = false;
    
    public IBinder getBinder()
      throws InterruptedException
    {
      if (this.retrieved) {
        throw new IllegalStateException();
      }
      this.retrieved = true;
      return (IBinder)this.queue.take();
    }
    
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      try
      {
        this.queue.put(paramIBinder);
        return;
      }
      catch (InterruptedException paramComponentName) {}
    }
    
    public void onServiceDisconnected(ComponentName paramComponentName) {}
  }
  
  private static final class AdvertisingInterface
    implements IInterface
  {
    private IBinder binder;
    
    public AdvertisingInterface(IBinder paramIBinder)
    {
      this.binder = paramIBinder;
    }
    
    public IBinder asBinder()
    {
      return this.binder;
    }
    
    public String getId()
      throws RemoteException
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        this.binder.transact(1, localParcel1, localParcel2, 0);
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
    public boolean isLimitAdTrackingEnabled(boolean paramBoolean)
      throws RemoteException
    {
      // Byte code:
      //   0: iconst_1
      //   1: istore_3
      //   2: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   5: astore 4
      //   7: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   10: astore 5
      //   12: aload 4
      //   14: ldc 33
      //   16: invokevirtual 37	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   19: iload_1
      //   20: ifeq +56 -> 76
      //   23: iconst_1
      //   24: istore_2
      //   25: aload 4
      //   27: iload_2
      //   28: invokevirtual 59	android/os/Parcel:writeInt	(I)V
      //   31: aload_0
      //   32: getfield 18	com/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingInterface:binder	Landroid/os/IBinder;
      //   35: iconst_2
      //   36: aload 4
      //   38: aload 5
      //   40: iconst_0
      //   41: invokeinterface 43 5 0
      //   46: pop
      //   47: aload 5
      //   49: invokevirtual 46	android/os/Parcel:readException	()V
      //   52: aload 5
      //   54: invokevirtual 63	android/os/Parcel:readInt	()I
      //   57: istore_2
      //   58: iload_2
      //   59: ifeq +22 -> 81
      //   62: iload_3
      //   63: istore_1
      //   64: aload 5
      //   66: invokevirtual 52	android/os/Parcel:recycle	()V
      //   69: aload 4
      //   71: invokevirtual 52	android/os/Parcel:recycle	()V
      //   74: iload_1
      //   75: ireturn
      //   76: iconst_0
      //   77: istore_2
      //   78: goto -53 -> 25
      //   81: iconst_0
      //   82: istore_1
      //   83: goto -19 -> 64
      //   86: astore 6
      //   88: aload 5
      //   90: invokevirtual 52	android/os/Parcel:recycle	()V
      //   93: aload 4
      //   95: invokevirtual 52	android/os/Parcel:recycle	()V
      //   98: aload 6
      //   100: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	101	0	this	AdvertisingInterface
      //   0	101	1	paramBoolean	boolean
      //   24	54	2	i	int
      //   1	62	3	bool	boolean
      //   5	89	4	localParcel1	Parcel
      //   10	79	5	localParcel2	Parcel
      //   86	13	6	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   12	19	86	finally
      //   25	58	86	finally
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\utils\AoneAdvertisingIdClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */