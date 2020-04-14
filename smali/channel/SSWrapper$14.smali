.class Lchannel/SSWrapper$14;
.super Ljava/lang/Object;
.source "SSWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchannel/SSWrapper;->onBackey()Z
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
    .line 228
    iput-object p1, p0, Lchannel/SSWrapper$14;->this$0:Lchannel/SSWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 231
    const-string v3, "\u60a8\u786e\u5b9a\u8981\u9000\u51fa\u6e38\u620f\u5417\uff1f"

    .line 232
    .local v3, "text":Ljava/lang/String;
    const-string v1, "\u786e\u5b9a"

    .line 233
    .local v1, "confirm":Ljava/lang/String;
    const-string v0, "\u53d6\u6d88"

    .line 234
    .local v0, "cancel":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lchannel/SSWrapper$14;->this$0:Lchannel/SSWrapper;

    iget-object v5, v5, Lchannel/SSWrapper;->activity_:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lchannel/SSWrapper$14$2;

    invoke-direct {v5, p0}, Lchannel/SSWrapper$14$2;-><init>(Lchannel/SSWrapper$14;)V

    .line 235
    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lchannel/SSWrapper$14$1;

    invoke-direct {v5, p0}, Lchannel/SSWrapper$14$1;-><init>(Lchannel/SSWrapper$14;)V

    .line 241
    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 246
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 247
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 248
    return-void
.end method
