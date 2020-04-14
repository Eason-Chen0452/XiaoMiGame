.class public interface abstract Lorg/cocos2dx/plugin/InterfaceUser;
.super Ljava/lang/Object;
.source "InterfaceUser.java"


# static fields
.field public static final PluginType:I = 0x5


# virtual methods
.method public abstract configDeveloperInfo(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getPluginVersion()Ljava/lang/String;
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public abstract getSessionID()Ljava/lang/String;
.end method

.method public abstract getUId()Ljava/lang/String;
.end method

.method public abstract isLogined()Z
.end method

.method public abstract login()V
.end method

.method public abstract logout()V
.end method

.method public abstract setDebugMode(Z)V
.end method
