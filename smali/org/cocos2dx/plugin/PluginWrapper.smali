.class public Lorg/cocos2dx/plugin/PluginWrapper;
.super Ljava/lang/Object;
.source "PluginWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "aonesdk info PluginWrapper"

.field private static acListener:Lorg/cocos2dx/plugin/ActivityEventListener;

.field protected static sContext:Landroid/content/Context;

.field protected static sGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field protected static sGameThreadHandler:Landroid/os/Handler;

.field protected static sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sContext:Landroid/content/Context;

    .line 37
    sput-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 38
    sput-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    .line 39
    sput-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sGameThreadHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    invoke-direct {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;-><init>()V

    sput-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->acListener:Lorg/cocos2dx/plugin/ActivityEventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->acListener:Lorg/cocos2dx/plugin/ActivityEventListener;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method protected static getPluginType(Ljava/lang/Object;)I
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 88
    const/4 v3, -0x1

    .line 91
    .local v3, "nRet":I
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "PluginType"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 92
    .local v1, "filedID":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 93
    .local v2, "nObj":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 98
    .end local v1    # "filedID":Ljava/lang/reflect/Field;
    .end local v2    # "nObj":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sput-object p0, Lorg/cocos2dx/plugin/PluginWrapper;->sContext:Landroid/content/Context;

    .line 46
    sget-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    .line 49
    :cond_0
    return-void
.end method

.method public static initGameHandler()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sGameThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sGameThreadHandler:Landroid/os/Handler;

    .line 54
    :cond_0
    return-void
.end method

.method protected static initPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p0, "classFullName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 62
    const-string v5, "aonesdk info PluginWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "class name : ----"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v5, 0x2f

    const/16 v6, 0x2e

    :try_start_0
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "fullName":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :try_start_1
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 75
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 76
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 84
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v3    # "fullName":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "aonesdk info PluginWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Class "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "ctx":Landroid/content/Context;
    .restart local v3    # "fullName":Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v5, "aonesdk info PluginWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Plugin "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wasn\'t initialized."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 81
    .end local v1    # "ctx":Landroid/content/Context;
    :catch_1
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static runOnGLThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 106
    sget-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 116
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sGameThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sGameThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 113
    :cond_1
    const-string v0, "aonesdk info PluginWrapper"

    const-string v1, "runOnGLThread sGLSurfaceView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 119
    sget-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    sget-object v0, Lorg/cocos2dx/plugin/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 0
    .param p0, "value"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 57
    sput-object p0, Lorg/cocos2dx/plugin/PluginWrapper;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 58
    return-void
.end method
