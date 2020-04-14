package com.google.zxing.datamatrix.decoder;

final class DataBlock
{
  private final byte[] codewords;
  private final int numDataCodewords;
  
  private DataBlock(int paramInt, byte[] paramArrayOfByte)
  {
    this.numDataCodewords = paramInt;
    this.codewords = paramArrayOfByte;
  }
  
  static DataBlock[] getDataBlocks(byte[] paramArrayOfByte, Version paramVersion)
  {
    Version.ECBlocks localECBlocks = paramVersion.getECBlocks();
    int j = 0;
    Version.ECB[] arrayOfECB = localECBlocks.getECBlocks();
    int k = arrayOfECB.length;
    int i = 0;
    while (i < k)
    {
      j += arrayOfECB[i].getCount();
      i += 1;
    }
    DataBlock[] arrayOfDataBlock = new DataBlock[j];
    j = 0;
    int m = arrayOfECB.length;
    i = 0;
    while (i < m)
    {
      Version.ECB localECB = arrayOfECB[i];
      k = 0;
      while (k < localECB.getCount())
      {
        n = localECB.getDataCodewords();
        arrayOfDataBlock[j] = new DataBlock(n, new byte[localECBlocks.getECCodewords() + n]);
        k += 1;
        j += 1;
      }
      i += 1;
    }
    int i1 = arrayOfDataBlock[0].codewords.length - localECBlocks.getECCodewords();
    i = 0;
    k = 0;
    while (k < i1 - 1)
    {
      m = 0;
      while (m < j)
      {
        arrayOfDataBlock[m].codewords[k] = paramArrayOfByte[i];
        m += 1;
        i += 1;
      }
      k += 1;
    }
    if (paramVersion.getVersionNumber() == 24)
    {
      m = 1;
      if (m == 0) {
        break label276;
      }
    }
    label276:
    for (k = 8;; k = j)
    {
      n = 0;
      while (n < k)
      {
        arrayOfDataBlock[n].codewords[(i1 - 1)] = paramArrayOfByte[i];
        n += 1;
        i += 1;
      }
      m = 0;
      break;
    }
    int i2 = arrayOfDataBlock[0].codewords.length;
    int n = i1;
    k = i;
    i = n;
    while (i < i2)
    {
      n = 0;
      if (n < j)
      {
        if ((m != 0) && (n > 7)) {}
        for (i1 = i - 1;; i1 = i)
        {
          arrayOfDataBlock[n].codewords[i1] = paramArrayOfByte[k];
          n += 1;
          k += 1;
          break;
        }
      }
      i += 1;
    }
    if (k != paramArrayOfByte.length) {
      throw new IllegalArgumentException();
    }
    return arrayOfDataBlock;
  }
  
  byte[] getCodewords()
  {
    return this.codewords;
  }
  
  int getNumDataCodewords()
  {
    return this.numDataCodewords;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\zxing\datamatrix\decoder\DataBlock.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */