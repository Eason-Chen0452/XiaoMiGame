.class public final enum Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTION_CANCEL:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

.field public static final enum ACTION_FAIL:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

.field public static final enum ACTION_NONE:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

.field public static final enum ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

.field private static final synthetic a:[Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    const-string v1, "ACTION_FAIL"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_FAIL:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    const-string v1, "ACTION_OK"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    const-string v1, "ACTION_CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_CANCEL:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    const-string v1, "ACTION_NONE"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_NONE:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_FAIL:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_CANCEL:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_NONE:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->a:[Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;
    .locals 1

    const-class v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->a:[Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-virtual {v0}, [Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    return-object v0
.end method
