.class Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4$1;
.super Ljava/lang/Object;
.source "AoneUpdateWithAppVersion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4;

.field private final synthetic val$updateType:I


# direct methods
.method constructor <init>(Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4$1;->this$1:Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4;

    iput p2, p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4$1;->val$updateType:I

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeUpdateCallback()V

    .line 150
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$3()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 151
    iget v0, p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4$1;->val$updateType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 152
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$3()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget v0, p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4$1;->val$updateType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 154
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$3()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 155
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 156
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
