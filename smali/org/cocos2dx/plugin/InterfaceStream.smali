.class public interface abstract Lorg/cocos2dx/plugin/InterfaceStream;
.super Ljava/lang/Object;
.source "InterfaceStream.java"


# static fields
.field public static final PluginType:I = 0x8


# virtual methods
.method public abstract close()V
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

.method public abstract getCameraCount()I
.end method

.method public abstract getCurCameraType()I
.end method

.method public abstract isMicMute()Z
.end method

.method public abstract playSoundEffect([B)V
.end method

.method public abstract setMicMute(Z)V
.end method

.method public abstract setStreamParams(Ljava/util/Hashtable;)V
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

.method public abstract startCapture()V
.end method

.method public abstract startPublish()V
.end method

.method public abstract stopCapture()V
.end method

.method public abstract stopPublish()V
.end method
