.class public final enum Lcom/xiaomi/gamecenter/sdk/utils/AccountType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/utils/AccountType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AccountType_CANCEL:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

.field public static final enum AccountType_LOCAL:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

.field public static final enum AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

.field public static final enum AccountType_MITALK:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

.field public static final enum AccountType_NOACCOUNT:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

.field public static final enum AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

.field public static final enum AccountType_WB:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

.field public static final enum AccountType_WX:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

.field public static final enum AccountType_XIAOMIClOUD:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

.field private static final synthetic a:[Lcom/xiaomi/gamecenter/sdk/utils/AccountType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    const-string v1, "AccountType_NOACCOUNT"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_NOACCOUNT:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    const-string v1, "AccountType_XIAOMIClOUD"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_XIAOMIClOUD:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    const-string v1, "AccountType_MITALK"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MITALK:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    const-string v1, "AccountType_LOCAL"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_LOCAL:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    const-string v1, "AccountType_MI"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    const-string v1, "AccountType_WX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_WX:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    const-string v1, "AccountType_QQ"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    const-string v1, "AccountType_WB"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_WB:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    const-string v1, "AccountType_CANCEL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_CANCEL:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_NOACCOUNT:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_XIAOMIClOUD:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MITALK:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_LOCAL:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_WX:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_WB:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_CANCEL:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->a:[Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_XIAOMIClOUD:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_XIAOMIClOUD:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MITALK:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MITALK:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_NOACCOUNT:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_NOACCOUNT:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_LOCAL:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_3

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_LOCAL:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_4

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_WX:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_5

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_WX:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_6

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_WB:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_7

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_WB:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_CANCEL:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_8

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_CANCEL:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_XIAOMIClOUD:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;
    .locals 1

    const-class v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/gamecenter/sdk/utils/AccountType;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->a:[Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0}, [Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    return-object v0
.end method
