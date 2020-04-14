.class Lcom/aonesoft/lib/GlobalScreenshot$2;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/GlobalScreenshot;->takeScreenshot(Landroid/view/View;Ljava/lang/Runnable;ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aonesoft/lib/GlobalScreenshot;

.field private final synthetic val$finisher:Ljava/lang/Runnable;

.field private final synthetic val$navBarVisible:Z

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$statusBarVisible:Z


# direct methods
.method constructor <init>(Lcom/aonesoft/lib/GlobalScreenshot;Ljava/lang/Runnable;ZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/GlobalScreenshot$2;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    iput-object p2, p0, Lcom/aonesoft/lib/GlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/aonesoft/lib/GlobalScreenshot$2;->val$statusBarVisible:Z

    iput-boolean p4, p0, Lcom/aonesoft/lib/GlobalScreenshot$2;->val$navBarVisible:Z

    iput-object p5, p0, Lcom/aonesoft/lib/GlobalScreenshot$2;->val$path:Ljava/lang/String;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 168
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$2;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    iget-object v1, p0, Lcom/aonesoft/lib/GlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot$2;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v2}, Lcom/aonesoft/lib/GlobalScreenshot;->access$0(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/aonesoft/lib/GlobalScreenshot$2;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v3}, Lcom/aonesoft/lib/GlobalScreenshot;->access$0(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 169
    iget-boolean v4, p0, Lcom/aonesoft/lib/GlobalScreenshot$2;->val$statusBarVisible:Z

    iget-boolean v5, p0, Lcom/aonesoft/lib/GlobalScreenshot$2;->val$navBarVisible:Z

    iget-object v6, p0, Lcom/aonesoft/lib/GlobalScreenshot$2;->val$path:Ljava/lang/String;

    .line 168
    invoke-static/range {v0 .. v6}, Lcom/aonesoft/lib/GlobalScreenshot;->access$1(Lcom/aonesoft/lib/GlobalScreenshot;Ljava/lang/Runnable;IIZZLjava/lang/String;)V

    .line 170
    return-void
.end method
