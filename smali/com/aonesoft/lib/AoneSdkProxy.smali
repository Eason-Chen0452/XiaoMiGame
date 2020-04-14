.class public Lcom/aonesoft/lib/AoneSdkProxy;
.super Ljava/lang/Object;
.source "AoneSdkProxy.java"


# static fields
.field private static final REQUEST_CODE_ASK_PERMISSIONS:I = 0x7b

.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static s_isLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/aonesoft/lib/AoneSdkProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aonesoft/lib/AoneSdkProxy;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aonesoft/lib/AoneSdkProxy;->s_isLoaded:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/aonesoft/lib/AoneResultListener;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/aonesoft/lib/AoneJni;->nativeInit(Lcom/aonesoft/lib/AoneResultListener;)V

    .line 93
    return-void
.end method

.method public static load(Landroid/content/Context;Landroid/os/Bundle;Landroid/opengl/GLSurfaceView;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 33
    sput-object p0, Lcom/aonesoft/lib/AoneSdkProxy;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {p0}, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient;->initAdId(Landroid/content/Context;)V

    .line 37
    sget-object v5, Lcom/aonesoft/lib/AoneSdkProxy;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    const/16 v6, 0x7b

    invoke-static {v5, v6}, Lcom/aonesoft/lib/utils/PermissionHelper;->requestPermissionDialog(Landroid/app/Activity;I)Z

    .line 38
    sget-boolean v5, Lcom/aonesoft/lib/AoneSdkProxy;->s_isLoaded:Z

    if-nez v5, :cond_3

    .line 39
    const/4 v5, 0x1

    sput-boolean v5, Lcom/aonesoft/lib/AoneSdkProxy;->s_isLoaded:Z

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, "filePath":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .local v3, "sdk_level":I
    const/16 v5, 0x9

    if-lt v3, v5, :cond_1

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/libaonesdk.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    :try_start_0
    const-string v5, "aonesdk"

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_1
    invoke-static {p0}, Lindi/cputils/Helper;->Init(Landroid/content/Context;)V

    .line 60
    invoke-static {p0}, Lorg/cocos2dx/plugin/PluginWrapper;->init(Landroid/content/Context;)V

    .line 61
    invoke-static {p2}, Lorg/cocos2dx/plugin/PluginWrapper;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 63
    invoke-static {}, Lcom/aonesoft/lib/AoneJni;->nativeSetJavaVM()V

    .line 64
    invoke-static {p0}, Lcom/aonesoft/lib/AoneHelper;->init(Landroid/content/Context;)V

    .line 65
    invoke-static {p0}, Lcom/aonesoft/lib/AoneWifiManager;->init(Landroid/content/Context;)V

    .line 66
    invoke-static {p0}, Lcom/aonesoft/lib/AoneDevice;->init(Landroid/content/Context;)V

    .line 67
    invoke-static {p0}, Lcom/aonesoft/lib/AoneScreenShot;->init(Landroid/content/Context;)V

    .line 68
    invoke-static {p0}, Lcom/aonesoft/lib/AoneFixHeadImg;->init(Landroid/content/Context;)V

    .line 69
    invoke-static {p0}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->init(Landroid/content/Context;)V

    .line 70
    invoke-static {}, Lcom/aonesoft/lib/AoneJni;->nativeLoadSdk()V

    .line 72
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {p2}, Lcom/aonesoft/lib/AoneNetAsync;->init(Landroid/opengl/GLSurfaceView;)V

    .line 87
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "sdk_level":I
    :goto_2
    invoke-static {p0}, Lcom/aonesoft/lib/AoneInstallation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "uuid":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AoneSdkProxy uuid:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    return-void

    .line 45
    .end local v4    # "uuid":Ljava/lang/String;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v3    # "sdk_level":I
    :cond_1
    const/4 v5, 0x4

    if-lt v3, v5, :cond_2

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/lib/libaonesdk.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/data/data/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/lib/libaonesdk.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 54
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "sdk_level":I
    :cond_3
    invoke-static {p0}, Lindi/cputils/Helper;->Init(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lorg/cocos2dx/plugin/PluginWrapper;->init(Landroid/content/Context;)V

    .line 79
    invoke-static {p2}, Lorg/cocos2dx/plugin/PluginWrapper;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 80
    invoke-static {p0}, Lcom/aonesoft/lib/AoneHelper;->init(Landroid/content/Context;)V

    .line 81
    invoke-static {p0}, Lcom/aonesoft/lib/AoneDevice;->init(Landroid/content/Context;)V

    .line 82
    invoke-static {p0}, Lcom/aonesoft/lib/AoneScreenShot;->init(Landroid/content/Context;)V

    .line 83
    invoke-static {p0}, Lcom/aonesoft/lib/AoneFixHeadImg;->init(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->init(Landroid/content/Context;)V

    .line 85
    invoke-static {p2}, Lcom/aonesoft/lib/AoneNetAsync;->init(Landroid/opengl/GLSurfaceView;)V

    goto :goto_2
.end method

.method public static login(Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/aonesoft/lib/AoneResultListener;

    .prologue
    .line 96
    invoke-static {p0}, Lcom/aonesoft/lib/AoneJni;->nativeLogin(Lcom/aonesoft/lib/AoneResultListener;)V

    .line 97
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 128
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    invoke-static {p0, p1, p2}, Lcom/aonesoft/lib/AoneFixHeadImg;->onActivityResult(IILandroid/content/Intent;)V

    .line 130
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityResult(IILandroid/content/Intent;)V

    .line 131
    return-void
.end method

.method public static onBackPressed()V
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onBackPressed()V

    .line 170
    return-void
.end method

.method public static onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 147
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 148
    return-void
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityDestroy()V

    .line 105
    return-void
.end method

.method public static onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyCode"    # I
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 165
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/cocos2dx/plugin/ActivityEventListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-static {p0}, Lcom/aonesoft/lib/AoneDeepLink;->onNewIntent(Landroid/content/Intent;)V

    .line 135
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onNewIntent(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityPause()V

    .line 109
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    .line 151
    packed-switch p0, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/cocos2dx/plugin/ActivityEventListener;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 162
    return-void

    .line 153
    :pswitch_0
    sget-object v0, Lcom/aonesoft/lib/AoneSdkProxy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/aonesoft/lib/utils/PermissionHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u6709\u6743\u9650\uff1aManifest.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
    .end packed-switch
.end method

.method public static onRestart()V
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityRestart()V

    .line 125
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityResume()V

    .line 113
    return-void
.end method

.method public static onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 140
    return-void
.end method

.method public static onStart()V
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityStart()V

    .line 121
    return-void
.end method

.method public static onStop()V
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityStop()V

    .line 117
    return-void
.end method

.method public static onWindowFocusChanged(Z)V
    .locals 1
    .param p0, "hasFocus"    # Z

    .prologue
    .line 143
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onWindowFocusChanged(Z)V

    .line 144
    return-void
.end method

.method public static pay(Ljava/util/Hashtable;Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aonesoft/lib/AoneResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aonesoft/lib/AoneResultListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "info":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/aonesoft/lib/AoneJni;->nativePay(Ljava/util/Hashtable;Lcom/aonesoft/lib/AoneResultListener;)V

    .line 101
    return-void
.end method

.method private static toast(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 172
    sget-object v0, Lcom/aonesoft/lib/AoneSdkProxy;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    return-void
.end method
