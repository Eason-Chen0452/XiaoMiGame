.class public Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;,
        Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$a;,
        Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$a;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/MiClassKey;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isDialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action_request"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "action_bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor;->a:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$a;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;)V

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
