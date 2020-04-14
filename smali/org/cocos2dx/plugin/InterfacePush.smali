.class public interface abstract Lorg/cocos2dx/plugin/InterfacePush;
.super Ljava/lang/Object;
.source "InterfacePush.java"


# static fields
.field public static final PluginType:I = 0x7


# virtual methods
.method public abstract closePush()V
.end method

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

.method public abstract delAlias(Ljava/lang/String;)V
.end method

.method public abstract delTags(Ljava/lang/String;)V
.end method

.method public abstract getPluginVersion()Ljava/lang/String;
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
.end method

.method public abstract setAlias(Ljava/lang/String;)V
.end method

.method public abstract setDebugMode(Z)V
.end method

.method public abstract setTags(Ljava/lang/String;)V
.end method

.method public abstract startPush()V
.end method
