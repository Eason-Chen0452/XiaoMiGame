.class public Lcom/aonesoft/lib/AoneJni;
.super Ljava/lang/Object;
.source "AoneJni.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeInit(Lcom/aonesoft/lib/AoneResultListener;)V
.end method

.method public static native nativeInitForNative(Lcom/aonesoft/lib/AoneNativeListener;)V
.end method

.method public static native nativeLoadSdk()V
.end method

.method public static native nativeLogin(Lcom/aonesoft/lib/AoneResultListener;)V
.end method

.method public static native nativeLoginForNative(Lcom/aonesoft/lib/AoneNativeListener;)V
.end method

.method public static native nativePay(Ljava/util/Hashtable;Lcom/aonesoft/lib/AoneResultListener;)V
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
.end method

.method public static native nativePayForNative(Ljava/util/Hashtable;Lcom/aonesoft/lib/AoneNativeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aonesoft/lib/AoneNativeListener;",
            ")V"
        }
    .end annotation
.end method

.method public static native nativeSetJavaVM()V
.end method

.method public static native nativeSetOAuthType(Ljava/lang/String;)V
.end method

.method public static native nativeSetPayChannel(Ljava/lang/String;)V
.end method
