package org.cocos2dx.plugin;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import java.util.Iterator;
import java.util.Set;

public class ActivityEventListener
{
  private Set<ActivityEventListener> listenerSet = null;
  
  public void addListener(ActivityEventListener paramActivityEventListener)
  {
    this.listenerSet.add(paramActivityEventListener);
  }
  
  public void attachBaseContext(Context paramContext)
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).attachBaseContext(paramContext);
    }
  }
  
  public void onActivityCreate(Bundle paramBundle)
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).onActivityCreate(paramBundle);
    }
  }
  
  public void onActivityDestroy()
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).onActivityDestroy();
    }
  }
  
  public void onActivityPause()
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).onActivityPause();
    }
  }
  
  public void onActivityRestart()
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).onActivityRestart();
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).onActivityResult(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void onActivityResume()
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).onActivityResume();
    }
  }
  
  public void onActivityStart()
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).onActivityStart();
    }
  }
  
  public void onActivityStop()
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).onActivityStop();
    }
  }
  
  public void onBackPressed()
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).onBackPressed();
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).onConfigurationChanged(paramConfiguration);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return bool;
      }
      bool = ((ActivityEventListener)localIterator.next()).onKeyDown(paramInt, paramKeyEvent);
    }
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).onNewIntent(paramIntent);
    }
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).onSaveInstanceState(paramBundle);
    }
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    Iterator localIterator = this.listenerSet.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ActivityEventListener)localIterator.next()).onWindowFocusChanged(paramBoolean);
    }
  }
  
  public void removeListener(ActivityEventListener paramActivityEventListener)
  {
    this.listenerSet.remove(paramActivityEventListener);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\ActivityEventListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */