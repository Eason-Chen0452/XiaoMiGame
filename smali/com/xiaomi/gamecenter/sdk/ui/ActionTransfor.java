package com.xiaomi.gamecenter.sdk.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.HashMap;
import java.util.UUID;

public class ActionTransfor
{
  private static HashMap<String, a> a = new HashMap();
  
  public static void a(Context paramContext, String paramString, DataAction paramDataAction, a parama)
  {
    Intent localIntent = new Intent(paramContext, MiActivity.class);
    localIntent.putExtra(MiClassKey.a, paramString);
    localIntent.putExtra("isDialog", true);
    paramString = new Bundle();
    paramString.putParcelable("action_request", paramDataAction);
    localIntent.putExtra("action_bundle", paramString);
    localIntent.addFlags(268435456);
    a.put(paramDataAction.a, parama);
    paramContext.startActivity(localIntent);
  }
  
  public static void a(DataAction paramDataAction)
  {
    a locala = (a)a.get(paramDataAction.a);
    if (locala != null) {
      locala.a(paramDataAction);
    }
    a.remove(paramDataAction.a);
  }
  
  public static enum ActionResult
  {
    private ActionResult() {}
  }
  
  public static class DataAction
    implements Parcelable
  {
    public static final Parcelable.Creator<DataAction> CREATOR = new a();
    public String a;
    public ActionTransfor.ActionResult b;
    public Bundle c;
    public int d;
    
    public DataAction()
    {
      this.c = new Bundle();
      this.a = UUID.randomUUID().toString();
      this.b = ActionTransfor.ActionResult.ACTION_NONE;
      this.d = 0;
    }
    
    public DataAction(Bundle paramBundle)
    {
      this.a = UUID.randomUUID().toString();
      this.b = ActionTransfor.ActionResult.ACTION_NONE;
      this.d = 0;
      this.c = paramBundle;
    }
    
    public final void a(DataAction paramDataAction)
    {
      if (paramDataAction != null)
      {
        this.a = paramDataAction.a;
        this.b = paramDataAction.b;
        this.d = paramDataAction.d;
        this.c = new Bundle(paramDataAction.c);
        return;
      }
      this.a = null;
      this.c = null;
      this.d = -1;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeString(this.a);
      paramParcel.writeString(this.b.toString());
      paramParcel.writeBundle(this.c);
      paramParcel.writeInt(this.d);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(ActionTransfor.DataAction paramDataAction);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\ActionTransfor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */