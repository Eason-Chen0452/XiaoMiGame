.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;


# direct methods
.method private constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jar.mifloat.message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "broadcast_type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "broadcast_messgae"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/String;

    invoke-static {v2}, Lcn/com/wali/basetool/utils/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    :goto_1
    const-string v2, "MiGameSDK.SDKMessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "type:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff0cmessage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v0, :cond_3

    :try_start_0
    new-instance v2, Lcom/xiaomi/gson/Gson;

    invoke-direct {v2}, Lcom/xiaomi/gson/Gson;-><init>()V

    const-class v3, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;

    invoke-virtual {v2, v0, v3}, Lcom/xiaomi/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Lcom/xiaomi/gson/internal/ai;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;)V

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "redpoint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_1
    const-string v4, "marquee_message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_2
    const-string v4, "point_marquee_message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_3
    const-string v4, "page_close"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_4
    const-string v4, "page_open"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_5
    const-string v4, "account_error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x5

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "MiGameSDK.SDKMessageManager"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;->a()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;->b()V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2de1b061 -> :sswitch_0
        -0x2022568a -> :sswitch_5
        0x25324cea -> :sswitch_1
        0x2af4d83b -> :sswitch_2
        0x34acbdfa -> :sswitch_4
        0x60403c48 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
