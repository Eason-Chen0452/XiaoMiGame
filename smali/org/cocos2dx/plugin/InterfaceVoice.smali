.class public interface abstract Lorg/cocos2dx/plugin/InterfaceVoice;
.super Ljava/lang/Object;
.source "InterfaceVoice.java"


# static fields
.field public static final PluginType:I = 0xa


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

.method public abstract getVolume()I
.end method

.method public abstract isMicMute()Z
.end method

.method public abstract setMicMute(Z)V
.end method

.method public abstract setVoiceParams(Ljava/util/Hashtable;)V
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

.method public abstract setVolume(I)V
.end method

.method public abstract start(Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method
