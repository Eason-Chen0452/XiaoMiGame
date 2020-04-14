package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@RequiresApi(16)
class NotificationCompatJellybean
{
  static final String EXTRA_ALLOW_GENERATED_REPLIES = "android.support.allowGeneratedReplies";
  static final String EXTRA_DATA_ONLY_REMOTE_INPUTS = "android.support.dataRemoteInputs";
  private static final String KEY_ACTION_INTENT = "actionIntent";
  private static final String KEY_ALLOWED_DATA_TYPES = "allowedDataTypes";
  private static final String KEY_ALLOW_FREE_FORM_INPUT = "allowFreeFormInput";
  private static final String KEY_CHOICES = "choices";
  private static final String KEY_DATA_ONLY_REMOTE_INPUTS = "dataOnlyRemoteInputs";
  private static final String KEY_EXTRAS = "extras";
  private static final String KEY_ICON = "icon";
  private static final String KEY_LABEL = "label";
  private static final String KEY_REMOTE_INPUTS = "remoteInputs";
  private static final String KEY_RESULT_KEY = "resultKey";
  private static final String KEY_TITLE = "title";
  public static final String TAG = "NotificationCompat";
  private static Class<?> sActionClass;
  private static Field sActionIconField;
  private static Field sActionIntentField;
  private static Field sActionTitleField;
  private static boolean sActionsAccessFailed;
  private static Field sActionsField;
  private static final Object sActionsLock = new Object();
  private static Field sExtrasField;
  private static boolean sExtrasFieldAccessFailed;
  private static final Object sExtrasLock = new Object();
  
  public static SparseArray<Bundle> buildActionExtrasMap(List<Bundle> paramList)
  {
    Object localObject1 = null;
    int i = 0;
    int j = paramList.size();
    while (i < j)
    {
      Bundle localBundle = (Bundle)paramList.get(i);
      Object localObject2 = localObject1;
      if (localBundle != null)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new SparseArray();
        }
        ((SparseArray)localObject2).put(i, localBundle);
      }
      i += 1;
      localObject1 = localObject2;
    }
    return (SparseArray<Bundle>)localObject1;
  }
  
  private static boolean ensureActionReflectionReadyLocked()
  {
    boolean bool = true;
    if (sActionsAccessFailed) {
      return false;
    }
    try
    {
      if (sActionsField == null)
      {
        sActionClass = Class.forName("android.app.Notification$Action");
        sActionIconField = sActionClass.getDeclaredField("icon");
        sActionTitleField = sActionClass.getDeclaredField("title");
        sActionIntentField = sActionClass.getDeclaredField("actionIntent");
        sActionsField = Notification.class.getDeclaredField("actions");
        sActionsField.setAccessible(true);
      }
      if (!sActionsAccessFailed) {
        return bool;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        Log.e("NotificationCompat", "Unable to access notification actions", localClassNotFoundException);
        sActionsAccessFailed = true;
      }
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;)
      {
        Log.e("NotificationCompat", "Unable to access notification actions", localNoSuchFieldException);
        sActionsAccessFailed = true;
        continue;
        bool = false;
      }
    }
  }
  
  private static RemoteInput fromBundle(Bundle paramBundle)
  {
    Object localObject = paramBundle.getStringArrayList("allowedDataTypes");
    HashSet localHashSet = new HashSet();
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localHashSet.add((String)((Iterator)localObject).next());
      }
    }
    return new RemoteInput(paramBundle.getString("resultKey"), paramBundle.getCharSequence("label"), paramBundle.getCharSequenceArray("choices"), paramBundle.getBoolean("allowFreeFormInput"), paramBundle.getBundle("extras"), localHashSet);
  }
  
  private static RemoteInput[] fromBundleArray(Bundle[] paramArrayOfBundle)
  {
    Object localObject;
    if (paramArrayOfBundle == null)
    {
      localObject = null;
      return (RemoteInput[])localObject;
    }
    RemoteInput[] arrayOfRemoteInput = new RemoteInput[paramArrayOfBundle.length];
    int i = 0;
    for (;;)
    {
      localObject = arrayOfRemoteInput;
      if (i >= paramArrayOfBundle.length) {
        break;
      }
      arrayOfRemoteInput[i] = fromBundle(paramArrayOfBundle[i]);
      i += 1;
    }
  }
  
  public static NotificationCompat.Action getAction(Notification paramNotification, int paramInt)
  {
    synchronized (sActionsLock)
    {
      try
      {
        Object[] arrayOfObject = getActionObjectsLocked(paramNotification);
        if (arrayOfObject != null)
        {
          Object localObject2 = arrayOfObject[paramInt];
          arrayOfObject = null;
          Object localObject3 = getExtras(paramNotification);
          paramNotification = arrayOfObject;
          if (localObject3 != null)
          {
            localObject3 = ((Bundle)localObject3).getSparseParcelableArray("android.support.actionExtras");
            paramNotification = arrayOfObject;
            if (localObject3 != null) {
              paramNotification = (Bundle)((SparseArray)localObject3).get(paramInt);
            }
          }
          paramNotification = readAction(sActionIconField.getInt(localObject2), (CharSequence)sActionTitleField.get(localObject2), (PendingIntent)sActionIntentField.get(localObject2), paramNotification);
          return paramNotification;
        }
      }
      catch (IllegalAccessException paramNotification)
      {
        Log.e("NotificationCompat", "Unable to access notification actions", paramNotification);
        sActionsAccessFailed = true;
        return null;
      }
    }
  }
  
  public static int getActionCount(Notification paramNotification)
  {
    for (;;)
    {
      synchronized (sActionsLock)
      {
        paramNotification = getActionObjectsLocked(paramNotification);
        if (paramNotification != null)
        {
          i = paramNotification.length;
          return i;
        }
      }
      int i = 0;
    }
  }
  
  static NotificationCompat.Action getActionFromBundle(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle.getBundle("extras");
    boolean bool = false;
    if (localBundle != null) {
      bool = localBundle.getBoolean("android.support.allowGeneratedReplies", false);
    }
    return new NotificationCompat.Action(paramBundle.getInt("icon"), paramBundle.getCharSequence("title"), (PendingIntent)paramBundle.getParcelable("actionIntent"), paramBundle.getBundle("extras"), fromBundleArray(getBundleArrayFromBundle(paramBundle, "remoteInputs")), fromBundleArray(getBundleArrayFromBundle(paramBundle, "dataOnlyRemoteInputs")), bool);
  }
  
  private static Object[] getActionObjectsLocked(Notification paramNotification)
  {
    synchronized (sActionsLock)
    {
      if (!ensureActionReflectionReadyLocked()) {
        return null;
      }
    }
    return null;
  }
  
  private static Bundle[] getBundleArrayFromBundle(Bundle paramBundle, String paramString)
  {
    Object localObject = paramBundle.getParcelableArray(paramString);
    if (((localObject instanceof Bundle[])) || (localObject == null)) {
      return (Bundle[])localObject;
    }
    localObject = (Bundle[])Arrays.copyOf((Object[])localObject, localObject.length, Bundle[].class);
    paramBundle.putParcelableArray(paramString, (Parcelable[])localObject);
    return (Bundle[])localObject;
  }
  
  static Bundle getBundleForAction(NotificationCompat.Action paramAction)
  {
    Bundle localBundle2 = new Bundle();
    localBundle2.putInt("icon", paramAction.getIcon());
    localBundle2.putCharSequence("title", paramAction.getTitle());
    localBundle2.putParcelable("actionIntent", paramAction.getActionIntent());
    if (paramAction.getExtras() != null) {}
    for (Bundle localBundle1 = new Bundle(paramAction.getExtras());; localBundle1 = new Bundle())
    {
      localBundle1.putBoolean("android.support.allowGeneratedReplies", paramAction.getAllowGeneratedReplies());
      localBundle2.putBundle("extras", localBundle1);
      localBundle2.putParcelableArray("remoteInputs", toBundleArray(paramAction.getRemoteInputs()));
      return localBundle2;
    }
  }
  
  public static Bundle getExtras(Notification paramNotification)
  {
    Object localObject1;
    Bundle localBundle;
    synchronized (sExtrasLock)
    {
      if (sExtrasFieldAccessFailed) {
        return null;
      }
    }
  }
  
  public static NotificationCompat.Action readAction(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle)
  {
    RemoteInput[] arrayOfRemoteInput1 = null;
    RemoteInput[] arrayOfRemoteInput2 = null;
    boolean bool = false;
    if (paramBundle != null)
    {
      arrayOfRemoteInput1 = fromBundleArray(getBundleArrayFromBundle(paramBundle, "android.support.remoteInputs"));
      arrayOfRemoteInput2 = fromBundleArray(getBundleArrayFromBundle(paramBundle, "android.support.dataRemoteInputs"));
      bool = paramBundle.getBoolean("android.support.allowGeneratedReplies");
    }
    return new NotificationCompat.Action(paramInt, paramCharSequence, paramPendingIntent, paramBundle, arrayOfRemoteInput1, arrayOfRemoteInput2, bool);
  }
  
  private static Bundle toBundle(RemoteInput paramRemoteInput)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("resultKey", paramRemoteInput.getResultKey());
    localBundle.putCharSequence("label", paramRemoteInput.getLabel());
    localBundle.putCharSequenceArray("choices", paramRemoteInput.getChoices());
    localBundle.putBoolean("allowFreeFormInput", paramRemoteInput.getAllowFreeFormInput());
    localBundle.putBundle("extras", paramRemoteInput.getExtras());
    Object localObject = paramRemoteInput.getAllowedDataTypes();
    if ((localObject != null) && (!((Set)localObject).isEmpty()))
    {
      paramRemoteInput = new ArrayList(((Set)localObject).size());
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        paramRemoteInput.add((String)((Iterator)localObject).next());
      }
      localBundle.putStringArrayList("allowedDataTypes", paramRemoteInput);
    }
    return localBundle;
  }
  
  private static Bundle[] toBundleArray(RemoteInput[] paramArrayOfRemoteInput)
  {
    Object localObject;
    if (paramArrayOfRemoteInput == null)
    {
      localObject = null;
      return (Bundle[])localObject;
    }
    Bundle[] arrayOfBundle = new Bundle[paramArrayOfRemoteInput.length];
    int i = 0;
    for (;;)
    {
      localObject = arrayOfBundle;
      if (i >= paramArrayOfRemoteInput.length) {
        break;
      }
      arrayOfBundle[i] = toBundle(paramArrayOfRemoteInput[i]);
      i += 1;
    }
  }
  
  public static Bundle writeActionAndGetExtras(Notification.Builder paramBuilder, NotificationCompat.Action paramAction)
  {
    paramBuilder.addAction(paramAction.getIcon(), paramAction.getTitle(), paramAction.getActionIntent());
    paramBuilder = new Bundle(paramAction.getExtras());
    if (paramAction.getRemoteInputs() != null) {
      paramBuilder.putParcelableArray("android.support.remoteInputs", toBundleArray(paramAction.getRemoteInputs()));
    }
    if (paramAction.getDataOnlyRemoteInputs() != null) {
      paramBuilder.putParcelableArray("android.support.dataRemoteInputs", toBundleArray(paramAction.getDataOnlyRemoteInputs()));
    }
    paramBuilder.putBoolean("android.support.allowGeneratedReplies", paramAction.getAllowGeneratedReplies());
    return paramBuilder;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\android\support\v4\app\NotificationCompatJellybean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */