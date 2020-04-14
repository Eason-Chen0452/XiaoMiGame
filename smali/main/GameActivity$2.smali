.class Lmain/GameActivity$2;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmain/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmain/GameActivity;


# direct methods
.method constructor <init>(Lmain/GameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lmain/GameActivity;

    .prologue
    .line 160
    iput-object p1, p0, Lmain/GameActivity$2;->this$0:Lmain/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 164
    iget-object v0, p0, Lmain/GameActivity$2;->this$0:Lmain/GameActivity;

    invoke-virtual {v0, p2, p3}, Lmain/GameActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
