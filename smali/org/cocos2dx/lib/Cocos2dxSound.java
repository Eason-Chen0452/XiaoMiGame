package org.cocos2dx.lib;

import android.content.Context;
import android.content.res.AssetManager;
import android.media.SoundPool;
import android.media.SoundPool.OnLoadCompleteListener;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Semaphore;

public class Cocos2dxSound
{
  private static final int INVALID_SOUND_ID = -1;
  private static final int INVALID_STREAM_ID = -1;
  private static final int MAX_SIMULTANEOUS_STREAMS_DEFAULT = 5;
  private static final int MAX_SIMULTANEOUS_STREAMS_I9100 = 3;
  private static final int SOUND_PRIORITY = 1;
  private static final int SOUND_QUALITY = 5;
  private static final float SOUND_RATE = 1.0F;
  private static final String TAG = "Cocos2dxSound";
  private final Context mContext;
  private final ArrayList<SoundInfoForLoadedCompleted> mEffecToPlayWhenLoadedArray = new ArrayList();
  private float mLeftVolume;
  private final HashMap<String, Integer> mPathSoundIDMap = new HashMap();
  private final HashMap<String, ArrayList<Integer>> mPathStreamIDsMap = new HashMap();
  private float mRightVolume;
  private Semaphore mSemaphore;
  private SoundPool mSoundPool;
  private int mStreamIdSyn;
  
  public Cocos2dxSound(Context paramContext)
  {
    this.mContext = paramContext;
    initData();
  }
  
  private float clamp(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return Math.max(paramFloat2, Math.min(paramFloat1, paramFloat3));
  }
  
  private int doPlayEffect(String paramString, int paramInt, boolean paramBoolean, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f2 = this.mLeftVolume;
    float f3 = clamp(paramFloat2, 0.0F, 1.0F);
    float f1 = this.mRightVolume;
    paramFloat2 = clamp(-paramFloat2, 0.0F, 1.0F);
    paramFloat1 = clamp(1.0F * paramFloat1, 0.5F, 2.0F);
    Object localObject = this.mSoundPool;
    f2 = clamp(f2 * paramFloat3 * (1.0F - f3), 0.0F, 1.0F);
    paramFloat2 = clamp(f1 * paramFloat3 * (1.0F - paramFloat2), 0.0F, 1.0F);
    if (paramBoolean) {}
    for (int i = -1;; i = 0)
    {
      paramInt = ((SoundPool)localObject).play(paramInt, f2, paramFloat2, 1, i, paramFloat1);
      ArrayList localArrayList = (ArrayList)this.mPathStreamIDsMap.get(paramString);
      localObject = localArrayList;
      if (localArrayList == null)
      {
        localObject = new ArrayList();
        this.mPathStreamIDsMap.put(paramString, localObject);
      }
      ((ArrayList)localObject).add(Integer.valueOf(paramInt));
      return paramInt;
    }
  }
  
  private void initData()
  {
    if (Cocos2dxHelper.getDeviceModel().indexOf("GT-I9100") != -1) {}
    for (this.mSoundPool = new SoundPool(3, 3, 5);; this.mSoundPool = new SoundPool(5, 3, 5))
    {
      this.mSoundPool.setOnLoadCompleteListener(new OnLoadCompletedListener());
      this.mLeftVolume = 0.5F;
      this.mRightVolume = 0.5F;
      this.mSemaphore = new Semaphore(0, true);
      return;
    }
  }
  
  public int createSoundIDFromAsset(String paramString)
  {
    int i;
    try
    {
      if (paramString.startsWith("/")) {
        i = this.mSoundPool.load(paramString, 0);
      } else {
        i = this.mSoundPool.load(this.mContext.getAssets().openFd(paramString), 0);
      }
    }
    catch (Exception paramString)
    {
      i = -1;
      Log.e("Cocos2dxSound", "error: " + paramString.getMessage(), paramString);
    }
    int j = i;
    if (i == 0) {
      j = -1;
    }
    return j;
  }
  
  public void end()
  {
    this.mSoundPool.release();
    this.mPathStreamIDsMap.clear();
    this.mPathSoundIDMap.clear();
    this.mEffecToPlayWhenLoadedArray.clear();
    this.mLeftVolume = 0.5F;
    this.mRightVolume = 0.5F;
    initData();
  }
  
  public float getEffectsVolume()
  {
    return (this.mLeftVolume + this.mRightVolume) / 2.0F;
  }
  
  public void onEnterBackground()
  {
    this.mSoundPool.autoPause();
  }
  
  public void onEnterForeground()
  {
    this.mSoundPool.autoResume();
  }
  
  public void pauseAllEffects()
  {
    if (!this.mPathStreamIDsMap.isEmpty())
    {
      Iterator localIterator1 = this.mPathStreamIDsMap.entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((ArrayList)((Map.Entry)localIterator1.next()).getValue()).iterator();
        while (localIterator2.hasNext())
        {
          int i = ((Integer)localIterator2.next()).intValue();
          this.mSoundPool.pause(i);
        }
      }
    }
  }
  
  public void pauseEffect(int paramInt)
  {
    this.mSoundPool.pause(paramInt);
  }
  
  public int playEffect(String paramString, boolean paramBoolean, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    ??? = (Integer)this.mPathSoundIDMap.get(paramString);
    int i;
    if (??? != null) {
      i = doPlayEffect(paramString, ((Integer)???).intValue(), paramBoolean, paramFloat1, paramFloat2, paramFloat3);
    }
    for (;;)
    {
      return i;
      Integer localInteger = Integer.valueOf(preloadEffect(paramString));
      if (localInteger.intValue() == -1) {
        return -1;
      }
      synchronized (this.mSoundPool)
      {
        this.mEffecToPlayWhenLoadedArray.add(new SoundInfoForLoadedCompleted(paramString, localInteger.intValue(), paramBoolean, paramFloat1, paramFloat2, paramFloat3));
      }
      try
      {
        if (this.mSemaphore.tryAcquire())
        {
          i = this.mStreamIdSyn;
          continue;
          paramString = finally;
          throw paramString;
        }
        else
        {
          return -1;
        }
      }
      catch (Exception paramString) {}
    }
    return -1;
  }
  
  public int preloadEffect(String paramString)
  {
    Integer localInteger2 = (Integer)this.mPathSoundIDMap.get(paramString);
    Integer localInteger1 = localInteger2;
    if (localInteger2 == null)
    {
      localInteger2 = Integer.valueOf(createSoundIDFromAsset(paramString));
      localInteger1 = localInteger2;
      if (localInteger2.intValue() != -1)
      {
        this.mPathSoundIDMap.put(paramString, localInteger2);
        localInteger1 = localInteger2;
      }
    }
    return localInteger1.intValue();
  }
  
  public void resumeAllEffects()
  {
    if (!this.mPathStreamIDsMap.isEmpty())
    {
      Iterator localIterator1 = this.mPathStreamIDsMap.entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((ArrayList)((Map.Entry)localIterator1.next()).getValue()).iterator();
        while (localIterator2.hasNext())
        {
          int i = ((Integer)localIterator2.next()).intValue();
          this.mSoundPool.resume(i);
        }
      }
    }
  }
  
  public void resumeEffect(int paramInt)
  {
    this.mSoundPool.resume(paramInt);
  }
  
  public void setEffectsVolume(float paramFloat)
  {
    float f = paramFloat;
    if (paramFloat < 0.0F) {
      f = 0.0F;
    }
    paramFloat = f;
    if (f > 1.0F) {
      paramFloat = 1.0F;
    }
    this.mRightVolume = paramFloat;
    this.mLeftVolume = paramFloat;
    if (!this.mPathStreamIDsMap.isEmpty())
    {
      Iterator localIterator1 = this.mPathStreamIDsMap.entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((ArrayList)((Map.Entry)localIterator1.next()).getValue()).iterator();
        while (localIterator2.hasNext())
        {
          int i = ((Integer)localIterator2.next()).intValue();
          this.mSoundPool.setVolume(i, this.mLeftVolume, this.mRightVolume);
        }
      }
    }
  }
  
  public void stopAllEffects()
  {
    if (!this.mPathStreamIDsMap.isEmpty())
    {
      Iterator localIterator1 = this.mPathStreamIDsMap.entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((ArrayList)((Map.Entry)localIterator1.next()).getValue()).iterator();
        while (localIterator2.hasNext())
        {
          int i = ((Integer)localIterator2.next()).intValue();
          this.mSoundPool.stop(i);
        }
      }
    }
    this.mPathStreamIDsMap.clear();
  }
  
  public void stopEffect(int paramInt)
  {
    this.mSoundPool.stop(paramInt);
    Iterator localIterator = this.mPathStreamIDsMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (((ArrayList)this.mPathStreamIDsMap.get(str)).contains(Integer.valueOf(paramInt))) {
        ((ArrayList)this.mPathStreamIDsMap.get(str)).remove(((ArrayList)this.mPathStreamIDsMap.get(str)).indexOf(Integer.valueOf(paramInt)));
      }
    }
  }
  
  public void unloadEffect(String paramString)
  {
    Object localObject = (ArrayList)this.mPathStreamIDsMap.get(paramString);
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Integer localInteger = (Integer)((Iterator)localObject).next();
        this.mSoundPool.stop(localInteger.intValue());
      }
    }
    this.mPathStreamIDsMap.remove(paramString);
    localObject = (Integer)this.mPathSoundIDMap.get(paramString);
    if (localObject != null)
    {
      this.mSoundPool.unload(((Integer)localObject).intValue());
      this.mPathSoundIDMap.remove(paramString);
    }
  }
  
  public class OnLoadCompletedListener
    implements SoundPool.OnLoadCompleteListener
  {
    public OnLoadCompletedListener() {}
    
    public void onLoadComplete(SoundPool paramSoundPool, int paramInt1, int paramInt2)
    {
      if (paramInt2 == 0)
      {
        paramSoundPool = Cocos2dxSound.this.mEffecToPlayWhenLoadedArray.iterator();
        while (paramSoundPool.hasNext())
        {
          Cocos2dxSound.SoundInfoForLoadedCompleted localSoundInfoForLoadedCompleted = (Cocos2dxSound.SoundInfoForLoadedCompleted)paramSoundPool.next();
          if (paramInt1 == localSoundInfoForLoadedCompleted.soundID)
          {
            Cocos2dxSound.access$102(Cocos2dxSound.this, Cocos2dxSound.this.doPlayEffect(localSoundInfoForLoadedCompleted.path, localSoundInfoForLoadedCompleted.soundID, localSoundInfoForLoadedCompleted.isLoop, localSoundInfoForLoadedCompleted.pitch, localSoundInfoForLoadedCompleted.pan, localSoundInfoForLoadedCompleted.gain));
            Cocos2dxSound.this.mEffecToPlayWhenLoadedArray.remove(localSoundInfoForLoadedCompleted);
          }
        }
      }
      for (;;)
      {
        Cocos2dxSound.this.mSemaphore.release();
        return;
        Cocos2dxSound.access$102(Cocos2dxSound.this, -1);
      }
    }
  }
  
  public class SoundInfoForLoadedCompleted
  {
    public float gain;
    public boolean isLoop;
    public float pan;
    public String path;
    public float pitch;
    public int soundID;
    
    public SoundInfoForLoadedCompleted(String paramString, int paramInt, boolean paramBoolean, float paramFloat1, float paramFloat2, float paramFloat3)
    {
      this.path = paramString;
      this.soundID = paramInt;
      this.isLoop = paramBoolean;
      this.pitch = paramFloat1;
      this.pan = paramFloat2;
      this.gain = paramFloat3;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\lib\Cocos2dxSound.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */