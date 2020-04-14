.class Lcom/aonesoft/lib/AoneOpenUrl$2;
.super Ljava/lang/Object;
.source "AoneOpenUrl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/AoneOpenUrl;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aonesoft/lib/AoneOpenUrl;


# direct methods
.method constructor <init>(Lcom/aonesoft/lib/AoneOpenUrl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/AoneOpenUrl$2;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/aonesoft/lib/AoneOpenUrl$2;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-virtual {v0}, Lcom/aonesoft/lib/AoneOpenUrl;->finish()V

    .line 70
    return-void
.end method
