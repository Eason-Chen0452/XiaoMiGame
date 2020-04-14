.class public final enum Lcom/mi/milink/sdk/base/os/info/AccessPoint;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/milink/sdk/base/os/info/AccessPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/milink/sdk/base/os/info/AccessPoint;

.field private static ACCESS_POINT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/milink/sdk/base/os/info/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CMNET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

.field public static final enum CMWAP:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

.field public static final enum CTLTE:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

.field public static final enum CTNET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

.field public static final enum CTWAP:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

.field public static final enum NEVER_HEARD:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

.field public static final enum NONE:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

.field public static final enum SHARP777:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

.field public static final enum UNINET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

.field public static final enum UNIWAP:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

.field public static final enum WONET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

.field public static final enum _3GNET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

.field public static final enum _3GWAP:Lcom/mi/milink/sdk/base/os/info/AccessPoint;


# instance fields
.field private name:Ljava/lang/String;

.field private provider:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

.field private wap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    const-string v1, "NONE"

    const-string v3, ""

    sget-object v4, Lcom/mi/milink/sdk/base/os/info/ServiceProvider;->NONE:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mi/milink/sdk/base/os/info/ServiceProvider;Z)V

    sput-object v0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->NONE:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    new-instance v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    const-string v4, "NEVER_HEARD"

    const-string v6, "I don\'t know"

    sget-object v7, Lcom/mi/milink/sdk/base/os/info/ServiceProvider;->NEVER_HEARD:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    move v5, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mi/milink/sdk/base/os/info/ServiceProvider;Z)V

    sput-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->NEVER_HEARD:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    new-instance v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    const-string v4, "CMNET"

    const-string v6, "cmnet"

    sget-object v7, Lcom/mi/milink/sdk/base/os/info/ServiceProvider;->CHINA_MOBILE:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    move v5, v10

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mi/milink/sdk/base/os/info/ServiceProvider;Z)V

    sput-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->CMNET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    new-instance v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    const-string v4, "CMWAP"

    const-string v6, "cmwap"

    sget-object v7, Lcom/mi/milink/sdk/base/os/info/ServiceProvider;->CHINA_MOBILE:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    move v5, v11

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mi/milink/sdk/base/os/info/ServiceProvider;Z)V

    sput-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->CMWAP:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    new-instance v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    const-string v4, "UNINET"

    const-string v6, "uninet"

    sget-object v7, Lcom/mi/milink/sdk/base/os/info/ServiceProvider;->CHINA_UNICOM:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    move v5, v12

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mi/milink/sdk/base/os/info/ServiceProvider;Z)V

    sput-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->UNINET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    new-instance v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    const-string v4, "UNIWAP"

    const/4 v5, 0x5

    const-string v6, "uniwap"

    sget-object v7, Lcom/mi/milink/sdk/base/os/info/ServiceProvider;->CHINA_UNICOM:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mi/milink/sdk/base/os/info/ServiceProvider;Z)V

    sput-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->UNIWAP:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    new-instance v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    const-string v4, "_3GNET"

    const/4 v5, 0x6

    const-string v6, "3gnet"

    sget-object v7, Lcom/mi/milink/sdk/base/os/info/ServiceProvider;->CHINA_UNICOM:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mi/milink/sdk/base/os/info/ServiceProvider;Z)V

    sput-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->_3GNET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    new-instance v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    const-string v4, "_3GWAP"

    const/4 v5, 0x7

    const-string v6, "3gwap"

    sget-object v7, Lcom/mi/milink/sdk/base/os/info/ServiceProvider;->CHINA_UNICOM:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mi/milink/sdk/base/os/info/ServiceProvider;Z)V

    sput-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->_3GWAP:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    new-instance v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    const-string v4, "WONET"

    const/16 v5, 0x8

    const-string v6, "wonet"

    sget-object v7, Lcom/mi/milink/sdk/base/os/info/ServiceProvider;->CHINA_UNICOM:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mi/milink/sdk/base/os/info/ServiceProvider;Z)V

    sput-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->WONET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    new-instance v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    const-string v4, "CTNET"

    const/16 v5, 0x9

    const-string v6, "ctnet"

    sget-object v7, Lcom/mi/milink/sdk/base/os/info/ServiceProvider;->CHINA_TELECOM:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mi/milink/sdk/base/os/info/ServiceProvider;Z)V

    sput-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->CTNET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    new-instance v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    const-string v4, "CTWAP"

    const/16 v5, 0xa

    const-string v6, "ctwap"

    sget-object v7, Lcom/mi/milink/sdk/base/os/info/ServiceProvider;->CHINA_TELECOM:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mi/milink/sdk/base/os/info/ServiceProvider;Z)V

    sput-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->CTWAP:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    new-instance v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    const-string v4, "CTLTE"

    const/16 v5, 0xb

    const-string v6, "ctlte"

    sget-object v7, Lcom/mi/milink/sdk/base/os/info/ServiceProvider;->CHINA_TELECOM:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mi/milink/sdk/base/os/info/ServiceProvider;Z)V

    sput-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->CTLTE:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    new-instance v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    const-string v4, "SHARP777"

    const/16 v5, 0xc

    const-string v6, "#777"

    sget-object v7, Lcom/mi/milink/sdk/base/os/info/ServiceProvider;->CHINA_TELECOM:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mi/milink/sdk/base/os/info/ServiceProvider;Z)V

    sput-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->SHARP777:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    sget-object v1, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->NONE:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->NEVER_HEARD:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    aput-object v1, v0, v9

    sget-object v1, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->CMNET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    aput-object v1, v0, v10

    sget-object v1, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->CMWAP:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    aput-object v1, v0, v11

    sget-object v1, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->UNINET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->UNIWAP:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    sget-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->_3GNET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    sget-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->_3GWAP:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    sget-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->WONET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    aput-object v3, v0, v1

    const/16 v1, 0x9

    sget-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->CTNET:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    aput-object v3, v0, v1

    const/16 v1, 0xa

    sget-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->CTWAP:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    aput-object v3, v0, v1

    const/16 v1, 0xb

    sget-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->CTLTE:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    aput-object v3, v0, v1

    const/16 v1, 0xc

    sget-object v3, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->SHARP777:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    aput-object v3, v0, v1

    sput-object v0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->$VALUES:[Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->ACCESS_POINT_MAP:Ljava/util/HashMap;

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->values()[Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->ACCESS_POINT_MAP:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/mi/milink/sdk/base/os/info/ServiceProvider;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mi/milink/sdk/base/os/info/ServiceProvider;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p3}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->setProvider(Lcom/mi/milink/sdk/base/os/info/ServiceProvider;)V

    invoke-virtual {p0, p5}, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->setWap(Z)V

    return-void
.end method

.method public static forName(Ljava/lang/String;)Lcom/mi/milink/sdk/base/os/info/AccessPoint;
    .locals 2

    if-nez p0, :cond_1

    sget-object v0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->NONE:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->ACCESS_POINT_MAP:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->NEVER_HEARD:Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/milink/sdk/base/os/info/AccessPoint;
    .locals 1

    const-class v0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    return-object v0
.end method

.method public static values()[Lcom/mi/milink/sdk/base/os/info/AccessPoint;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->$VALUES:[Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    invoke-virtual {v0}, [Lcom/mi/milink/sdk/base/os/info/AccessPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/milink/sdk/base/os/info/AccessPoint;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Lcom/mi/milink/sdk/base/os/info/ServiceProvider;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->provider:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    return-object v0
.end method

.method public final isWap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->wap:Z

    return v0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->name:Ljava/lang/String;

    return-void
.end method

.method public final setProvider(Lcom/mi/milink/sdk/base/os/info/ServiceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->provider:Lcom/mi/milink/sdk/base/os/info/ServiceProvider;

    return-void
.end method

.method public final setWap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/base/os/info/AccessPoint;->wap:Z

    return-void
.end method
