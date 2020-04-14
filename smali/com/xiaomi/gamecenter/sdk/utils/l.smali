.class final Lcom/xiaomi/gamecenter/sdk/utils/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/utils/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/utils/l;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/SdkPreferenceUtils;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/l;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
