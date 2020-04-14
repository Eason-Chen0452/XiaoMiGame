package com.bumptech.glide.load.resource.gif;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

public class StreamGifDecoder
  implements ResourceDecoder<InputStream, GifDrawable>
{
  public static final Option<Boolean> DISABLE_ANIMATION = Option.memory("com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder.DisableAnimation", Boolean.valueOf(false));
  private static final String TAG = "StreamGifDecoder";
  private final ArrayPool byteArrayPool;
  private final ResourceDecoder<ByteBuffer, GifDrawable> byteBufferDecoder;
  private final List<ImageHeaderParser> parsers;
  
  public StreamGifDecoder(List<ImageHeaderParser> paramList, ResourceDecoder<ByteBuffer, GifDrawable> paramResourceDecoder, ArrayPool paramArrayPool)
  {
    this.parsers = paramList;
    this.byteBufferDecoder = paramResourceDecoder;
    this.byteArrayPool = paramArrayPool;
  }
  
  private static byte[] inputStreamToBytes(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(16384);
    try
    {
      byte[] arrayOfByte = new byte['䀀'];
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      localByteArrayOutputStream.flush();
    }
    catch (IOException paramInputStream)
    {
      if (Log.isLoggable("StreamGifDecoder", 5)) {
        Log.w("StreamGifDecoder", "Error reading data from stream", paramInputStream);
      }
      return null;
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  public Resource<GifDrawable> decode(InputStream paramInputStream, int paramInt1, int paramInt2, Options paramOptions)
    throws IOException
  {
    paramInputStream = inputStreamToBytes(paramInputStream);
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = ByteBuffer.wrap(paramInputStream);
    return this.byteBufferDecoder.decode(paramInputStream, paramInt1, paramInt2, paramOptions);
  }
  
  public boolean handles(InputStream paramInputStream, Options paramOptions)
    throws IOException
  {
    return (!((Boolean)paramOptions.get(DISABLE_ANIMATION)).booleanValue()) && (ImageHeaderParserUtils.getType(this.parsers, paramInputStream, this.byteArrayPool) == ImageHeaderParser.ImageType.GIF);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\load\resource\gif\StreamGifDecoder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */