package com.ta.utdid2.core.persistent;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

public class TransactionXMLFile
{
  private static final Object GLOBAL_COMMIT_LOCK = new Object();
  public static final int MODE_PRIVATE = 0;
  public static final int MODE_WORLD_READABLE = 1;
  public static final int MODE_WORLD_WRITEABLE = 2;
  private File mPreferencesDir;
  private final Object mSync = new Object();
  private HashMap<File, MySharedPreferencesImpl> sSharedPrefs = new HashMap();
  
  public TransactionXMLFile(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
    {
      this.mPreferencesDir = new File(paramString);
      return;
    }
    throw new RuntimeException("Directory can not be empty");
  }
  
  private File getPreferencesDir()
  {
    synchronized (this.mSync)
    {
      File localFile = this.mPreferencesDir;
      return localFile;
    }
  }
  
  private File getSharedPrefsFile(String paramString)
  {
    return makeFilename(getPreferencesDir(), paramString + ".xml");
  }
  
  private static File makeBackupFile(File paramFile)
  {
    return new File(paramFile.getPath() + ".bak");
  }
  
  private File makeFilename(File paramFile, String paramString)
  {
    if (paramString.indexOf(File.separatorChar) < 0) {
      return new File(paramFile, paramString);
    }
    throw new IllegalArgumentException("File " + paramString + " contains a path separator");
  }
  
  /* Error */
  public MySharedPreferences getMySharedPreferences(String paramString, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 127	com/ta/utdid2/core/persistent/TransactionXMLFile:getSharedPrefsFile	(Ljava/lang/String;)Ljava/io/File;
    //   5: astore 13
    //   7: getstatic 32	com/ta/utdid2/core/persistent/TransactionXMLFile:GLOBAL_COMMIT_LOCK	Ljava/lang/Object;
    //   10: astore_1
    //   11: aload_1
    //   12: monitorenter
    //   13: aload_0
    //   14: getfield 41	com/ta/utdid2/core/persistent/TransactionXMLFile:sSharedPrefs	Ljava/util/HashMap;
    //   17: aload 13
    //   19: invokevirtual 131	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   22: checkcast 6	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl
    //   25: astore 7
    //   27: aload 7
    //   29: ifnull +16 -> 45
    //   32: aload 7
    //   34: invokevirtual 135	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl:hasFileChanged	()Z
    //   37: ifne +8 -> 45
    //   40: aload_1
    //   41: monitorexit
    //   42: aload 7
    //   44: areturn
    //   45: aload_1
    //   46: monitorexit
    //   47: aload 13
    //   49: invokestatic 65	com/ta/utdid2/core/persistent/TransactionXMLFile:makeBackupFile	(Ljava/io/File;)Ljava/io/File;
    //   52: astore_1
    //   53: aload_1
    //   54: invokevirtual 138	java/io/File:exists	()Z
    //   57: ifeq +16 -> 73
    //   60: aload 13
    //   62: invokevirtual 141	java/io/File:delete	()Z
    //   65: pop
    //   66: aload_1
    //   67: aload 13
    //   69: invokevirtual 145	java/io/File:renameTo	(Ljava/io/File;)Z
    //   72: pop
    //   73: aload 13
    //   75: invokevirtual 138	java/io/File:exists	()Z
    //   78: ifeq +9 -> 87
    //   81: aload 13
    //   83: invokevirtual 148	java/io/File:canRead	()Z
    //   86: pop
    //   87: aconst_null
    //   88: astore 4
    //   90: aconst_null
    //   91: astore_3
    //   92: aconst_null
    //   93: astore 9
    //   95: aconst_null
    //   96: astore 10
    //   98: aconst_null
    //   99: astore 12
    //   101: aconst_null
    //   102: astore 11
    //   104: aconst_null
    //   105: astore 5
    //   107: aconst_null
    //   108: astore 6
    //   110: aconst_null
    //   111: astore 8
    //   113: aload 8
    //   115: astore_1
    //   116: aload 13
    //   118: invokevirtual 138	java/io/File:exists	()Z
    //   121: ifeq +54 -> 175
    //   124: aload 8
    //   126: astore_1
    //   127: aload 13
    //   129: invokevirtual 148	java/io/File:canRead	()Z
    //   132: ifeq +43 -> 175
    //   135: new 150	java/io/FileInputStream
    //   138: dup
    //   139: aload 13
    //   141: invokespecial 153	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   144: astore 8
    //   146: aload 12
    //   148: astore_3
    //   149: aload 11
    //   151: astore 4
    //   153: aload 8
    //   155: invokestatic 159	com/ta/utdid2/core/persistent/XmlUtils:readMapXml	(Ljava/io/InputStream;)Ljava/util/HashMap;
    //   158: astore_1
    //   159: aload_1
    //   160: astore_3
    //   161: aload_1
    //   162: astore 4
    //   164: aload_1
    //   165: astore 5
    //   167: aload_1
    //   168: astore 6
    //   170: aload 8
    //   172: invokevirtual 162	java/io/FileInputStream:close	()V
    //   175: getstatic 32	com/ta/utdid2/core/persistent/TransactionXMLFile:GLOBAL_COMMIT_LOCK	Ljava/lang/Object;
    //   178: astore 5
    //   180: aload 5
    //   182: monitorenter
    //   183: aload 7
    //   185: ifnull +126 -> 311
    //   188: aload 7
    //   190: aload_1
    //   191: invokevirtual 166	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl:replace	(Ljava/util/Map;)V
    //   194: aload 7
    //   196: astore_3
    //   197: aload 5
    //   199: monitorexit
    //   200: aload_3
    //   201: areturn
    //   202: astore_3
    //   203: aload_1
    //   204: monitorexit
    //   205: aload_3
    //   206: athrow
    //   207: astore_1
    //   208: aconst_null
    //   209: astore_3
    //   210: aload 4
    //   212: astore_1
    //   213: new 150	java/io/FileInputStream
    //   216: dup
    //   217: aload 13
    //   219: invokespecial 153	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   222: astore_3
    //   223: aload_3
    //   224: invokevirtual 169	java/io/FileInputStream:available	()I
    //   227: newarray <illegal type>
    //   229: astore 4
    //   231: aload_3
    //   232: aload 4
    //   234: invokevirtual 173	java/io/FileInputStream:read	([B)I
    //   237: pop
    //   238: new 43	java/lang/String
    //   241: dup
    //   242: aload 4
    //   244: iconst_0
    //   245: aload 4
    //   247: arraylength
    //   248: ldc -81
    //   250: invokespecial 178	java/lang/String:<init>	([BIILjava/lang/String;)V
    //   253: pop
    //   254: goto -79 -> 175
    //   257: astore_3
    //   258: aload_3
    //   259: invokevirtual 181	java/io/FileNotFoundException:printStackTrace	()V
    //   262: goto -87 -> 175
    //   265: astore_3
    //   266: aload_3
    //   267: invokevirtual 182	java/io/IOException:printStackTrace	()V
    //   270: goto -95 -> 175
    //   273: astore 4
    //   275: aload_3
    //   276: astore_1
    //   277: aload 4
    //   279: astore_3
    //   280: aload_3
    //   281: invokevirtual 181	java/io/FileNotFoundException:printStackTrace	()V
    //   284: goto -109 -> 175
    //   287: astore_3
    //   288: aload 9
    //   290: astore_1
    //   291: aload_3
    //   292: invokevirtual 182	java/io/IOException:printStackTrace	()V
    //   295: goto -120 -> 175
    //   298: astore 4
    //   300: aload 10
    //   302: astore_1
    //   303: aload 4
    //   305: invokevirtual 183	java/lang/Exception:printStackTrace	()V
    //   308: goto -133 -> 175
    //   311: aload_0
    //   312: getfield 41	com/ta/utdid2/core/persistent/TransactionXMLFile:sSharedPrefs	Ljava/util/HashMap;
    //   315: aload 13
    //   317: invokevirtual 131	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   320: checkcast 6	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl
    //   323: astore 4
    //   325: aload 4
    //   327: astore_3
    //   328: aload 4
    //   330: ifnonnull -133 -> 197
    //   333: new 6	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl
    //   336: dup
    //   337: aload 13
    //   339: iload_2
    //   340: aload_1
    //   341: invokespecial 186	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl:<init>	(Ljava/io/File;ILjava/util/Map;)V
    //   344: astore_3
    //   345: aload_0
    //   346: getfield 41	com/ta/utdid2/core/persistent/TransactionXMLFile:sSharedPrefs	Ljava/util/HashMap;
    //   349: aload 13
    //   351: aload_3
    //   352: invokevirtual 190	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   355: pop
    //   356: goto -159 -> 197
    //   359: astore_1
    //   360: aload 5
    //   362: monitorexit
    //   363: aload_1
    //   364: athrow
    //   365: astore_1
    //   366: goto -6 -> 360
    //   369: astore 4
    //   371: aload_3
    //   372: astore_1
    //   373: goto -70 -> 303
    //   376: astore_3
    //   377: aload 4
    //   379: astore_1
    //   380: goto -89 -> 291
    //   383: astore_3
    //   384: aload 5
    //   386: astore_1
    //   387: goto -107 -> 280
    //   390: astore_3
    //   391: goto -125 -> 266
    //   394: astore_3
    //   395: goto -137 -> 258
    //   398: astore_1
    //   399: aload 6
    //   401: astore_1
    //   402: aload 8
    //   404: astore_3
    //   405: goto -192 -> 213
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	408	0	this	TransactionXMLFile
    //   0	408	1	paramString	String
    //   0	408	2	paramInt	int
    //   91	110	3	localObject1	Object
    //   202	4	3	localObject2	Object
    //   209	23	3	localFileInputStream1	java.io.FileInputStream
    //   257	2	3	localFileNotFoundException1	FileNotFoundException
    //   265	11	3	localIOException1	IOException
    //   279	2	3	localFileNotFoundException2	FileNotFoundException
    //   287	5	3	localIOException2	IOException
    //   327	45	3	localMySharedPreferencesImpl1	MySharedPreferencesImpl
    //   376	1	3	localIOException3	IOException
    //   383	1	3	localFileNotFoundException3	FileNotFoundException
    //   390	1	3	localIOException4	IOException
    //   394	1	3	localFileNotFoundException4	FileNotFoundException
    //   404	1	3	localObject3	Object
    //   88	158	4	localObject4	Object
    //   273	5	4	localFileNotFoundException5	FileNotFoundException
    //   298	6	4	localException1	Exception
    //   323	6	4	localMySharedPreferencesImpl2	MySharedPreferencesImpl
    //   369	9	4	localException2	Exception
    //   105	280	5	localObject5	Object
    //   108	292	6	str	String
    //   25	170	7	localMySharedPreferencesImpl3	MySharedPreferencesImpl
    //   111	292	8	localFileInputStream2	java.io.FileInputStream
    //   93	196	9	localObject6	Object
    //   96	205	10	localObject7	Object
    //   102	48	11	localObject8	Object
    //   99	48	12	localObject9	Object
    //   5	345	13	localFile	File
    // Exception table:
    //   from	to	target	type
    //   13	27	202	finally
    //   32	42	202	finally
    //   45	47	202	finally
    //   203	205	202	finally
    //   135	146	207	org/xmlpull/v1/XmlPullParserException
    //   223	254	257	java/io/FileNotFoundException
    //   213	223	265	java/io/IOException
    //   135	146	273	java/io/FileNotFoundException
    //   135	146	287	java/io/IOException
    //   135	146	298	java/lang/Exception
    //   188	194	359	finally
    //   197	200	359	finally
    //   311	325	359	finally
    //   333	345	359	finally
    //   360	363	359	finally
    //   345	356	365	finally
    //   153	159	369	java/lang/Exception
    //   170	175	369	java/lang/Exception
    //   153	159	376	java/io/IOException
    //   170	175	376	java/io/IOException
    //   153	159	383	java/io/FileNotFoundException
    //   170	175	383	java/io/FileNotFoundException
    //   223	254	390	java/io/IOException
    //   213	223	394	java/io/FileNotFoundException
    //   153	159	398	org/xmlpull/v1/XmlPullParserException
    //   170	175	398	org/xmlpull/v1/XmlPullParserException
  }
  
  private static final class MySharedPreferencesImpl
    implements MySharedPreferences
  {
    private static final Object mContent = new Object();
    private boolean hasChange = false;
    private final File mBackupFile;
    private final File mFile;
    private WeakHashMap<MySharedPreferences.OnSharedPreferenceChangeListener, Object> mListeners;
    private Map mMap;
    private final int mMode;
    
    MySharedPreferencesImpl(File paramFile, int paramInt, Map paramMap)
    {
      this.mFile = paramFile;
      this.mBackupFile = TransactionXMLFile.makeBackupFile(paramFile);
      this.mMode = paramInt;
      if (paramMap != null) {}
      for (;;)
      {
        this.mMap = paramMap;
        this.mListeners = new WeakHashMap();
        return;
        paramMap = new HashMap();
      }
    }
    
    private FileOutputStream createFileOutputStream(File paramFile)
    {
      localObject = null;
      try
      {
        FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
        paramFile = localFileOutputStream;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        for (;;)
        {
          if (!paramFile.getParentFile().mkdir()) {
            return null;
          }
          try
          {
            paramFile = new FileOutputStream(paramFile);
          }
          catch (FileNotFoundException paramFile)
          {
            paramFile = (File)localObject;
          }
        }
      }
      return paramFile;
    }
    
    private boolean writeFileLocked()
    {
      if (this.mFile.exists()) {
        if (!this.mBackupFile.exists()) {
          if (this.mFile.renameTo(this.mBackupFile)) {
            break label44;
          }
        }
      }
      for (;;)
      {
        return false;
        this.mFile.delete();
        try
        {
          label44:
          FileOutputStream localFileOutputStream = createFileOutputStream(this.mFile);
          if (localFileOutputStream == null) {
            continue;
          }
          XmlUtils.writeMapXml(this.mMap, localFileOutputStream);
          localFileOutputStream.close();
          this.mBackupFile.delete();
          return true;
        }
        catch (IOException localIOException)
        {
          if (!this.mFile.exists()) {
            continue;
          }
          this.mFile.delete();
          return false;
        }
        catch (XmlPullParserException localXmlPullParserException)
        {
          for (;;) {}
        }
      }
    }
    
    public boolean checkFile()
    {
      return (this.mFile != null) && (new File(this.mFile.getAbsolutePath()).exists());
    }
    
    public boolean contains(String paramString)
    {
      try
      {
        boolean bool = this.mMap.containsKey(paramString);
        return bool;
      }
      finally {}
    }
    
    public MySharedPreferences.MyEditor edit()
    {
      return new EditorImpl();
    }
    
    public Map<String, ?> getAll()
    {
      try
      {
        HashMap localHashMap = new HashMap(this.mMap);
        return localHashMap;
      }
      finally {}
    }
    
    public boolean getBoolean(String paramString, boolean paramBoolean)
    {
      try
      {
        paramString = (Boolean)this.mMap.get(paramString);
        if (paramString != null) {
          paramBoolean = paramString.booleanValue();
        }
        return paramBoolean;
      }
      finally {}
    }
    
    public float getFloat(String paramString, float paramFloat)
    {
      try
      {
        paramString = (Float)this.mMap.get(paramString);
        if (paramString != null) {
          paramFloat = paramString.floatValue();
        }
        return paramFloat;
      }
      finally {}
    }
    
    public int getInt(String paramString, int paramInt)
    {
      try
      {
        paramString = (Integer)this.mMap.get(paramString);
        if (paramString != null) {
          paramInt = paramString.intValue();
        }
        return paramInt;
      }
      finally {}
    }
    
    public long getLong(String paramString, long paramLong)
    {
      try
      {
        paramString = (Long)this.mMap.get(paramString);
        if (paramString != null) {
          paramLong = paramString.longValue();
        }
        return paramLong;
      }
      finally {}
    }
    
    public String getString(String paramString1, String paramString2)
    {
      for (;;)
      {
        try
        {
          paramString1 = (String)this.mMap.get(paramString1);
          if (paramString1 != null) {
            return paramString1;
          }
        }
        finally {}
        paramString1 = paramString2;
      }
    }
    
    public boolean hasFileChanged()
    {
      try
      {
        boolean bool = this.hasChange;
        return bool;
      }
      finally {}
    }
    
    public void registerOnSharedPreferenceChangeListener(MySharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
    {
      try
      {
        this.mListeners.put(paramOnSharedPreferenceChangeListener, mContent);
        return;
      }
      finally {}
    }
    
    public void replace(Map paramMap)
    {
      if (paramMap != null) {
        try
        {
          this.mMap = paramMap;
          return;
        }
        finally {}
      }
    }
    
    public void setHasChange(boolean paramBoolean)
    {
      try
      {
        this.hasChange = paramBoolean;
        return;
      }
      finally {}
    }
    
    public void unregisterOnSharedPreferenceChangeListener(MySharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
    {
      try
      {
        this.mListeners.remove(paramOnSharedPreferenceChangeListener);
        return;
      }
      finally {}
    }
    
    public final class EditorImpl
      implements MySharedPreferences.MyEditor
    {
      private boolean mClear = false;
      private final Map<String, Object> mModified = new HashMap();
      
      public EditorImpl() {}
      
      public MySharedPreferences.MyEditor clear()
      {
        try
        {
          this.mClear = true;
          return this;
        }
        finally {}
      }
      
      /* Error */
      public boolean commit()
      {
        // Byte code:
        //   0: iconst_1
        //   1: istore_1
        //   2: aconst_null
        //   3: astore_3
        //   4: aconst_null
        //   5: astore 4
        //   7: invokestatic 42	com/ta/utdid2/core/persistent/TransactionXMLFile:access$0	()Ljava/lang/Object;
        //   10: astore 5
        //   12: aload 5
        //   14: monitorenter
        //   15: aload_0
        //   16: getfield 23	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl:this$1	Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
        //   19: invokestatic 45	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl:access$0	(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/WeakHashMap;
        //   22: invokevirtual 51	java/util/WeakHashMap:size	()I
        //   25: ifle +139 -> 164
        //   28: iload_1
        //   29: ifeq +30 -> 59
        //   32: new 53	java/util/ArrayList
        //   35: dup
        //   36: invokespecial 54	java/util/ArrayList:<init>	()V
        //   39: astore_3
        //   40: new 56	java/util/HashSet
        //   43: dup
        //   44: aload_0
        //   45: getfield 23	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl:this$1	Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
        //   48: invokestatic 45	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl:access$0	(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/WeakHashMap;
        //   51: invokevirtual 60	java/util/WeakHashMap:keySet	()Ljava/util/Set;
        //   54: invokespecial 63	java/util/HashSet:<init>	(Ljava/util/Collection;)V
        //   57: astore 4
        //   59: aload_0
        //   60: monitorenter
        //   61: aload_0
        //   62: getfield 33	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl:mClear	Z
        //   65: ifeq +20 -> 85
        //   68: aload_0
        //   69: getfield 23	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl:this$1	Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
        //   72: invokestatic 67	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl:access$1	(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;
        //   75: invokeinterface 71 1 0
        //   80: aload_0
        //   81: iconst_0
        //   82: putfield 33	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl:mClear	Z
        //   85: aload_0
        //   86: getfield 31	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl:mModified	Ljava/util/Map;
        //   89: invokeinterface 74 1 0
        //   94: invokeinterface 80 1 0
        //   99: astore 6
        //   101: aload 6
        //   103: invokeinterface 85 1 0
        //   108: ifne +61 -> 169
        //   111: aload_0
        //   112: getfield 31	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl:mModified	Ljava/util/Map;
        //   115: invokeinterface 71 1 0
        //   120: aload_0
        //   121: monitorexit
        //   122: aload_0
        //   123: getfield 23	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl:this$1	Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
        //   126: invokestatic 89	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl:access$2	(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Z
        //   129: istore_2
        //   130: iload_2
        //   131: ifeq +11 -> 142
        //   134: aload_0
        //   135: getfield 23	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl:this$1	Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
        //   138: iconst_1
        //   139: invokevirtual 93	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl:setHasChange	(Z)V
        //   142: aload 5
        //   144: monitorexit
        //   145: iload_1
        //   146: ifeq +16 -> 162
        //   149: aload_3
        //   150: invokeinterface 96 1 0
        //   155: iconst_1
        //   156: isub
        //   157: istore_1
        //   158: iload_1
        //   159: ifge +110 -> 269
        //   162: iload_2
        //   163: ireturn
        //   164: iconst_0
        //   165: istore_1
        //   166: goto -138 -> 28
        //   169: aload 6
        //   171: invokeinterface 99 1 0
        //   176: checkcast 101	java/util/Map$Entry
        //   179: astore 8
        //   181: aload 8
        //   183: invokeinterface 104 1 0
        //   188: checkcast 106	java/lang/String
        //   191: astore 7
        //   193: aload 8
        //   195: invokeinterface 109 1 0
        //   200: astore 8
        //   202: aload 8
        //   204: aload_0
        //   205: if_acmpne +44 -> 249
        //   208: aload_0
        //   209: getfield 23	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl:this$1	Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
        //   212: invokestatic 67	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl:access$1	(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;
        //   215: aload 7
        //   217: invokeinterface 113 2 0
        //   222: pop
        //   223: iload_1
        //   224: ifeq -123 -> 101
        //   227: aload_3
        //   228: aload 7
        //   230: invokeinterface 117 2 0
        //   235: pop
        //   236: goto -135 -> 101
        //   239: astore_3
        //   240: aload_0
        //   241: monitorexit
        //   242: aload_3
        //   243: athrow
        //   244: aload 5
        //   246: monitorexit
        //   247: aload_3
        //   248: athrow
        //   249: aload_0
        //   250: getfield 23	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl:this$1	Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
        //   253: invokestatic 67	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl:access$1	(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;
        //   256: aload 7
        //   258: aload 8
        //   260: invokeinterface 121 3 0
        //   265: pop
        //   266: goto -43 -> 223
        //   269: aload_3
        //   270: iload_1
        //   271: invokeinterface 125 2 0
        //   276: checkcast 106	java/lang/String
        //   279: astore 5
        //   281: aload 4
        //   283: invokeinterface 80 1 0
        //   288: astore 6
        //   290: aload 6
        //   292: invokeinterface 85 1 0
        //   297: ifne +10 -> 307
        //   300: iload_1
        //   301: iconst_1
        //   302: isub
        //   303: istore_1
        //   304: goto -146 -> 158
        //   307: aload 6
        //   309: invokeinterface 99 1 0
        //   314: checkcast 127	com/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener
        //   317: astore 7
        //   319: aload 7
        //   321: ifnull -31 -> 290
        //   324: aload 7
        //   326: aload_0
        //   327: getfield 23	com/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl:this$1	Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
        //   330: aload 5
        //   332: invokeinterface 131 3 0
        //   337: goto -47 -> 290
        //   340: astore_3
        //   341: goto -97 -> 244
        //   344: astore_3
        //   345: goto -101 -> 244
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	348	0	this	EditorImpl
        //   1	303	1	i	int
        //   129	34	2	bool	boolean
        //   3	225	3	localArrayList	java.util.ArrayList
        //   239	31	3	localObject1	Object
        //   340	1	3	localObject2	Object
        //   344	1	3	localObject3	Object
        //   5	277	4	localHashSet	java.util.HashSet
        //   10	321	5	localObject4	Object
        //   99	209	6	localIterator	java.util.Iterator
        //   191	134	7	localObject5	Object
        //   179	80	8	localObject6	Object
        // Exception table:
        //   from	to	target	type
        //   61	85	239	finally
        //   85	101	239	finally
        //   101	122	239	finally
        //   169	202	239	finally
        //   208	223	239	finally
        //   227	236	239	finally
        //   240	242	239	finally
        //   249	266	239	finally
        //   40	59	340	finally
        //   15	28	344	finally
        //   32	40	344	finally
        //   59	61	344	finally
        //   122	130	344	finally
        //   134	142	344	finally
        //   142	145	344	finally
        //   242	244	344	finally
        //   244	247	344	finally
      }
      
      public MySharedPreferences.MyEditor putBoolean(String paramString, boolean paramBoolean)
      {
        try
        {
          this.mModified.put(paramString, Boolean.valueOf(paramBoolean));
          return this;
        }
        finally {}
      }
      
      public MySharedPreferences.MyEditor putFloat(String paramString, float paramFloat)
      {
        try
        {
          this.mModified.put(paramString, Float.valueOf(paramFloat));
          return this;
        }
        finally {}
      }
      
      public MySharedPreferences.MyEditor putInt(String paramString, int paramInt)
      {
        try
        {
          this.mModified.put(paramString, Integer.valueOf(paramInt));
          return this;
        }
        finally {}
      }
      
      public MySharedPreferences.MyEditor putLong(String paramString, long paramLong)
      {
        try
        {
          this.mModified.put(paramString, Long.valueOf(paramLong));
          return this;
        }
        finally {}
      }
      
      public MySharedPreferences.MyEditor putString(String paramString1, String paramString2)
      {
        try
        {
          this.mModified.put(paramString1, paramString2);
          return this;
        }
        finally {}
      }
      
      public MySharedPreferences.MyEditor remove(String paramString)
      {
        try
        {
          this.mModified.put(paramString, this);
          return this;
        }
        finally {}
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\ta\utdid2\core\persistent\TransactionXMLFile.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */