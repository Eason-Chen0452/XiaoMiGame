.class public final enum Lcom/wali/gamecenter/report/ReportType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wali/gamecenter/report/ReportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wali/gamecenter/report/ReportType;

.field public static final enum BBS:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum BIND:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum COUPON:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum CUSTOM:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum DOWNLOAD:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum FLOATWIN:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum H5GAME:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum HTTP:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum JARCRASH:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum LINK:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum LOGIN:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum MESS:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum MILINK:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum PAY:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum PAYRESULT:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum SDKPUSH:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum SPEEDUP:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum STATISTICS:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum STRATEGY:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum UPDATE:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum VIEW:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum WEBVIEW:Lcom/wali/gamecenter/report/ReportType;

.field public static final enum WXAPPPAY:Lcom/wali/gamecenter/report/ReportType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "STATISTICS"

    invoke-direct {v0, v1, v3}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->STATISTICS:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v4}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->DOWNLOAD:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v5}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->HTTP:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "H5GAME"

    invoke-direct {v0, v1, v6}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->H5GAME:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "VIEW"

    invoke-direct {v0, v1, v7}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->VIEW:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "LOGIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->LOGIN:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "PAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->PAY:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "MESS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->MESS:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "LINK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->LINK:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "UPDATE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->UPDATE:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "FLOATWIN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->FLOATWIN:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "CUSTOM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->CUSTOM:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "BBS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->BBS:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "STRATEGY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->STRATEGY:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "COUPON"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->COUPON:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "WEBVIEW"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->WEBVIEW:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "PAYRESULT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->PAYRESULT:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "SPEEDUP"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->SPEEDUP:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "JARCRASH"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->JARCRASH:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "BIND"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->BIND:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "SDKPUSH"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->SDKPUSH:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "WXAPPPAY"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->WXAPPPAY:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Lcom/wali/gamecenter/report/ReportType;

    const-string v1, "MILINK"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/wali/gamecenter/report/ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->MILINK:Lcom/wali/gamecenter/report/ReportType;

    const/16 v0, 0x17

    new-array v0, v0, [Lcom/wali/gamecenter/report/ReportType;

    sget-object v1, Lcom/wali/gamecenter/report/ReportType;->STATISTICS:Lcom/wali/gamecenter/report/ReportType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wali/gamecenter/report/ReportType;->DOWNLOAD:Lcom/wali/gamecenter/report/ReportType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wali/gamecenter/report/ReportType;->HTTP:Lcom/wali/gamecenter/report/ReportType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wali/gamecenter/report/ReportType;->H5GAME:Lcom/wali/gamecenter/report/ReportType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wali/gamecenter/report/ReportType;->VIEW:Lcom/wali/gamecenter/report/ReportType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->LOGIN:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->PAY:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->MESS:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->LINK:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->UPDATE:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->FLOATWIN:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->CUSTOM:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->BBS:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->STRATEGY:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->COUPON:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->WEBVIEW:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->PAYRESULT:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->SPEEDUP:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->JARCRASH:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->BIND:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->SDKPUSH:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->WXAPPPAY:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->MILINK:Lcom/wali/gamecenter/report/ReportType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wali/gamecenter/report/ReportType;->$VALUES:[Lcom/wali/gamecenter/report/ReportType;

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

.method public static fromInt(I)Lcom/wali/gamecenter/report/ReportType;
    .locals 3

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->STATISTICS:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->STATISTICS:Lcom/wali/gamecenter/report/ReportType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->DOWNLOAD:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->DOWNLOAD:Lcom/wali/gamecenter/report/ReportType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->HTTP:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->HTTP:Lcom/wali/gamecenter/report/ReportType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->H5GAME:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->H5GAME:Lcom/wali/gamecenter/report/ReportType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->VIEW:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_4

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->VIEW:Lcom/wali/gamecenter/report/ReportType;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->LOGIN:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_5

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->LOGIN:Lcom/wali/gamecenter/report/ReportType;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->PAY:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_6

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->PAY:Lcom/wali/gamecenter/report/ReportType;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->MESS:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_7

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->MESS:Lcom/wali/gamecenter/report/ReportType;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->LINK:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_8

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->LINK:Lcom/wali/gamecenter/report/ReportType;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->UPDATE:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_9

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->UPDATE:Lcom/wali/gamecenter/report/ReportType;

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->FLOATWIN:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_a

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->FLOATWIN:Lcom/wali/gamecenter/report/ReportType;

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->CUSTOM:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_b

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->CUSTOM:Lcom/wali/gamecenter/report/ReportType;

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->LOGIN:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_c

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->LOGIN:Lcom/wali/gamecenter/report/ReportType;

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->BBS:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_d

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->BBS:Lcom/wali/gamecenter/report/ReportType;

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->STRATEGY:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_e

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->STRATEGY:Lcom/wali/gamecenter/report/ReportType;

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->COUPON:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_f

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->COUPON:Lcom/wali/gamecenter/report/ReportType;

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->WEBVIEW:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_10

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->WEBVIEW:Lcom/wali/gamecenter/report/ReportType;

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->PAYRESULT:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_11

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->PAYRESULT:Lcom/wali/gamecenter/report/ReportType;

    goto/16 :goto_0

    :cond_11
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->SPEEDUP:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_12

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->SPEEDUP:Lcom/wali/gamecenter/report/ReportType;

    goto/16 :goto_0

    :cond_12
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->JARCRASH:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_13

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->JARCRASH:Lcom/wali/gamecenter/report/ReportType;

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->BIND:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_14

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->BIND:Lcom/wali/gamecenter/report/ReportType;

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->SDKPUSH:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_15

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->SDKPUSH:Lcom/wali/gamecenter/report/ReportType;

    goto/16 :goto_0

    :cond_15
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->WXAPPPAY:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_16

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->WXAPPPAY:Lcom/wali/gamecenter/report/ReportType;

    goto/16 :goto_0

    :cond_16
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->MILINK:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_17

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->MILINK:Lcom/wali/gamecenter/report/ReportType;

    goto/16 :goto_0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Create ReportType Illegal value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReportType;
    .locals 1

    const-class v0, Lcom/wali/gamecenter/report/ReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wali/gamecenter/report/ReportType;

    return-object v0
.end method

.method public static values()[Lcom/wali/gamecenter/report/ReportType;
    .locals 1

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->$VALUES:[Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, [Lcom/wali/gamecenter/report/ReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wali/gamecenter/report/ReportType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->DOWNLOAD:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_0

    const-string v0, "download"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->HTTP:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_1

    const-string v0, "http"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->H5GAME:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_2

    const-string v0, "h5game"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->VIEW:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_3

    const-string v0, "view"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->LOGIN:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_4

    const-string v0, "login"

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->PAY:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_5

    const-string v0, "pay"

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->MESS:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_6

    const-string v0, "mess"

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->LINK:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_7

    const-string v0, "link"

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->UPDATE:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_8

    const-string v0, "update"

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->FLOATWIN:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_9

    const-string v0, "floatwin"

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->CUSTOM:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_a

    const-string v0, "custom"

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->BBS:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_b

    const-string v0, "bbs"

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->STRATEGY:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_c

    const-string v0, "strategy"

    goto :goto_0

    :cond_c
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->COUPON:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_d

    const-string v0, "coupon"

    goto :goto_0

    :cond_d
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->WEBVIEW:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_e

    const-string v0, "webview"

    goto :goto_0

    :cond_e
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->PAYRESULT:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_f

    const-string v0, "payresult"

    goto :goto_0

    :cond_f
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->SPEEDUP:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_10

    const-string v0, "speedup"

    goto :goto_0

    :cond_10
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->JARCRASH:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_11

    const-string v0, "jarcrash"

    goto :goto_0

    :cond_11
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->BIND:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_12

    const-string v0, "bind"

    goto :goto_0

    :cond_12
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->SDKPUSH:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_13

    const-string v0, "sdkpush"

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->WXAPPPAY:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_14

    const-string v0, "wxapppay"

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->MILINK:Lcom/wali/gamecenter/report/ReportType;

    if-ne p0, v0, :cond_15

    const-string v0, "milink"

    goto/16 :goto_0

    :cond_15
    const-string v0, "statistics"

    goto/16 :goto_0
.end method
