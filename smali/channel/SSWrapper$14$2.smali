.class Lchannel/SSWrapper$14$2;
.super Ljava/lang/Object;
.source "SSWrapper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchannel/SSWrapper$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lchannel/SSWrapper$14;


# direct methods
.method constructor <init>(Lchannel/SSWrapper$14;)V
    .locals 0
    .param p1, "this$1"    # Lchannel/SSWrapper$14;

    .prologue
    .line 235
    iput-object p1, p0, Lchannel/SSWrapper$14$2;->this$1:Lchannel/SSWrapper$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lchannel/SSWrapper$14$2;->this$1:Lchannel/SSWrapper$14;

    iget-object v0, v0, Lchannel/SSWrapper$14;->this$0:Lchannel/SSWrapper;

    invoke-virtual {v0}, Lchannel/SSWrapper;->onExit()V

    .line 239
    return-void
.end method
