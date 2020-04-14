package android.arch.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.support.annotation.NonNull;

public class AndroidViewModel
  extends ViewModel
{
  @SuppressLint({"StaticFieldLeak"})
  private Application mApplication;
  
  public AndroidViewModel(@NonNull Application paramApplication)
  {
    this.mApplication = paramApplication;
  }
  
  @NonNull
  public <T extends Application> T getApplication()
  {
    return this.mApplication;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\android\arch\lifecycle\AndroidViewModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */