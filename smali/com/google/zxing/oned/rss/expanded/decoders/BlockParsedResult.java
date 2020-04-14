package com.google.zxing.oned.rss.expanded.decoders;

final class BlockParsedResult
{
  private final DecodedInformation decodedInformation;
  private final boolean finished;
  
  BlockParsedResult(DecodedInformation paramDecodedInformation, boolean paramBoolean)
  {
    this.finished = paramBoolean;
    this.decodedInformation = paramDecodedInformation;
  }
  
  BlockParsedResult(boolean paramBoolean)
  {
    this(null, paramBoolean);
  }
  
  DecodedInformation getDecodedInformation()
  {
    return this.decodedInformation;
  }
  
  boolean isFinished()
  {
    return this.finished;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\zxing\oned\rss\expanded\decoders\BlockParsedResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */