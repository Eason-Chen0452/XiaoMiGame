.class final Lcom/xiaomi/gamecenter/sdk/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/utils/n$a;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/m;->d:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/m;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/m;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/m;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/m;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/m;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->MIGAME:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->getNumber()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/m;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/m;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/m;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->MIGAME:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->getNumber()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/m;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
