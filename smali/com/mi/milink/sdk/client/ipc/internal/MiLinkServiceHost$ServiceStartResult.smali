.class public final enum Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceStartResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

.field public static final enum NativeLoadFailed:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

.field public static final enum NativeUnzipFailed:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

.field public static final enum Success:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

.field public static final enum SystemError:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    const-string v1, "Success"

    invoke-direct {v0, v1, v2}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;->Success:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    new-instance v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    const-string v1, "SystemError"

    invoke-direct {v0, v1, v3}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;->SystemError:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    new-instance v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    const-string v1, "NativeUnzipFailed"

    invoke-direct {v0, v1, v4}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;->NativeUnzipFailed:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    new-instance v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    const-string v1, "NativeLoadFailed"

    invoke-direct {v0, v1, v5}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;->NativeLoadFailed:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    sget-object v1, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;->Success:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;->SystemError:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;->NativeUnzipFailed:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;->NativeLoadFailed:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;->$VALUES:[Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;
    .locals 1

    const-class v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    return-object v0
.end method

.method public static values()[Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;->$VALUES:[Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    invoke-virtual {v0}, [Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;

    return-object v0
.end method
