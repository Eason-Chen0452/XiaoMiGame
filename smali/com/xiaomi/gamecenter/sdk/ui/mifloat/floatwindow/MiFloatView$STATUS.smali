.class public final enum Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISABLE:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

.field public static final enum LEFT_HIDE:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

.field public static final enum NORMAL:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

.field public static final enum RIGHT_HIDE:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

.field private static final synthetic a:[Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->NORMAL:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    const-string v1, "DISABLE"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->DISABLE:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    const-string v1, "LEFT_HIDE"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->LEFT_HIDE:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    const-string v1, "RIGHT_HIDE"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->RIGHT_HIDE:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->NORMAL:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->DISABLE:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->LEFT_HIDE:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->RIGHT_HIDE:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->a:[Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;
    .locals 1

    const-class v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->a:[Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    invoke-virtual {v0}, [Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    return-object v0
.end method
