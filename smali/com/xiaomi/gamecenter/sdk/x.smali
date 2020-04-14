.class final Lcom/xiaomi/gamecenter/sdk/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/v;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/v;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/x;->a:Lcom/xiaomi/gamecenter/sdk/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
