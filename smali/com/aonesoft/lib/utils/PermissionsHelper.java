package com.aonesoft.lib.utils;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build.VERSION;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class PermissionsHelper
{
  @SuppressLint({"NewApi"})
  public static boolean checkSelfPermission(Activity paramActivity, String paramString)
  {
    if (Build.VERSION.SDK_INT < 23) {}
    while ((paramActivity == null) || (paramString == null) || (paramActivity.checkSelfPermission(paramString) == 0)) {
      return true;
    }
    return false;
  }
  
  public static String[] getNotGrantPermissions(Activity paramActivity, String[] paramArrayOfString)
  {
    if ((paramActivity == null) || (paramArrayOfString == null) || (paramArrayOfString.length == 0)) {
      return null;
    }
    ArrayList localArrayList = new ArrayList(paramArrayOfString.length);
    int j = paramArrayOfString.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return (String[])localArrayList.toArray(new String[localArrayList.size()]);
      }
      String str = paramArrayOfString[i];
      if (!checkSelfPermission(paramActivity, str)) {
        localArrayList.add(str);
      }
      i += 1;
    }
  }
  
  public static String[] getPermissions()
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add("android.permission.ACCESS_NETWORK_STATE");
    localLinkedList.add("android.permission.INTERNET");
    localLinkedList.add("android.permission.ACCESS_WIFI_STATE");
    localLinkedList.add("android.permission.CHANGE_WIFI_STATE");
    localLinkedList.add("android.permission.READ_PHONE_STATE");
    localLinkedList.add("android.permission.SEND_SMS");
    localLinkedList.add("android.permission.RECEIVE_SMS");
    localLinkedList.add("android.permission.MOUNT_UNMOUNT_FILESYSTEMS");
    localLinkedList.add("android.permission.WRITE_EXTERNAL_STORAGE");
    localLinkedList.add("android.permission.WRITE_SETTINGS");
    localLinkedList.add("android.permission.GET_TASKS");
    localLinkedList.add("android.permission.SYSTEM_ALERT_WINDOW");
    localLinkedList.add("android.permission.GET_ACCOUNTS");
    return (String[])localLinkedList.toArray(new String[localLinkedList.size()]);
  }
  
  public static boolean isGrantedCallLog(Activity paramActivity)
  {
    if (paramActivity == null) {
      return false;
    }
    return checkSelfPermission(paramActivity, "android.permission.WRITE_CALL_LOG");
  }
  
  public static boolean isGrantedContancts(Activity paramActivity)
  {
    if (paramActivity == null) {
      return false;
    }
    return checkSelfPermission(paramActivity, "android.permission.WRITE_CONTACTS");
  }
  
  public static boolean isGrantedRecordAudio(Activity paramActivity)
  {
    if (paramActivity == null) {
      return false;
    }
    return checkSelfPermission(paramActivity, "android.permission.RECORD_AUDIO");
  }
  
  public static boolean isGrantedSMS(Activity paramActivity)
  {
    if (paramActivity == null) {
      return false;
    }
    return checkSelfPermission(paramActivity, "android.permission.READ_SMS");
  }
  
  public static boolean isGrantedStorage(Activity paramActivity)
  {
    if (paramActivity == null) {
      return false;
    }
    return checkSelfPermission(paramActivity, "android.permission.WRITE_EXTERNAL_STORAGE");
  }
  
  public static boolean requestPermissions(Activity paramActivity, int paramInt)
  {
    if (Build.VERSION.SDK_INT < 23) {}
    String[] arrayOfString;
    do
    {
      return false;
      arrayOfString = getNotGrantPermissions(paramActivity, getPermissions());
    } while ((arrayOfString == null) || (arrayOfString.length == 0));
    requestSelfPermissions(paramActivity, arrayOfString, paramInt);
    return true;
  }
  
  @SuppressLint({"NewApi"})
  public static void requestSelfPermissions(Activity paramActivity, String paramString, int paramInt)
  {
    if (Build.VERSION.SDK_INT < 23) {}
    while ((paramActivity == null) || (paramString == null)) {
      return;
    }
    paramActivity.requestPermissions(new String[] { paramString }, paramInt);
  }
  
  @TargetApi(23)
  public static void requestSelfPermissions(Activity paramActivity, List<String> paramList, int paramInt)
  {
    if (Build.VERSION.SDK_INT < 23) {}
    while ((paramActivity == null) || (paramList == null) || (paramList.size() == 0)) {
      return;
    }
    paramActivity.requestPermissions((String[])paramList.toArray(new String[paramList.size()]), paramInt);
  }
  
  @TargetApi(23)
  public static void requestSelfPermissions(Activity paramActivity, String[] paramArrayOfString, int paramInt)
  {
    if (Build.VERSION.SDK_INT < 23) {}
    while ((paramActivity == null) || (paramArrayOfString == null) || (paramArrayOfString.length == 0)) {
      return;
    }
    paramActivity.requestPermissions(paramArrayOfString, paramInt);
  }
  
  @TargetApi(23)
  public static boolean shouldShowRequestPermissionRationale(Activity paramActivity, String paramString)
  {
    if ((paramActivity != null) || (paramString == null)) {
      return false;
    }
    return paramActivity.shouldShowRequestPermissionRationale("android.permission.WRITE_CONTACTS");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\utils\PermissionsHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */