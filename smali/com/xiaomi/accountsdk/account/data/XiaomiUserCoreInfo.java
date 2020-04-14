package com.xiaomi.accountsdk.account.data;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Calendar;

public final class XiaomiUserCoreInfo
{
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final ArrayList<String> e;
  public final String f;
  public final Gender g;
  public final Calendar h;
  
  public static class Builder
  {
    private String a;
    
    public Builder(String paramString)
    {
      this.a = paramString;
    }
  }
  
  public static enum Education
  {
    public final String level;
    
    static
    {
      HIGH_SCHOOL = new Education("HIGH_SCHOOL", 2, "senior");
      VOCATIONAL_SCHOOL = new Education("VOCATIONAL_SCHOOL", 3, "college");
      COLLEGE = new Education("COLLEGE", 4, "bachelor");
      MASTER_DEGREE = new Education("MASTER_DEGREE", 5, "master");
    }
    
    private Education(String paramString)
    {
      this.level = paramString;
    }
    
    public static Education getEducationTypeByName(String paramString)
    {
      if (TextUtils.isEmpty(paramString)) {}
      for (;;)
      {
        return null;
        Education[] arrayOfEducation = values();
        int j = arrayOfEducation.length;
        int i = 0;
        while (i < j)
        {
          Education localEducation = arrayOfEducation[i];
          if (localEducation.level.equals(paramString)) {
            return localEducation;
          }
          i += 1;
        }
      }
    }
  }
  
  public static enum Flag
  {
    public final int value;
    
    private Flag(int paramInt)
    {
      this.value = paramInt;
    }
  }
  
  public static enum Income
  {
    public final String level;
    
    private Income(String paramString)
    {
      this.level = paramString;
    }
    
    public static Income getIncomeTypeByName(String paramString)
    {
      if (TextUtils.isEmpty(paramString)) {}
      for (;;)
      {
        return null;
        Income[] arrayOfIncome = values();
        int j = arrayOfIncome.length;
        int i = 0;
        while (i < j)
        {
          Income localIncome = arrayOfIncome[i];
          if (localIncome.level.equals(paramString)) {
            return localIncome;
          }
          i += 1;
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\XiaomiUserCoreInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */