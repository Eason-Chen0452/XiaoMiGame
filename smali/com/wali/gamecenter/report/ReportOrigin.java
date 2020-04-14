package com.wali.gamecenter.report;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class ReportOrigin
{
  public static final String ORIGIN_CATEGORY = "category";
  public static final String ORIGIN_DISCOVERY = "discovery";
  public static final String ORIGIN_NEWGAME = "new_game";
  public static final String ORIGIN_NEWS = "news";
  public static final String ORIGIN_NEW_RECOMMEND = "new_home_recommend";
  public static final String ORIGIN_OTHER = "other";
  public static final String ORIGIN_PERSONAL = "personal";
  public static final String ORIGIN_RANK = "rank";
  public static final String ORIGIN_SEARCH = "search";
  
  public static void clear(Context paramContext)
  {
    paramContext.getSharedPreferences("origin", 4).edit().clear().commit();
  }
  
  public static String getOrigin(Context paramContext)
  {
    return paramContext.getSharedPreferences("origin", 4).getString("origin", "other");
  }
  
  public static void init(Context paramContext, String paramString)
  {
    paramContext = paramContext.getSharedPreferences("origin", 4).edit();
    paramContext.putString("origin", paramString);
    paramContext.commit();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\ReportOrigin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */