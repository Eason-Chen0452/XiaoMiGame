package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Option.CacheKeyUpdater;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

public class VideoBitmapDecoder
  implements ResourceDecoder<ParcelFileDescriptor, Bitmap>
{
  private static final MediaMetadataRetrieverFactory DEFAULT_FACTORY = new MediaMetadataRetrieverFactory();
  public static final long DEFAULT_FRAME = -1L;
  public static final Option<Integer> FRAME_OPTION;
  public static final Option<Long> TARGET_FRAME = Option.disk("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", Long.valueOf(-1L), new Option.CacheKeyUpdater()
  {
    private final ByteBuffer buffer = ByteBuffer.allocate(8);
    
    public void update(byte[] arg1, Long paramAnonymousLong, MessageDigest paramAnonymousMessageDigest)
    {
      paramAnonymousMessageDigest.update(???);
      synchronized (this.buffer)
      {
        this.buffer.position(0);
        paramAnonymousMessageDigest.update(this.buffer.putLong(paramAnonymousLong.longValue()).array());
        return;
      }
    }
  });
  private final BitmapPool bitmapPool;
  private final MediaMetadataRetrieverFactory factory;
  
  static
  {
    FRAME_OPTION = Option.disk("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", null, new Option.CacheKeyUpdater()
    {
      private final ByteBuffer buffer = ByteBuffer.allocate(4);
      
      public void update(byte[] arg1, Integer paramAnonymousInteger, MessageDigest paramAnonymousMessageDigest)
      {
        if (paramAnonymousInteger == null) {
          return;
        }
        paramAnonymousMessageDigest.update(???);
        synchronized (this.buffer)
        {
          this.buffer.position(0);
          paramAnonymousMessageDigest.update(this.buffer.putInt(paramAnonymousInteger.intValue()).array());
          return;
        }
      }
    });
  }
  
  public VideoBitmapDecoder(Context paramContext)
  {
    this(Glide.get(paramContext).getBitmapPool());
  }
  
  public VideoBitmapDecoder(BitmapPool paramBitmapPool)
  {
    this(paramBitmapPool, DEFAULT_FACTORY);
  }
  
  VideoBitmapDecoder(BitmapPool paramBitmapPool, MediaMetadataRetrieverFactory paramMediaMetadataRetrieverFactory)
  {
    this.bitmapPool = paramBitmapPool;
    this.factory = paramMediaMetadataRetrieverFactory;
  }
  
  /* Error */
  public com.bumptech.glide.load.engine.Resource<Bitmap> decode(ParcelFileDescriptor paramParcelFileDescriptor, int paramInt1, int paramInt2, Options paramOptions)
    throws java.io.IOException
  {
    // Byte code:
    //   0: aload 4
    //   2: getstatic 49	com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder:TARGET_FRAME	Lcom/bumptech/glide/load/Option;
    //   5: invokevirtual 89	com/bumptech/glide/load/Options:get	(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;
    //   8: checkcast 34	java/lang/Long
    //   11: invokevirtual 93	java/lang/Long:longValue	()J
    //   14: lstore 5
    //   16: lload 5
    //   18: lconst_0
    //   19: lcmp
    //   20: ifge +40 -> 60
    //   23: lload 5
    //   25: ldc2_w 19
    //   28: lcmp
    //   29: ifeq +31 -> 60
    //   32: new 95	java/lang/IllegalArgumentException
    //   35: dup
    //   36: new 97	java/lang/StringBuilder
    //   39: dup
    //   40: invokespecial 98	java/lang/StringBuilder:<init>	()V
    //   43: ldc 100
    //   45: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: lload 5
    //   50: invokevirtual 107	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   53: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: invokespecial 114	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   59: athrow
    //   60: aload 4
    //   62: getstatic 54	com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder:FRAME_OPTION	Lcom/bumptech/glide/load/Option;
    //   65: invokevirtual 89	com/bumptech/glide/load/Options:get	(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;
    //   68: checkcast 116	java/lang/Integer
    //   71: astore 4
    //   73: aload_0
    //   74: getfield 80	com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder:factory	Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
    //   77: invokevirtual 120	com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory:build	()Landroid/media/MediaMetadataRetriever;
    //   80: astore 7
    //   82: aload 7
    //   84: aload_1
    //   85: invokevirtual 126	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   88: invokevirtual 132	android/media/MediaMetadataRetriever:setDataSource	(Ljava/io/FileDescriptor;)V
    //   91: lload 5
    //   93: ldc2_w 19
    //   96: lcmp
    //   97: ifne +29 -> 126
    //   100: aload 7
    //   102: invokevirtual 136	android/media/MediaMetadataRetriever:getFrameAtTime	()Landroid/graphics/Bitmap;
    //   105: astore 4
    //   107: aload 7
    //   109: invokevirtual 139	android/media/MediaMetadataRetriever:release	()V
    //   112: aload_1
    //   113: invokevirtual 142	android/os/ParcelFileDescriptor:close	()V
    //   116: aload 4
    //   118: aload_0
    //   119: getfield 78	com/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder:bitmapPool	Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    //   122: invokestatic 148	com/bumptech/glide/load/resource/bitmap/BitmapResource:obtain	(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    //   125: areturn
    //   126: aload 4
    //   128: ifnonnull +15 -> 143
    //   131: aload 7
    //   133: lload 5
    //   135: invokevirtual 151	android/media/MediaMetadataRetriever:getFrameAtTime	(J)Landroid/graphics/Bitmap;
    //   138: astore 4
    //   140: goto -33 -> 107
    //   143: aload 7
    //   145: lload 5
    //   147: aload 4
    //   149: invokevirtual 155	java/lang/Integer:intValue	()I
    //   152: invokevirtual 158	android/media/MediaMetadataRetriever:getFrameAtTime	(JI)Landroid/graphics/Bitmap;
    //   155: astore 4
    //   157: goto -50 -> 107
    //   160: astore_1
    //   161: aload 7
    //   163: invokevirtual 139	android/media/MediaMetadataRetriever:release	()V
    //   166: aload_1
    //   167: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	168	0	this	VideoBitmapDecoder
    //   0	168	1	paramParcelFileDescriptor	ParcelFileDescriptor
    //   0	168	2	paramInt1	int
    //   0	168	3	paramInt2	int
    //   0	168	4	paramOptions	Options
    //   14	132	5	l	long
    //   80	82	7	localMediaMetadataRetriever	MediaMetadataRetriever
    // Exception table:
    //   from	to	target	type
    //   82	91	160	finally
    //   100	107	160	finally
    //   131	140	160	finally
    //   143	157	160	finally
  }
  
  public boolean handles(ParcelFileDescriptor paramParcelFileDescriptor, Options paramOptions)
  {
    paramOptions = this.factory.build();
    try
    {
      paramOptions.setDataSource(paramParcelFileDescriptor.getFileDescriptor());
      paramOptions.release();
      return true;
    }
    catch (RuntimeException paramParcelFileDescriptor)
    {
      paramParcelFileDescriptor = paramParcelFileDescriptor;
      paramOptions.release();
      return false;
    }
    finally
    {
      paramParcelFileDescriptor = finally;
      paramOptions.release();
      throw paramParcelFileDescriptor;
    }
  }
  
  static class MediaMetadataRetrieverFactory
  {
    public MediaMetadataRetriever build()
    {
      return new MediaMetadataRetriever();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\load\resource\bitmap\VideoBitmapDecoder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */