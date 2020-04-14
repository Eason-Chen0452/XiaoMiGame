package com.xiaomi.greendao.internal;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;

public class TableStatements
{
  private final SQLiteDatabase a;
  private final String b;
  private final String[] c;
  private final String[] d;
  private volatile SQLiteStatement e;
  private volatile SQLiteStatement f;
  private volatile SQLiteStatement g;
  private volatile SQLiteStatement h;
  private volatile String i;
  private volatile String j;
  private volatile String k;
  
  public TableStatements(SQLiteDatabase paramSQLiteDatabase, String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    this.a = paramSQLiteDatabase;
    this.b = paramString;
    this.c = paramArrayOfString1;
    this.d = paramArrayOfString2;
  }
  
  public final SQLiteStatement a()
  {
    if (this.e == null) {}
    try
    {
      if (this.e == null)
      {
        String str = SqlUtils.a("INSERT INTO ", this.b, this.c);
        this.e = this.a.compileStatement(str);
      }
      return this.e;
    }
    finally {}
  }
  
  public final SQLiteStatement b()
  {
    if (this.f == null) {}
    try
    {
      if (this.f == null)
      {
        String str = SqlUtils.a("INSERT OR REPLACE INTO ", this.b, this.c);
        this.f = this.a.compileStatement(str);
      }
      return this.f;
    }
    finally {}
  }
  
  public final SQLiteStatement c()
  {
    if (this.h == null) {}
    try
    {
      if (this.h == null)
      {
        String str = SqlUtils.a(this.b, this.d);
        this.h = this.a.compileStatement(str);
      }
      return this.h;
    }
    finally {}
  }
  
  public final SQLiteStatement d()
  {
    if (this.g == null) {}
    try
    {
      if (this.g == null)
      {
        String str = SqlUtils.a(this.b, this.c, this.d);
        this.g = this.a.compileStatement(str);
      }
      return this.g;
    }
    finally {}
  }
  
  public final String e()
  {
    if (this.i == null) {
      this.i = SqlUtils.a(this.b, "T", this.c, false);
    }
    return this.i;
  }
  
  public final String f()
  {
    if (this.j == null)
    {
      StringBuilder localStringBuilder = new StringBuilder(e());
      localStringBuilder.append("WHERE ");
      SqlUtils.a(localStringBuilder, "T", this.d);
      this.j = localStringBuilder.toString();
    }
    return this.j;
  }
  
  public final String g()
  {
    if (this.k == null) {
      this.k = (e() + "WHERE ROWID=?");
    }
    return this.k;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\internal\TableStatements.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */