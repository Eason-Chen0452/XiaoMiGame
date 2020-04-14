.class Lchannel/SSWrapper$16;
.super Ljava/lang/Object;
.source "SSWrapper.java"

# interfaces
.implements Lchannel/SSWrapper$PurchaseDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchannel/SSWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lchannel/SSWrapper;


# direct methods
.method constructor <init>(Lchannel/SSWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lchannel/SSWrapper;

    .prologue
    .line 270
    iput-object p1, p0, Lchannel/SSWrapper$16;->this$0:Lchannel/SSWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 276
    :try_start_0
    const-string v2, "purchase_callback"

    invoke-static {v2, p1}, Lchannel/Opensdk;->JsonWithInfo(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 278
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 279
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Purchase Failed, code = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 279
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 283
    :cond_0
    iget-object v2, p0, Lchannel/SSWrapper$16;->this$0:Lchannel/SSWrapper;

    invoke-virtual {v2, p1, v1}, Lchannel/SSWrapper;->tgPurchaseCallback(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
