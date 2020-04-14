.class public interface abstract Lorg/cocos2dx/plugin/InterfacePlayer;
.super Ljava/lang/Object;
.source "InterfacePlayer.java"


# static fields
.field public static final PluginType:I = 0x9


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

.method public abstract playSoundEffect([B)V
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

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
