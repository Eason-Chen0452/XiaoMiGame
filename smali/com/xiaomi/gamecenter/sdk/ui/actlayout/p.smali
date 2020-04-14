.class final Lcom/xiaomi/gamecenter/sdk/ui/actlayout/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/p;->b:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/p;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/p;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
