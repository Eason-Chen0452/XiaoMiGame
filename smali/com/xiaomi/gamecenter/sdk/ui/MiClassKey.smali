.class public final Lcom/xiaomi/gamecenter/sdk/ui/MiClassKey;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "classKey"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/MiClassKey;->a:Ljava/lang/String;

    const-string v0, "loginselectaccount"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/MiClassKey;->b:Ljava/lang/String;

    const-string v0, "loginaccount"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/MiClassKey;->d:Ljava/lang/String;

    const-string v0, "loginselectmethod"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/MiClassKey;->c:Ljava/lang/String;

    const-string v0, "logindownloadservice"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/MiClassKey;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
