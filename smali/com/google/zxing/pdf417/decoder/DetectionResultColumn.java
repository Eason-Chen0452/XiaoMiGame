package com.google.zxing.pdf417.decoder;

import java.util.Formatter;

class DetectionResultColumn
{
  private static final int MAX_NEARBY_DISTANCE = 5;
  private final BoundingBox boundingBox;
  private final Codeword[] codewords;
  
  DetectionResultColumn(BoundingBox paramBoundingBox)
  {
    this.boundingBox = new BoundingBox(paramBoundingBox);
    this.codewords = new Codeword[paramBoundingBox.getMaxY() - paramBoundingBox.getMinY() + 1];
  }
  
  final BoundingBox getBoundingBox()
  {
    return this.boundingBox;
  }
  
  final Codeword getCodeword(int paramInt)
  {
    return this.codewords[imageRowToCodewordIndex(paramInt)];
  }
  
  final Codeword getCodewordNearby(int paramInt)
  {
    Codeword localCodeword = getCodeword(paramInt);
    if (localCodeword != null) {
      return localCodeword;
    }
    int i = 1;
    while (i < 5)
    {
      int j = imageRowToCodewordIndex(paramInt) - i;
      if (j >= 0)
      {
        localCodeword = this.codewords[j];
        if (localCodeword != null) {
          return localCodeword;
        }
      }
      j = imageRowToCodewordIndex(paramInt) + i;
      if (j < this.codewords.length)
      {
        localCodeword = this.codewords[j];
        if (localCodeword != null) {
          return localCodeword;
        }
      }
      i += 1;
    }
    return null;
  }
  
  final Codeword[] getCodewords()
  {
    return this.codewords;
  }
  
  final int imageRowToCodewordIndex(int paramInt)
  {
    return paramInt - this.boundingBox.getMinY();
  }
  
  final void setCodeword(int paramInt, Codeword paramCodeword)
  {
    this.codewords[imageRowToCodewordIndex(paramInt)] = paramCodeword;
  }
  
  public String toString()
  {
    Formatter localFormatter = new Formatter();
    Object localObject1 = this.codewords;
    int m = localObject1.length;
    int j = 0;
    int i = 0;
    if (j < m)
    {
      Object localObject2 = localObject1[j];
      int k;
      if (localObject2 == null)
      {
        k = i + 1;
        localFormatter.format("%3d:    |   %n", new Object[] { Integer.valueOf(i) });
      }
      for (i = k;; i = k)
      {
        j += 1;
        break;
        k = i + 1;
        localFormatter.format("%3d: %3d|%3d%n", new Object[] { Integer.valueOf(i), Integer.valueOf(((Codeword)localObject2).getRowNumber()), Integer.valueOf(((Codeword)localObject2).getValue()) });
      }
    }
    localObject1 = localFormatter.toString();
    localFormatter.close();
    return (String)localObject1;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\zxing\pdf417\decoder\DetectionResultColumn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */