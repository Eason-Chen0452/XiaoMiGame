package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.gamecenter.sdk.a;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

public final class PackgeInfoHelper
{
  private static PackgeInfoHelper a;
  private static ArrayList<ClientPkgInfo> c = new ArrayList();
  private Context b;
  
  private PackgeInfoHelper(Context paramContext)
  {
    this.b = paramContext;
    c();
  }
  
  public static AccountType a(String paramString)
  {
    if (c != null)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        ClientPkgInfo localClientPkgInfo = (ClientPkgInfo)localIterator.next();
        if (localClientPkgInfo.a.equals(paramString)) {
          return AccountType.fromInt(localClientPkgInfo.e);
        }
      }
    }
    return AccountType.AccountType_NOACCOUNT;
  }
  
  public static PackgeInfoHelper a()
  {
    return a;
  }
  
  public static void a(Context paramContext)
  {
    if (a == null) {
      a = new PackgeInfoHelper(paramContext);
    }
  }
  
  private void b()
  {
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(new File(this.b.getFilesDir(), "pkginfo"));
      DataOutputStream localDataOutputStream = new DataOutputStream(localFileOutputStream);
      localDataOutputStream.writeInt(c.size());
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        ClientPkgInfo localClientPkgInfo = (ClientPkgInfo)localIterator.next();
        localDataOutputStream.writeUTF(localClientPkgInfo.a);
        if (localClientPkgInfo.b == null) {
          localClientPkgInfo.b = "";
        }
        localDataOutputStream.writeUTF(localClientPkgInfo.b);
        if (localClientPkgInfo.c == null) {
          localClientPkgInfo.c = "";
        }
        localDataOutputStream.writeUTF(localClientPkgInfo.c);
        localDataOutputStream.writeBoolean(localClientPkgInfo.d);
        localDataOutputStream.writeInt(localClientPkgInfo.e);
      }
      localDataOutputStream.close();
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    localException.close();
  }
  
  private void c()
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      Object localObject1 = new File(this.b.getFilesDir(), "pkginfo");
      Object localObject2 = a.a();
      Object localObject3 = ((a)localObject2).a("init_package_info");
      if ((TextUtils.isEmpty((CharSequence)localObject3)) || (((String)localObject3).equals("false")))
      {
        if (((File)localObject1).exists()) {
          ((File)localObject1).delete();
        }
        ((a)localObject2).a("init_package_info", "true");
        ((a)localObject2).b();
      }
      localObject1 = new FileInputStream(new File(this.b.getFilesDir(), "pkginfo"));
      localObject2 = new DataInputStream((InputStream)localObject1);
      int j = ((DataInputStream)localObject2).readInt();
      int i = 0;
      while (i < j)
      {
        localObject3 = new ClientPkgInfo();
        ((ClientPkgInfo)localObject3).a = ((DataInputStream)localObject2).readUTF();
        ((ClientPkgInfo)localObject3).b = ((DataInputStream)localObject2).readUTF();
        ((ClientPkgInfo)localObject3).c = ((DataInputStream)localObject2).readUTF();
        ((ClientPkgInfo)localObject3).d = ((DataInputStream)localObject2).readBoolean();
        ((ClientPkgInfo)localObject3).e = ((DataInputStream)localObject2).readInt();
        localArrayList.add(localObject3);
        i += 1;
      }
      ((DataInputStream)localObject2).close();
      ((FileInputStream)localObject1).close();
      c = localArrayList;
      return;
    }
    catch (Throwable localThrowable)
    {
      c.clear();
    }
  }
  
  public final void a(MiAppEntry paramMiAppEntry)
  {
    if (paramMiAppEntry == null) {}
    for (;;)
    {
      return;
      Object localObject = paramMiAppEntry.getNewAppId();
      if (c != null)
      {
        Iterator localIterator = c.iterator();
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
        } while (!((ClientPkgInfo)localIterator.next()).a.equals(localObject));
      }
      for (int i = 1; i == 0; i = 0)
      {
        localObject = new ClientPkgInfo();
        ((ClientPkgInfo)localObject).a = paramMiAppEntry.getNewAppId();
        ((ClientPkgInfo)localObject).b = paramMiAppEntry.getPkgName();
        ((ClientPkgInfo)localObject).c = paramMiAppEntry.getPkgLabel();
        ((ClientPkgInfo)localObject).d = false;
        c.add(localObject);
        try
        {
          b();
          return;
        }
        catch (Exception paramMiAppEntry)
        {
          paramMiAppEntry.printStackTrace();
          return;
        }
      }
    }
  }
  
  public final void a(String paramString, AccountType paramAccountType)
  {
    if ((c != null) && (paramAccountType != null))
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        ClientPkgInfo localClientPkgInfo = (ClientPkgInfo)localIterator.next();
        if (localClientPkgInfo.a.equals(paramString))
        {
          localClientPkgInfo.e = paramAccountType.ordinal();
          b();
        }
      }
    }
  }
  
  public class ClientPkgInfo
  {
    String a;
    String b;
    String c;
    boolean d;
    int e = AccountType.AccountType_NOACCOUNT.ordinal();
    
    public ClientPkgInfo() {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\PackgeInfoHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */