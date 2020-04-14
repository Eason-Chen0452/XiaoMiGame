package com.xiaomi.hy.zxing;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;
import java.io.FileOutputStream;
import java.util.Hashtable;
import java.util.Map;

public class QRGenerator
{
  private static final int BLACK = -16777216;
  private static final String TAG = "QRGenerator";
  private static final int WHITE = -1;
  
  public static Bitmap create2DCode(String paramString, int paramInt)
  {
    Object localObject = new Hashtable();
    ((Hashtable)localObject).put(EncodeHintType.MARGIN, Integer.valueOf(1));
    MultiFormatWriter localMultiFormatWriter = new MultiFormatWriter();
    int k;
    int m;
    for (;;)
    {
      try
      {
        localObject = localMultiFormatWriter.encode(paramString, BarcodeFormat.QR_CODE, paramInt, paramInt, (Map)localObject);
        k = ((BitMatrix)localObject).getWidth();
        m = ((BitMatrix)localObject).getHeight();
        paramString = new int[k * m];
        paramInt = 0;
        if (paramInt >= m) {
          break;
        }
        int i = 0;
        if (i >= k) {
          break label121;
        }
        if (((BitMatrix)localObject).get(i, paramInt))
        {
          j = -16777216;
          paramString[(paramInt * k + i)] = j;
          i += 1;
          continue;
        }
        int j = -1;
      }
      catch (Exception paramString)
      {
        return null;
      }
      continue;
      label121:
      paramInt += 1;
    }
    localObject = Bitmap.createBitmap(k, m, Bitmap.Config.ARGB_8888);
    ((Bitmap)localObject).setPixels(paramString, 0, k, 0, 0, k, m);
    return (Bitmap)localObject;
  }
  
  public static boolean generate(String paramString1, int paramInt, String paramString2)
  {
    Object localObject = new MultiFormatWriter();
    int k;
    int m;
    for (;;)
    {
      try
      {
        localObject = ((MultiFormatWriter)localObject).encode(paramString1, BarcodeFormat.QR_CODE, paramInt, paramInt);
        k = ((BitMatrix)localObject).getWidth();
        m = ((BitMatrix)localObject).getHeight();
        paramString1 = new int[k * m];
        paramInt = 0;
        if (paramInt >= m) {
          break;
        }
        int i = 0;
        if (i >= k) {
          break label100;
        }
        if (((BitMatrix)localObject).get(i, paramInt))
        {
          j = -16777216;
          paramString1[(paramInt * k + i)] = j;
          i += 1;
          continue;
        }
        int j = -1;
      }
      catch (Exception paramString1)
      {
        return false;
      }
      continue;
      label100:
      paramInt += 1;
    }
    localObject = Bitmap.createBitmap(k, m, Bitmap.Config.ARGB_8888);
    ((Bitmap)localObject).setPixels(paramString1, 0, k, 0, 0, k, m);
    try
    {
      paramString1 = new FileOutputStream(paramString2);
      return ((Bitmap)localObject).compress(Bitmap.CompressFormat.PNG, 100, paramString1);
    }
    catch (Exception paramString1) {}
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\zxing\QRGenerator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */