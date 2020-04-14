package com.xiaomi.gamecenter.sdk.ui.notice.utils;

import android.content.Context;
import android.text.TextUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;

public final class NoticeHelper
{
  public static NoticeHelper a;
  private static ArrayList<NoticeTaskInfo> c = new ArrayList();
  private Context b;
  
  private NoticeHelper(Context paramContext)
  {
    this.b = paramContext;
    b();
  }
  
  public static NoticeHelper a()
  {
    return a;
  }
  
  public static void a(Context paramContext)
  {
    if (a == null) {
      a = new NoticeHelper(paramContext);
    }
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    if (c.size() > 0)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        NoticeTaskInfo localNoticeTaskInfo = (NoticeTaskInfo)localIterator.next();
        if ((localNoticeTaskInfo.a.equals(paramString1)) && (localNoticeTaskInfo.b.equals(paramString2))) {
          return localNoticeTaskInfo.c;
        }
      }
    }
    return true;
  }
  
  private void b()
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(new File(this.b.getFilesDir(), "noticetaskfile"));
      DataInputStream localDataInputStream = new DataInputStream(localFileInputStream);
      int j = localDataInputStream.readInt();
      int i = 0;
      while (i < j)
      {
        NoticeTaskInfo localNoticeTaskInfo = new NoticeTaskInfo();
        localNoticeTaskInfo.a = localDataInputStream.readUTF();
        localNoticeTaskInfo.b = localDataInputStream.readUTF();
        localNoticeTaskInfo.c = localDataInputStream.readBoolean();
        localArrayList.add(localNoticeTaskInfo);
        i += 1;
      }
      localDataInputStream.close();
      localFileInputStream.close();
      c = localArrayList;
      return;
    }
    catch (Exception localException)
    {
      c.clear();
    }
  }
  
  private void c()
  {
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(new File(this.b.getFilesDir(), "noticetaskfile"));
      DataOutputStream localDataOutputStream = new DataOutputStream(localFileOutputStream);
      localDataOutputStream.writeInt(c.size());
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        NoticeTaskInfo localNoticeTaskInfo = (NoticeTaskInfo)localIterator.next();
        localDataOutputStream.writeUTF(localNoticeTaskInfo.a);
        localDataOutputStream.writeUTF(localNoticeTaskInfo.b);
        localDataOutputStream.writeBoolean(localNoticeTaskInfo.c);
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
  
  public final void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2))) {
      localObject = c.iterator();
    }
    while (((Iterator)localObject).hasNext())
    {
      NoticeTaskInfo localNoticeTaskInfo = (NoticeTaskInfo)((Iterator)localObject).next();
      if ((localNoticeTaskInfo.a.equals(paramString1)) && (localNoticeTaskInfo.b.equals(paramString2)))
      {
        localNoticeTaskInfo.c = paramBoolean;
        c();
        return;
      }
    }
    Object localObject = new NoticeTaskInfo();
    ((NoticeTaskInfo)localObject).a = paramString1;
    ((NoticeTaskInfo)localObject).b = paramString2;
    ((NoticeTaskInfo)localObject).c = paramBoolean;
    c.add(localObject);
    try
    {
      c();
      return;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  public class NoticeTaskInfo
  {
    String a;
    String b;
    boolean c;
    
    public NoticeTaskInfo() {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\utils\NoticeHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */