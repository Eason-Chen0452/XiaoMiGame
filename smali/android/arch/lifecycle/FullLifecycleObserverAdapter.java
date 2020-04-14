package android.arch.lifecycle;

class FullLifecycleObserverAdapter
  implements GenericLifecycleObserver
{
  private final FullLifecycleObserver mObserver;
  
  FullLifecycleObserverAdapter(FullLifecycleObserver paramFullLifecycleObserver)
  {
    this.mObserver = paramFullLifecycleObserver;
  }
  
  public void onStateChanged(LifecycleOwner paramLifecycleOwner, Lifecycle.Event paramEvent)
  {
    switch (paramEvent)
    {
    default: 
      return;
    case ???: 
      this.mObserver.onCreate(paramLifecycleOwner);
      return;
    case ???: 
      this.mObserver.onStart(paramLifecycleOwner);
      return;
    case ???: 
      this.mObserver.onResume(paramLifecycleOwner);
      return;
    case ???: 
      this.mObserver.onPause(paramLifecycleOwner);
      return;
    case ???: 
      this.mObserver.onStop(paramLifecycleOwner);
      return;
    case ???: 
      this.mObserver.onDestroy(paramLifecycleOwner);
      return;
    }
    throw new IllegalArgumentException("ON_ANY must not been send by anybody");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\android\arch\lifecycle\FullLifecycleObserverAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */