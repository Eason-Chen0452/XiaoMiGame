.class final Lcom/xiaomi/gamecenter/sdk/ui/actlayout/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/i;->b:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/i;->b:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/i;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;I)V

    return-void
.end method
