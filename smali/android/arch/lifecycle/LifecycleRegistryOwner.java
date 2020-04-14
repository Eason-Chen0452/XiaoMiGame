package android.arch.lifecycle;

import android.support.annotation.NonNull;

@Deprecated
public abstract interface LifecycleRegistryOwner
  extends LifecycleOwner
{
  @NonNull
  public abstract LifecycleRegistry getLifecycle();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\android\arch\lifecycle\LifecycleRegistryOwner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */