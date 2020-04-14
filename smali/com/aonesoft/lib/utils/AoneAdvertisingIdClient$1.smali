.class Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$1;
.super Ljava/lang/Object;
.source "AoneAdvertisingIdClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient;->initAdId(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$1;->val$context:Landroid/content/Context;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 146
    .local v0, "adInfo":Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdInfo;
    invoke-virtual {v0}, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient;->access$0(Ljava/lang/String;)V

    .line 147
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adInfo.getId2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "adInfo":Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdInfo;
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
