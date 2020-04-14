.class public Lindi/cputils/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 11
    sput-object p0, Lindi/cputils/Helper;->sContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1}, Lindi/cputils/Helper;->SetAssetsMgr(Landroid/content/res/AssetManager;)V

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lindi/cputils/Helper;->SetWritablePath(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "externalPath":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    :goto_0
    invoke-static {v0}, Lindi/cputils/Helper;->SetExternalWritablePath(Ljava/lang/String;)V

    .line 22
    return-void

    .line 19
    :cond_0
    const-string v1, "cputils"

    const-string v2, "not hava external path, use internal path"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static native SetAssetsMgr(Landroid/content/res/AssetManager;)V
.end method

.method public static native SetExternalWritablePath(Ljava/lang/String;)V
.end method

.method public static native SetWritablePath(Ljava/lang/String;)V
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lindi/cputils/Helper;->sContext:Landroid/content/Context;

    return-object v0
.end method
