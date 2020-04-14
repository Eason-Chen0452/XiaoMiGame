.class public Lcom/aonesoft/lib/AoneDeepLink;
.super Ljava/lang/Object;
.source "AoneDeepLink.java"


# static fields
.field private static isGeted:Z

.field private static mData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, ""

    sput-object v0, Lcom/aonesoft/lib/AoneDeepLink;->mData:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aonesoft/lib/AoneDeepLink;->isGeted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeepLinkData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    const-string v0, "AoneDeepLink"

    sget-object v1, Lcom/aonesoft/lib/AoneDeepLink;->mData:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-boolean v0, Lcom/aonesoft/lib/AoneDeepLink;->isGeted:Z

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aonesoft/lib/AoneDeepLink;->isGeted:Z

    .line 26
    sget-object v0, Lcom/aonesoft/lib/AoneDeepLink;->mData:Ljava/lang/String;

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 12
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "AoneDeepLink==onNewIntent"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    const/4 v1, 0x1

    sput-boolean v1, Lcom/aonesoft/lib/AoneDeepLink;->isGeted:Z

    .line 16
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/aonesoft/lib/AoneDeepLink;->mData:Ljava/lang/String;

    .line 18
    const-string v1, "AoneDeepLink===onNewIntent"

    sget-object v2, Lcom/aonesoft/lib/AoneDeepLink;->mData:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    return-void
.end method
