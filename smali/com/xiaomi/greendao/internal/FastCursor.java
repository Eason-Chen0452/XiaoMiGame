package com.xiaomi.greendao.internal;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;

public final class FastCursor
  implements Cursor
{
  private final CursorWindow a;
  private int b;
  private final int c;
  
  public FastCursor(CursorWindow paramCursorWindow)
  {
    this.a = paramCursorWindow;
    this.c = paramCursorWindow.getNumRows();
  }
  
  public final void close()
  {
    throw new UnsupportedOperationException();
  }
  
  public final void copyStringToBuffer(int paramInt, CharArrayBuffer paramCharArrayBuffer)
  {
    throw new UnsupportedOperationException();
  }
  
  public final void deactivate()
  {
    throw new UnsupportedOperationException();
  }
  
  public final byte[] getBlob(int paramInt)
  {
    return this.a.getBlob(this.b, paramInt);
  }
  
  public final int getColumnCount()
  {
    throw new UnsupportedOperationException();
  }
  
  public final int getColumnIndex(String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public final int getColumnIndexOrThrow(String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public final String getColumnName(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public final String[] getColumnNames()
  {
    throw new UnsupportedOperationException();
  }
  
  public final int getCount()
  {
    return this.a.getNumRows();
  }
  
  public final double getDouble(int paramInt)
  {
    return this.a.getDouble(this.b, paramInt);
  }
  
  public final Bundle getExtras()
  {
    throw new UnsupportedOperationException();
  }
  
  public final float getFloat(int paramInt)
  {
    return this.a.getFloat(this.b, paramInt);
  }
  
  public final int getInt(int paramInt)
  {
    return this.a.getInt(this.b, paramInt);
  }
  
  public final long getLong(int paramInt)
  {
    return this.a.getLong(this.b, paramInt);
  }
  
  public final Uri getNotificationUri()
  {
    return null;
  }
  
  public final int getPosition()
  {
    return this.b;
  }
  
  public final short getShort(int paramInt)
  {
    return this.a.getShort(this.b, paramInt);
  }
  
  public final String getString(int paramInt)
  {
    return this.a.getString(this.b, paramInt);
  }
  
  public final int getType(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean getWantsAllOnMoveCalls()
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean isAfterLast()
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean isBeforeFirst()
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean isClosed()
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean isFirst()
  {
    return this.b == 0;
  }
  
  public final boolean isLast()
  {
    return this.b == this.c - 1;
  }
  
  public final boolean isNull(int paramInt)
  {
    return this.a.isNull(this.b, paramInt);
  }
  
  public final boolean move(int paramInt)
  {
    return moveToPosition(this.b + paramInt);
  }
  
  public final boolean moveToFirst()
  {
    boolean bool = false;
    this.b = 0;
    if (this.c > 0) {
      bool = true;
    }
    return bool;
  }
  
  public final boolean moveToLast()
  {
    if (this.c > 0)
    {
      this.b = (this.c - 1);
      return true;
    }
    return false;
  }
  
  public final boolean moveToNext()
  {
    if (this.b < this.c - 1)
    {
      this.b += 1;
      return true;
    }
    return false;
  }
  
  public final boolean moveToPosition(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.c))
    {
      this.b = paramInt;
      return true;
    }
    return false;
  }
  
  public final boolean moveToPrevious()
  {
    if (this.b > 0)
    {
      this.b -= 1;
      return true;
    }
    return false;
  }
  
  public final void registerContentObserver(ContentObserver paramContentObserver)
  {
    throw new UnsupportedOperationException();
  }
  
  public final void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean requery()
  {
    throw new UnsupportedOperationException();
  }
  
  public final Bundle respond(Bundle paramBundle)
  {
    throw new UnsupportedOperationException();
  }
  
  public final void setNotificationUri(ContentResolver paramContentResolver, Uri paramUri)
  {
    throw new UnsupportedOperationException();
  }
  
  public final void unregisterContentObserver(ContentObserver paramContentObserver)
  {
    throw new UnsupportedOperationException();
  }
  
  public final void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\internal\FastCursor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */