package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;

public class BitmapEncoder
  implements ResourceEncoder<Bitmap>
{
  public static final Option<Bitmap.CompressFormat> COMPRESSION_FORMAT = Option.memory("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");
  public static final Option<Integer> COMPRESSION_QUALITY = Option.memory("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", Integer.valueOf(90));
  private static final String TAG = "BitmapEncoder";
  
  private Bitmap.CompressFormat getFormat(Bitmap paramBitmap, Options paramOptions)
  {
    paramOptions = (Bitmap.CompressFormat)paramOptions.get(COMPRESSION_FORMAT);
    if (paramOptions != null) {
      return paramOptions;
    }
    if (paramBitmap.hasAlpha()) {
      return Bitmap.CompressFormat.PNG;
    }
    return Bitmap.CompressFormat.JPEG;
  }
  
  /* Error */
  public boolean encode(com.bumptech.glide.load.engine.Resource<Bitmap> paramResource, java.io.File paramFile, Options paramOptions)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 77 1 0
    //   6: checkcast 57	android/graphics/Bitmap
    //   9: astore 9
    //   11: invokestatic 83	com/bumptech/glide/util/LogTime:getLogTime	()J
    //   14: lstore 5
    //   16: aload_0
    //   17: aload 9
    //   19: aload_3
    //   20: invokespecial 85	com/bumptech/glide/load/resource/bitmap/BitmapEncoder:getFormat	(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Options;)Landroid/graphics/Bitmap$CompressFormat;
    //   23: astore 10
    //   25: aload_3
    //   26: getstatic 34	com/bumptech/glide/load/resource/bitmap/BitmapEncoder:COMPRESSION_QUALITY	Lcom/bumptech/glide/load/Option;
    //   29: invokevirtual 53	com/bumptech/glide/load/Options:get	(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;
    //   32: checkcast 22	java/lang/Integer
    //   35: invokevirtual 89	java/lang/Integer:intValue	()I
    //   38: istore 4
    //   40: iconst_0
    //   41: istore 8
    //   43: aconst_null
    //   44: astore_1
    //   45: aconst_null
    //   46: astore_3
    //   47: new 91	java/io/FileOutputStream
    //   50: dup
    //   51: aload_2
    //   52: invokespecial 94	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   55: astore_2
    //   56: aload 9
    //   58: aload 10
    //   60: iload 4
    //   62: aload_2
    //   63: invokevirtual 98	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   66: pop
    //   67: aload_2
    //   68: invokevirtual 103	java/io/OutputStream:close	()V
    //   71: iconst_1
    //   72: istore 7
    //   74: aload_2
    //   75: ifnull +156 -> 231
    //   78: aload_2
    //   79: invokevirtual 103	java/io/OutputStream:close	()V
    //   82: ldc 16
    //   84: iconst_2
    //   85: invokestatic 109	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   88: ifeq +55 -> 143
    //   91: ldc 16
    //   93: new 111	java/lang/StringBuilder
    //   96: dup
    //   97: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   100: ldc 114
    //   102: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: aload 10
    //   107: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   110: ldc 123
    //   112: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: aload 9
    //   117: invokestatic 129	com/bumptech/glide/util/Util:getBitmapByteSize	(Landroid/graphics/Bitmap;)I
    //   120: invokevirtual 132	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   123: ldc -122
    //   125: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: lload 5
    //   130: invokestatic 138	com/bumptech/glide/util/LogTime:getElapsedMillis	(J)D
    //   133: invokevirtual 141	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   136: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: invokestatic 149	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   142: pop
    //   143: iload 7
    //   145: ireturn
    //   146: astore_1
    //   147: goto -65 -> 82
    //   150: astore_1
    //   151: aload_3
    //   152: astore_2
    //   153: aload_1
    //   154: astore_3
    //   155: aload_2
    //   156: astore_1
    //   157: ldc 16
    //   159: iconst_3
    //   160: invokestatic 109	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   163: ifeq +14 -> 177
    //   166: aload_2
    //   167: astore_1
    //   168: ldc 16
    //   170: ldc -105
    //   172: aload_3
    //   173: invokestatic 155	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   176: pop
    //   177: iload 8
    //   179: istore 7
    //   181: aload_2
    //   182: ifnull -100 -> 82
    //   185: aload_2
    //   186: invokevirtual 103	java/io/OutputStream:close	()V
    //   189: iload 8
    //   191: istore 7
    //   193: goto -111 -> 82
    //   196: astore_1
    //   197: iload 8
    //   199: istore 7
    //   201: goto -119 -> 82
    //   204: astore_2
    //   205: aload_1
    //   206: ifnull +7 -> 213
    //   209: aload_1
    //   210: invokevirtual 103	java/io/OutputStream:close	()V
    //   213: aload_2
    //   214: athrow
    //   215: astore_1
    //   216: goto -3 -> 213
    //   219: astore_3
    //   220: aload_2
    //   221: astore_1
    //   222: aload_3
    //   223: astore_2
    //   224: goto -19 -> 205
    //   227: astore_3
    //   228: goto -73 -> 155
    //   231: goto -149 -> 82
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	234	0	this	BitmapEncoder
    //   0	234	1	paramResource	com.bumptech.glide.load.engine.Resource<Bitmap>
    //   0	234	2	paramFile	java.io.File
    //   0	234	3	paramOptions	Options
    //   38	23	4	i	int
    //   14	115	5	l	long
    //   72	128	7	bool1	boolean
    //   41	157	8	bool2	boolean
    //   9	107	9	localBitmap	Bitmap
    //   23	83	10	localCompressFormat	Bitmap.CompressFormat
    // Exception table:
    //   from	to	target	type
    //   78	82	146	java/io/IOException
    //   47	56	150	java/io/IOException
    //   185	189	196	java/io/IOException
    //   47	56	204	finally
    //   157	166	204	finally
    //   168	177	204	finally
    //   209	213	215	java/io/IOException
    //   56	71	219	finally
    //   56	71	227	java/io/IOException
  }
  
  public EncodeStrategy getEncodeStrategy(Options paramOptions)
  {
    return EncodeStrategy.TRANSFORMED;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\load\resource\bitmap\BitmapEncoder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */