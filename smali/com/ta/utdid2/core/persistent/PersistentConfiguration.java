package com.ta.utdid2.core.persistent;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import com.ta.utdid2.android.utils.StringUtils;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class PersistentConfiguration
{
  private static final String KEY_TIMESTAMP = "t";
  private static final String KEY_TIMESTAMP2 = "t2";
  private boolean mCanRead = false;
  private boolean mCanWrite = false;
  private String mConfigName = "";
  private Context mContext = null;
  private SharedPreferences.Editor mEditor = null;
  private String mFolderName = "";
  private boolean mIsLessMode = false;
  private boolean mIsSafety = false;
  private MySharedPreferences.MyEditor mMyEditor = null;
  private MySharedPreferences mMySP = null;
  private SharedPreferences mSp = null;
  private TransactionXMLFile mTxf = null;
  
  public PersistentConfiguration(Context paramContext, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.mIsSafety = paramBoolean1;
    this.mIsLessMode = paramBoolean2;
    this.mConfigName = paramString2;
    this.mFolderName = paramString1;
    this.mContext = paramContext;
    l2 = 0L;
    l4 = 0L;
    if (paramContext != null)
    {
      this.mSp = paramContext.getSharedPreferences(paramString2, 0);
      l2 = this.mSp.getLong("t", 0L);
    }
    localObject = null;
    try
    {
      String str = Environment.getExternalStorageState();
      localObject = str;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        try
        {
          if (this.mMySP != null)
          {
            paramContext = this.mMySP.edit();
            paramContext.putLong("t2", l2);
            paramContext.commit();
          }
          return;
        }
        catch (Exception paramContext)
        {
          long l1;
          long l3;
          return;
        }
        localException = localException;
        localException.printStackTrace();
        continue;
        if (((String)localObject).equals("mounted"))
        {
          this.mCanWrite = true;
          this.mCanRead = true;
        }
        else if (((String)localObject).equals("mounted_ro"))
        {
          this.mCanRead = true;
          this.mCanWrite = false;
        }
        else
        {
          this.mCanWrite = false;
          this.mCanRead = false;
          continue;
          if (l2 < l4)
          {
            l1 = l4;
            l3 = l2;
            copyMySPToSP(this.mMySP, this.mSp);
            l1 = l4;
            l3 = l2;
            this.mSp = paramContext.getSharedPreferences(paramString2, 0);
            l1 = l4;
            l3 = l2;
          }
          else
          {
            l1 = l4;
            l3 = l2;
            if (l2 == l4)
            {
              l1 = l4;
              l3 = l2;
              copySPToMySP(this.mSp, this.mMySP);
              l1 = l4;
              l3 = l2;
              this.mMySP = this.mTxf.getMySharedPreferences(paramString2, 0);
              l1 = l4;
              l3 = l2;
              continue;
              l1 = l4;
              l3 = l2;
              l2 = this.mSp.getLong("t2", 0L);
              l1 = l4;
              l3 = l2;
              l4 = this.mMySP.getLong("t2", 0L);
              if ((l2 < l4) && (l2 > 0L))
              {
                l1 = l4;
                l3 = l2;
                copySPToMySP(this.mSp, this.mMySP);
                l1 = l4;
                l3 = l2;
                this.mMySP = this.mTxf.getMySharedPreferences(paramString2, 0);
                l1 = l4;
                l3 = l2;
              }
              else if ((l2 > l4) && (l4 > 0L))
              {
                l1 = l4;
                l3 = l2;
                copyMySPToSP(this.mMySP, this.mSp);
                l1 = l4;
                l3 = l2;
                this.mSp = paramContext.getSharedPreferences(paramString2, 0);
                l1 = l4;
                l3 = l2;
              }
              else if ((l2 == 0L) && (l4 > 0L))
              {
                l1 = l4;
                l3 = l2;
                copyMySPToSP(this.mMySP, this.mSp);
                l1 = l4;
                l3 = l2;
                this.mSp = paramContext.getSharedPreferences(paramString2, 0);
                l1 = l4;
                l3 = l2;
              }
              else if ((l4 == 0L) && (l2 > 0L))
              {
                l1 = l4;
                l3 = l2;
                copySPToMySP(this.mSp, this.mMySP);
                l1 = l4;
                l3 = l2;
                this.mMySP = this.mTxf.getMySharedPreferences(paramString2, 0);
                l1 = l4;
                l3 = l2;
              }
              else
              {
                l1 = l4;
                l3 = l2;
                if (l2 == l4)
                {
                  l1 = l4;
                  l3 = l2;
                  copySPToMySP(this.mSp, this.mMySP);
                  l1 = l4;
                  l3 = l2;
                  this.mMySP = this.mTxf.getMySharedPreferences(paramString2, 0);
                  l1 = l4;
                  l3 = l2;
                }
              }
            }
          }
        }
      }
    }
    if (StringUtils.isEmpty((String)localObject))
    {
      this.mCanWrite = false;
      this.mCanRead = false;
      if (!this.mCanRead)
      {
        l1 = l4;
        l3 = l2;
        if (!this.mCanWrite) {}
      }
      else
      {
        l1 = l4;
        l3 = l2;
        if (paramContext != null)
        {
          l1 = l4;
          l3 = l2;
          if (!StringUtils.isEmpty(paramString1))
          {
            this.mTxf = getTransactionXMLFile(paramString1);
            l1 = l4;
            l3 = l2;
            if (this.mTxf != null)
            {
              l1 = l4;
              l3 = l2;
            }
          }
        }
      }
    }
    try
    {
      this.mMySP = this.mTxf.getMySharedPreferences(paramString2, 0);
      l1 = l4;
      l3 = l2;
      l4 = this.mMySP.getLong("t", 0L);
      if (paramBoolean2) {
        break label655;
      }
      if (l2 <= l4) {
        break label530;
      }
      l1 = l4;
      l3 = l2;
      copySPToMySP(this.mSp, this.mMySP);
      l1 = l4;
      l3 = l2;
      this.mMySP = this.mTxf.getMySharedPreferences(paramString2, 0);
      l3 = l2;
      l1 = l4;
    }
    catch (Exception paramContext)
    {
      for (;;) {}
    }
    if ((l3 != l1) || ((l3 == 0L) && (l1 == 0L)))
    {
      l2 = System.currentTimeMillis();
      if ((!this.mIsLessMode) || ((this.mIsLessMode) && (l3 == 0L) && (l1 == 0L))) {
        if (this.mSp != null)
        {
          paramContext = this.mSp.edit();
          paramContext.putLong("t2", l2);
          paramContext.commit();
        }
      }
    }
  }
  
  private boolean checkSDCardXMLFile()
  {
    if (this.mMySP != null)
    {
      boolean bool = this.mMySP.checkFile();
      if (!bool) {
        commit();
      }
      return bool;
    }
    return false;
  }
  
  private void copyMySPToSP(MySharedPreferences paramMySharedPreferences, SharedPreferences paramSharedPreferences)
  {
    if ((paramMySharedPreferences != null) && (paramSharedPreferences != null))
    {
      paramSharedPreferences = paramSharedPreferences.edit();
      if (paramSharedPreferences != null)
      {
        paramSharedPreferences.clear();
        paramMySharedPreferences = paramMySharedPreferences.getAll().entrySet().iterator();
      }
    }
    for (;;)
    {
      if (!paramMySharedPreferences.hasNext())
      {
        paramSharedPreferences.commit();
        return;
      }
      Object localObject = (Map.Entry)paramMySharedPreferences.next();
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = ((Map.Entry)localObject).getValue();
      if ((localObject instanceof String)) {
        paramSharedPreferences.putString(str, (String)localObject);
      } else if ((localObject instanceof Integer)) {
        paramSharedPreferences.putInt(str, ((Integer)localObject).intValue());
      } else if ((localObject instanceof Long)) {
        paramSharedPreferences.putLong(str, ((Long)localObject).longValue());
      } else if ((localObject instanceof Float)) {
        paramSharedPreferences.putFloat(str, ((Float)localObject).floatValue());
      } else if ((localObject instanceof Boolean)) {
        paramSharedPreferences.putBoolean(str, ((Boolean)localObject).booleanValue());
      }
    }
  }
  
  private void copySPToMySP(SharedPreferences paramSharedPreferences, MySharedPreferences paramMySharedPreferences)
  {
    if ((paramSharedPreferences != null) && (paramMySharedPreferences != null))
    {
      paramMySharedPreferences = paramMySharedPreferences.edit();
      if (paramMySharedPreferences != null)
      {
        paramMySharedPreferences.clear();
        paramSharedPreferences = paramSharedPreferences.getAll().entrySet().iterator();
      }
    }
    for (;;)
    {
      if (!paramSharedPreferences.hasNext())
      {
        paramMySharedPreferences.commit();
        return;
      }
      Object localObject = (Map.Entry)paramSharedPreferences.next();
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = ((Map.Entry)localObject).getValue();
      if ((localObject instanceof String)) {
        paramMySharedPreferences.putString(str, (String)localObject);
      } else if ((localObject instanceof Integer)) {
        paramMySharedPreferences.putInt(str, ((Integer)localObject).intValue());
      } else if ((localObject instanceof Long)) {
        paramMySharedPreferences.putLong(str, ((Long)localObject).longValue());
      } else if ((localObject instanceof Float)) {
        paramMySharedPreferences.putFloat(str, ((Float)localObject).floatValue());
      } else if ((localObject instanceof Boolean)) {
        paramMySharedPreferences.putBoolean(str, ((Boolean)localObject).booleanValue());
      }
    }
  }
  
  private File getRootFolder(String paramString)
  {
    File localFile = Environment.getExternalStorageDirectory();
    if (localFile != null)
    {
      paramString = new File(String.format("%s%s%s", new Object[] { localFile.getAbsolutePath(), File.separator, paramString }));
      if ((paramString != null) && (!paramString.exists())) {
        paramString.mkdirs();
      }
      return paramString;
    }
    return null;
  }
  
  private TransactionXMLFile getTransactionXMLFile(String paramString)
  {
    paramString = getRootFolder(paramString);
    if (paramString != null)
    {
      this.mTxf = new TransactionXMLFile(paramString.getAbsolutePath());
      return this.mTxf;
    }
    return null;
  }
  
  private void initEditor()
  {
    if ((this.mEditor == null) && (this.mSp != null)) {
      this.mEditor = this.mSp.edit();
    }
    if ((this.mCanWrite) && (this.mMyEditor == null) && (this.mMySP != null)) {
      this.mMyEditor = this.mMySP.edit();
    }
    checkSDCardXMLFile();
  }
  
  public void clear()
  {
    initEditor();
    long l = System.currentTimeMillis();
    if (this.mEditor != null)
    {
      this.mEditor.clear();
      this.mEditor.putLong("t", l);
    }
    if (this.mMyEditor != null)
    {
      this.mMyEditor.clear();
      this.mMyEditor.putLong("t", l);
    }
  }
  
  public boolean commit()
  {
    boolean bool2 = true;
    long l = System.currentTimeMillis();
    boolean bool1 = bool2;
    if (this.mEditor != null)
    {
      if ((!this.mIsLessMode) && (this.mSp != null)) {
        this.mEditor.putLong("t", l);
      }
      bool1 = bool2;
      if (!this.mEditor.commit()) {
        bool1 = false;
      }
    }
    if ((this.mSp != null) && (this.mContext != null)) {
      this.mSp = this.mContext.getSharedPreferences(this.mConfigName, 0);
    }
    Object localObject1 = null;
    try
    {
      localObject2 = Environment.getExternalStorageState();
      localObject1 = localObject2;
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        try
        {
          Object localObject2;
          boolean bool3;
          if (this.mTxf != null)
          {
            this.mMySP = this.mTxf.getMySharedPreferences(this.mConfigName, 0);
            bool3 = bool2;
          }
          return bool3;
        }
        catch (Exception localException1) {}
        localException2 = localException2;
        localException2.printStackTrace();
        continue;
        copyMySPToSP(this.mMySP, this.mSp);
        continue;
        bool2 = bool1;
        if (this.mMyEditor != null)
        {
          bool2 = bool1;
          if (!this.mMyEditor.commit()) {
            bool2 = false;
          }
        }
      }
    }
    bool3 = bool1;
    if (!StringUtils.isEmpty((String)localObject1))
    {
      bool2 = bool1;
      if (((String)localObject1).equals("mounted"))
      {
        if (this.mMySP != null) {
          break label281;
        }
        localObject2 = getTransactionXMLFile(this.mFolderName);
        bool2 = bool1;
        if (localObject2 != null)
        {
          this.mMySP = ((TransactionXMLFile)localObject2).getMySharedPreferences(this.mConfigName, 0);
          if (this.mIsLessMode) {
            break label266;
          }
          copySPToMySP(this.mSp, this.mMySP);
          this.mMyEditor = this.mMySP.edit();
          bool2 = bool1;
        }
      }
      if (!((String)localObject1).equals("mounted"))
      {
        bool3 = bool2;
        if (((String)localObject1).equals("mounted_ro"))
        {
          bool3 = bool2;
          if (this.mMySP == null) {}
        }
      }
      else
      {
        bool3 = bool2;
      }
    }
    label266:
    label281:
    return bool2;
  }
  
  public Map<String, ?> getAll()
  {
    checkSDCardXMLFile();
    if (this.mSp != null) {
      return this.mSp.getAll();
    }
    if (this.mMySP != null) {
      return this.mMySP.getAll();
    }
    return null;
  }
  
  public boolean getBoolean(String paramString)
  {
    boolean bool = false;
    checkSDCardXMLFile();
    if (this.mSp != null) {
      bool = this.mSp.getBoolean(paramString, false);
    }
    while (this.mMySP == null) {
      return bool;
    }
    return this.mMySP.getBoolean(paramString, false);
  }
  
  public float getFloat(String paramString)
  {
    float f = 0.0F;
    checkSDCardXMLFile();
    if (this.mSp != null) {
      f = this.mSp.getFloat(paramString, 0.0F);
    }
    while (this.mMySP == null) {
      return f;
    }
    return this.mMySP.getFloat(paramString, 0.0F);
  }
  
  public int getInt(String paramString)
  {
    int i = 0;
    checkSDCardXMLFile();
    if (this.mSp != null) {
      i = this.mSp.getInt(paramString, 0);
    }
    while (this.mMySP == null) {
      return i;
    }
    return this.mMySP.getInt(paramString, 0);
  }
  
  public long getLong(String paramString)
  {
    long l = 0L;
    checkSDCardXMLFile();
    if (this.mSp != null) {
      l = this.mSp.getLong(paramString, 0L);
    }
    while (this.mMySP == null) {
      return l;
    }
    return this.mMySP.getLong(paramString, 0L);
  }
  
  public String getString(String paramString)
  {
    checkSDCardXMLFile();
    if (this.mSp != null)
    {
      String str = this.mSp.getString(paramString, "");
      if (!StringUtils.isEmpty(str)) {
        return str;
      }
    }
    if (this.mMySP != null) {
      return this.mMySP.getString(paramString, "");
    }
    return "";
  }
  
  public void putBoolean(String paramString, boolean paramBoolean)
  {
    if ((!StringUtils.isEmpty(paramString)) && (!paramString.equals("t")))
    {
      initEditor();
      if (this.mEditor != null) {
        this.mEditor.putBoolean(paramString, paramBoolean);
      }
      if (this.mMyEditor != null) {
        this.mMyEditor.putBoolean(paramString, paramBoolean);
      }
    }
  }
  
  public void putFloat(String paramString, float paramFloat)
  {
    if ((!StringUtils.isEmpty(paramString)) && (!paramString.equals("t")))
    {
      initEditor();
      if (this.mEditor != null) {
        this.mEditor.putFloat(paramString, paramFloat);
      }
      if (this.mMyEditor != null) {
        this.mMyEditor.putFloat(paramString, paramFloat);
      }
    }
  }
  
  public void putInt(String paramString, int paramInt)
  {
    if ((!StringUtils.isEmpty(paramString)) && (!paramString.equals("t")))
    {
      initEditor();
      if (this.mEditor != null) {
        this.mEditor.putInt(paramString, paramInt);
      }
      if (this.mMyEditor != null) {
        this.mMyEditor.putInt(paramString, paramInt);
      }
    }
  }
  
  public void putLong(String paramString, long paramLong)
  {
    if ((!StringUtils.isEmpty(paramString)) && (!paramString.equals("t")))
    {
      initEditor();
      if (this.mEditor != null) {
        this.mEditor.putLong(paramString, paramLong);
      }
      if (this.mMyEditor != null) {
        this.mMyEditor.putLong(paramString, paramLong);
      }
    }
  }
  
  public void putString(String paramString1, String paramString2)
  {
    if ((!StringUtils.isEmpty(paramString1)) && (!paramString1.equals("t")))
    {
      initEditor();
      if (this.mEditor != null) {
        this.mEditor.putString(paramString1, paramString2);
      }
      if (this.mMyEditor != null) {
        this.mMyEditor.putString(paramString1, paramString2);
      }
    }
  }
  
  public void reload()
  {
    if ((this.mSp != null) && (this.mContext != null)) {
      this.mSp = this.mContext.getSharedPreferences(this.mConfigName, 0);
    }
    Object localObject = null;
    try
    {
      String str = Environment.getExternalStorageState();
      localObject = str;
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        try
        {
          if (this.mTxf != null) {
            this.mMySP = this.mTxf.getMySharedPreferences(this.mConfigName, 0);
          }
          return;
        }
        catch (Exception localException1) {}
        localException2 = localException2;
        localException2.printStackTrace();
      }
    }
    if ((!StringUtils.isEmpty((String)localObject)) && ((((String)localObject).equals("mounted")) || ((((String)localObject).equals("mounted_ro")) && (this.mMySP != null)))) {}
  }
  
  public void remove(String paramString)
  {
    if ((!StringUtils.isEmpty(paramString)) && (!paramString.equals("t")))
    {
      initEditor();
      if (this.mEditor != null) {
        this.mEditor.remove(paramString);
      }
      if (this.mMyEditor != null) {
        this.mMyEditor.remove(paramString);
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\ta\utdid2\core\persistent\PersistentConfiguration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */