.class Lcom/aonesoft/lib/AoneUpdateWithAppVersion$1$1;
.super Ljava/lang/Object;
.source "AoneUpdateWithAppVersion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/AoneUpdateWithAppVersion$1;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aonesoft/lib/AoneUpdateWithAppVersion$1;


# direct methods
.method constructor <init>(Lcom/aonesoft/lib/AoneUpdateWithAppVersion$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$1$1;->this$1:Lcom/aonesoft/lib/AoneUpdateWithAppVersion$1;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeAnnounceCallback()V

    .line 236
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$0()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 237
    return-void
.end method
