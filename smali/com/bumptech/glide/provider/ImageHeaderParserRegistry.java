package com.bumptech.glide.provider;

import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;

public final class ImageHeaderParserRegistry
{
  private final List<ImageHeaderParser> parsers = new ArrayList();
  
  public void add(ImageHeaderParser paramImageHeaderParser)
  {
    try
    {
      this.parsers.add(paramImageHeaderParser);
      return;
    }
    finally
    {
      paramImageHeaderParser = finally;
      throw paramImageHeaderParser;
    }
  }
  
  public List<ImageHeaderParser> getParsers()
  {
    try
    {
      List localList = this.parsers;
      return localList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\provider\ImageHeaderParserRegistry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */