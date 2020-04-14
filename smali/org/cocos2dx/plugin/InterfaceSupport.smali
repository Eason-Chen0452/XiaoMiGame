.class public interface abstract Lorg/cocos2dx/plugin/InterfaceSupport;
.super Ljava/lang/Object;
.source "InterfaceSupport.java"


# static fields
.field public static final PluginType:I = 0xb


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

.method public abstract setUserIdentifier(Ljava/lang/String;)V
.end method

.method public abstract setUserName(Ljava/lang/String;)V
.end method

.method public abstract showConversation()V
.end method

.method public abstract showFAQS()V
.end method
