.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->e:Z

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;-><init>()V

    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->b:Ljava/lang/String;

    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->a:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->c:I

    const-string v1, "actUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->d:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->e:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->e:Z

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->c:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->d:Ljava/lang/String;

    return-object v0
.end method
