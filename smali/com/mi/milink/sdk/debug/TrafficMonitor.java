package com.mi.milink.sdk.debug;

import android.text.TextUtils;
import com.mi.milink.sdk.data.Const;
import com.mi.milink.sdk.util.CommonUtils;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class TrafficMonitor
{
  private static final String TAG = "TrafficMonitor";
  private static final String TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";
  private static TrafficMonitor sInstance = new TrafficMonitor();
  private volatile boolean mIsStarted = false;
  private final ConcurrentHashMap<String, TrafficMonitorItem> mMonitorItemMap = new ConcurrentHashMap(32);
  private volatile long mStartTime;
  
  public static TrafficMonitor getInstance()
  {
    return sInstance;
  }
  
  public void pause()
  {
    this.mIsStarted = false;
  }
  
  public void print()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append("startTime:").append(CommonUtils.createDataFormat("yyyy-MM-dd HH:mm:ss").format(new Date(this.mStartTime)));
    Object localObject = new ConcurrentHashMap(32);
    ((ConcurrentHashMap)localObject).putAll(this.mMonitorItemMap);
    localObject = ((ConcurrentHashMap)localObject).entrySet().iterator();
    int i1 = 0;
    int n = 0;
    int m = 0;
    int k = 0;
    int j = 0;
    int i = 0;
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      int i2;
      if (Const.isMnsCmd((String)localEntry.getKey()))
      {
        i2 = ((TrafficMonitorItem)localEntry.getValue()).count;
        j = ((TrafficMonitorItem)localEntry.getValue()).totalSize + j;
        i = i2 + i;
      }
      else if (((String)localEntry.getKey()).contains(".do"))
      {
        i2 = ((TrafficMonitorItem)localEntry.getValue()).count;
        i1 = ((TrafficMonitorItem)localEntry.getValue()).totalSize + i1;
        n = i2 + n;
      }
      else
      {
        i2 = ((TrafficMonitorItem)localEntry.getValue()).count;
        m = ((TrafficMonitorItem)localEntry.getValue()).totalSize + m;
        k = i2 + k;
      }
    }
    localStringBuilder.append(" ");
    localStringBuilder.append("{mlinkCount:").append(i).append(",");
    localStringBuilder.append("mlinkTotalSize:").append(j).append("} ");
    localStringBuilder.append("{otherCount:").append(k).append(",");
    localStringBuilder.append("otherTotalSize:").append(m).append("} ");
    localStringBuilder.append("{httpCount:").append(n).append(",");
    localStringBuilder.append("httpTotalSize:").append(i1).append("}");
    localStringBuilder.append("]");
    MiLinkLog.w("TrafficMonitor", "traffic statistic: " + localStringBuilder.toString());
  }
  
  public void printDetail()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append("startTime:").append(CommonUtils.createDataFormat("yyyy-MM-dd HH:mm:ss").format(new Date(this.mStartTime)));
    Object localObject = new ConcurrentHashMap(32);
    ((ConcurrentHashMap)localObject).putAll(this.mMonitorItemMap);
    localObject = ((ConcurrentHashMap)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      localStringBuilder.append(" {cmd:").append((String)localEntry.getKey()).append(", count:").append(((TrafficMonitorItem)localEntry.getValue()).count).append(", totalSize:").append(((TrafficMonitorItem)localEntry.getValue()).totalSize).append("}");
    }
    localStringBuilder.append("]");
    MiLinkLog.i("TrafficMonitor", "traffic statistic detail: " + localStringBuilder.toString());
  }
  
  public void resume()
  {
    this.mIsStarted = true;
  }
  
  public void start()
  {
    this.mStartTime = System.currentTimeMillis();
    this.mMonitorItemMap.clear();
    this.mIsStarted = true;
  }
  
  public void traffic(String paramString, int paramInt)
  {
    if ((this.mIsStarted) && (!TextUtils.isEmpty(paramString)))
    {
      localTrafficMonitorItem = (TrafficMonitorItem)this.mMonitorItemMap.get(paramString);
      if (localTrafficMonitorItem != null)
      {
        localTrafficMonitorItem.count += 1;
        localTrafficMonitorItem.totalSize += paramInt;
      }
    }
    else
    {
      return;
    }
    TrafficMonitorItem localTrafficMonitorItem = new TrafficMonitorItem();
    this.mMonitorItemMap.put(paramString, localTrafficMonitorItem);
    localTrafficMonitorItem.count += 1;
    localTrafficMonitorItem.totalSize += paramInt;
  }
  
  static class TrafficMonitorItem
    implements Serializable
  {
    private static final long serialVersionUID = -1887022887439235063L;
    public int count;
    public int totalSize;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\debug\TrafficMonitor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */