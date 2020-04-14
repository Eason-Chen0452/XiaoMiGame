.class final Lcom/xiaomi/gamecenter/sdk/utils/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "channel"

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ChannelPreference;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meng_100_1_android"

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->c:Ljava/lang/String;

    const-string v1, "meng_100_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/ChannelPreference;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/ChannelPreference;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
