package com.google.zxing;

import com.google.zxing.common.BitMatrix;
import java.util.Map;

public abstract interface Writer
{
  public abstract BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2)
    throws WriterException;
  
  public abstract BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Map<EncodeHintType, ?> paramMap)
    throws WriterException;
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\zxing\Writer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */