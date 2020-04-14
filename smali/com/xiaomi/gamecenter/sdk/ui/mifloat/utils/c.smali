.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/c;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequest_MiFloatMenuConfig;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/c;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequest_MiFloatMenuConfig;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequest_MiFloatMenuConfig;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MiGameSDK.MiFloatHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
