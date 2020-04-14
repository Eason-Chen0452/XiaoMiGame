.class Lmain/GameExt$1$1;
.super Ljava/lang/Object;
.source "GameExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmain/GameExt$1;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmain/GameExt$1;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmain/GameExt$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lmain/GameExt$1;

    .prologue
    .line 41
    iput-object p1, p0, Lmain/GameExt$1$1;->this$0:Lmain/GameExt$1;

    iput-object p2, p0, Lmain/GameExt$1$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmain/GameExt$1$1;->val$url:Ljava/lang/String;

    invoke-static {v0}, Lmain/GameExt;->openUrl(Ljava/lang/String;)V

    .line 45
    return-void
.end method
