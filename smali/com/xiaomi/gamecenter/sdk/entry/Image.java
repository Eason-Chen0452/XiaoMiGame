package com.xiaomi.gamecenter.sdk.entry;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
import android.text.TextUtils;
import cn.com.wali.basetool.utils.MD5;
import com.xiaomi.gamecenter.sdk.utils.CdnDomainUrl;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class Image
{
  private static a bitmap_cache;
  private static ConcurrentHashMap<String, Image> image_cache;
  private String mCdnDomain;
  private ThumbnailFormat mFormat;
  private boolean mIsHD = false;
  private String mLocalName;
  private String mPackageName;
  private String mParameters;
  private String mPath;
  private ImageProcesser mProcesser;
  private String mResType;
  
  private Image(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      this.mPath = paramString;
      this.mLocalName = MD5.c(this.mPath.getBytes());
    }
  }
  
  public static void clean()
  {
    int j = 0;
    Object localObject2 = a.a(bitmap_cache).snapshot().entrySet();
    Object localObject1 = new ArrayList(((Set)localObject2).size());
    localObject2 = ((Set)localObject2).iterator();
    int k;
    int m;
    for (int i = 0; ((Iterator)localObject2).hasNext(); i = m * k + i)
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
      k = ((Bitmap)localEntry.getValue()).getHeight();
      m = ((Bitmap)localEntry.getValue()).getRowBytes();
      ((ArrayList)localObject1).add(localEntry);
    }
    Collections.sort((List)localObject1, new c());
    localObject1 = ((ArrayList)localObject1).iterator();
    while ((((Iterator)localObject1).hasNext()) && (j < i >> 1))
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      k = ((Bitmap)((Map.Entry)localObject2).getValue()).getHeight();
      j += ((Bitmap)((Map.Entry)localObject2).getValue()).getRowBytes() * k;
      a.a(bitmap_cache).remove(((Map.Entry)localObject2).getKey());
    }
  }
  
  public static void cleanAll()
  {
    a.a(bitmap_cache).evictAll();
  }
  
  public static Image get(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      localObject = null;
    }
    Image localImage;
    do
    {
      return (Image)localObject;
      localImage = (Image)image_cache.get(paramString);
      localObject = localImage;
    } while (localImage != null);
    Object localObject = new Image(paramString);
    image_cache.put(paramString, localObject);
    return (Image)localObject;
  }
  
  public static Image get(String paramString, ImageProcesser paramImageProcesser)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    paramString = get(paramString);
    paramString.setImageProcesser(paramImageProcesser);
    return paramString;
  }
  
  public static Image get(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (TextUtils.isEmpty(paramString4)) {
      paramString1 = null;
    }
    do
    {
      return paramString1;
      Object localObject = new StringBuffer();
      if (!paramString4.startsWith("http"))
      {
        if (!TextUtils.isEmpty(paramString2)) {
          ((StringBuffer)localObject).append(paramString2).append("/");
        }
        ((StringBuffer)localObject).append(CdnDomainUrl.a).append("/");
        if (!TextUtils.isEmpty(paramString3)) {
          ((StringBuffer)localObject).append(paramString3).append("/");
        }
      }
      ((StringBuffer)localObject).append(paramString4);
      localObject = ((StringBuffer)localObject).toString();
      paramString4 = (Image)image_cache.get(localObject);
      if (paramString4 == null)
      {
        paramString4 = new Image((String)localObject);
        paramString4.mCdnDomain = paramString1;
        paramString4.mResType = paramString2;
        paramString4.mParameters = paramString3;
        image_cache.put(localObject, paramString4);
        return paramString4;
      }
      if (TextUtils.isEmpty(paramString4.mCdnDomain)) {
        paramString4.mCdnDomain = paramString1;
      }
      if (TextUtils.isEmpty(paramString4.mResType)) {
        paramString4.mResType = paramString2;
      }
      paramString1 = paramString4;
    } while (!TextUtils.isEmpty(paramString4.mParameters));
    paramString4.mParameters = paramString3;
    return paramString4;
  }
  
  public static void init(Context paramContext)
  {
    if (bitmap_cache == null) {
      bitmap_cache = new a((byte)0);
    }
    if (image_cache == null) {
      image_cache = new ConcurrentHashMap();
    }
  }
  
  public static void setNormalHost(String paramString) {}
  
  public static void setThumbnailHost(String paramString) {}
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while ((!(paramObject instanceof Image)) || (this.mPath == null)) {
      return false;
    }
    return this.mPath.equals(((Image)paramObject).mPath);
  }
  
  public final String getImagePath()
  {
    return this.mPath;
  }
  
  public final File getLocalCacheFile(File paramFile)
  {
    if (!TextUtils.isEmpty(this.mLocalName)) {
      return new File(paramFile, this.mLocalName);
    }
    return null;
  }
  
  public final File getLocalCacheFileByPackageName(File paramFile)
  {
    if (!TextUtils.isEmpty(this.mPackageName)) {
      return new File(paramFile, this.mPackageName + ".png");
    }
    return null;
  }
  
  public String getLocalName()
  {
    return this.mLocalName;
  }
  
  public final Bitmap getMemoryCachedBitmap()
  {
    return (Bitmap)a.a(bitmap_cache).get(this.mPath);
  }
  
  public String getPackageName()
  {
    return this.mPackageName;
  }
  
  public String getParameters()
  {
    return this.mParameters;
  }
  
  public ImageProcesser getProcesser()
  {
    return this.mProcesser;
  }
  
  public String getResType()
  {
    return this.mResType;
  }
  
  public String getmCdnDomain()
  {
    return this.mCdnDomain;
  }
  
  public final boolean hasLocalCache(File paramFile)
  {
    return (!TextUtils.isEmpty(this.mLocalName)) && (new File(paramFile, this.mLocalName).exists());
  }
  
  public final boolean hasMemoryCache()
  {
    return a.a(bitmap_cache).get(this.mPath) != null;
  }
  
  public int hashCode()
  {
    if (this.mPath == null) {
      return 0;
    }
    return this.mPath.hashCode();
  }
  
  public boolean isHD()
  {
    return this.mIsHD;
  }
  
  public void setImagePackageName(String paramString)
  {
    this.mPackageName = paramString;
  }
  
  public void setImageProcesser(ImageProcesser paramImageProcesser)
  {
    this.mProcesser = paramImageProcesser;
  }
  
  public void setIsHD(boolean paramBoolean)
  {
    this.mIsHD = paramBoolean;
  }
  
  public final void setMemoryCachedBitmap(Bitmap paramBitmap, long paramLong)
  {
    if (paramBitmap != null) {
      a.a(bitmap_cache).put(this.mPath, paramBitmap);
    }
  }
  
  public void setThumbnailFormat(ThumbnailFormat paramThumbnailFormat)
  {
    this.mFormat = paramThumbnailFormat;
  }
  
  public void setmCdnDomain(String paramString)
  {
    this.mCdnDomain = paramString;
  }
  
  public static abstract interface ImageProcesser
  {
    public abstract Bitmap processImage(Bitmap paramBitmap);
  }
  
  public static class ThumbnailFormat
  {
    public static final int FORMAT_JPEG = 0;
    public static final int FORMAT_PNG = 1;
    public static final int QUALITY_DEFAULT = 80;
    public static final int THUMBNAIL_MAX_HEIGHT = 2;
    public static final int THUMBNAIL_MAX_LENGTH = 0;
    public static final int THUMBNAIL_MAX_WIDTH = 1;
    public static final int THUMBNAIL_MAX_WIDTH_HEIGHT = 3;
    private int mImageFormat;
    private int mImageQuality = 80;
    private int mMaxHeight = 0;
    private int mMaxLength = 0;
    private int mMaxWidth = 0;
    private int mThumbnailType;
    
    public static ThumbnailFormat getMaxHeightThumnail(int paramInt1, int paramInt2)
    {
      ThumbnailFormat localThumbnailFormat = new ThumbnailFormat();
      localThumbnailFormat.mMaxWidth = paramInt1;
      localThumbnailFormat.mThumbnailType = 2;
      localThumbnailFormat.mImageFormat = paramInt2;
      return localThumbnailFormat;
    }
    
    public static ThumbnailFormat getMaxLengthThumnail(int paramInt1, int paramInt2)
    {
      ThumbnailFormat localThumbnailFormat = new ThumbnailFormat();
      localThumbnailFormat.mMaxLength = paramInt1;
      localThumbnailFormat.mThumbnailType = 0;
      localThumbnailFormat.mImageFormat = paramInt2;
      return localThumbnailFormat;
    }
    
    public static ThumbnailFormat getMaxWidthHeightThumnail(int paramInt1, int paramInt2, int paramInt3)
    {
      ThumbnailFormat localThumbnailFormat = new ThumbnailFormat();
      localThumbnailFormat.mMaxWidth = paramInt1;
      localThumbnailFormat.mMaxHeight = paramInt2;
      localThumbnailFormat.mThumbnailType = 3;
      localThumbnailFormat.mImageFormat = paramInt3;
      return localThumbnailFormat;
    }
    
    public static ThumbnailFormat getMaxWidthThumnail(int paramInt1, int paramInt2)
    {
      ThumbnailFormat localThumbnailFormat = new ThumbnailFormat();
      localThumbnailFormat.mMaxWidth = paramInt1;
      localThumbnailFormat.mThumbnailType = 1;
      localThumbnailFormat.mImageFormat = paramInt2;
      return localThumbnailFormat;
    }
    
    public boolean checkFormat()
    {
      if ((this.mImageFormat != 0) && (this.mImageFormat != 1)) {}
      do
      {
        return false;
        if ((this.mThumbnailType == 0) && (this.mMaxLength > 0)) {
          return true;
        }
        if ((this.mThumbnailType == 1) && (this.mMaxWidth > 0)) {
          return true;
        }
        if ((this.mThumbnailType == 2) && (this.mMaxHeight > 0)) {
          return true;
        }
      } while ((this.mThumbnailType != 3) || (this.mMaxWidth <= 0) || (this.mMaxHeight <= 0));
      return true;
    }
    
    String getThumbnailFormatProperty()
    {
      if (!checkFormat()) {
        return null;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      if (this.mImageFormat == 0)
      {
        localStringBuilder.append("jpeg");
        localStringBuilder.append("/");
        if (this.mThumbnailType != 0) {
          break label116;
        }
        localStringBuilder.append("l" + this.mMaxLength);
      }
      for (;;)
      {
        localStringBuilder.append("q" + this.mImageQuality);
        return localStringBuilder.toString();
        if (this.mImageFormat != 1) {
          break;
        }
        localStringBuilder.append("png");
        break;
        label116:
        if (this.mThumbnailType == 1)
        {
          localStringBuilder.append("w" + this.mMaxWidth);
        }
        else if (this.mThumbnailType == 2)
        {
          localStringBuilder.append("h" + this.mMaxHeight);
        }
        else if (this.mThumbnailType == 3)
        {
          localStringBuilder.append("w" + this.mMaxWidth);
          localStringBuilder.append("h" + this.mMaxHeight);
        }
      }
    }
    
    public void setImageQuality(int paramInt)
    {
      if ((paramInt > 100) || (paramInt < 0)) {
        this.mImageQuality = 80;
      }
      this.mImageQuality = paramInt;
    }
  }
  
  private static final class a
  {
    private LruCache<String, Bitmap> a = new d(this, Math.round(0.3F * (float)Runtime.getRuntime().maxMemory()));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\Image.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */