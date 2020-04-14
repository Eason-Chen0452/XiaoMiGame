.class public final Lcom/xiaomi/gamecenter/sdk/utils/process/ProcessManager$ProcessComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/utils/process/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/utils/process/AndroidProcess;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/xiaomi/gamecenter/sdk/utils/process/AndroidProcess;

    check-cast p2, Lcom/xiaomi/gamecenter/sdk/utils/process/AndroidProcess;

    iget-object v0, p1, Lcom/xiaomi/gamecenter/sdk/utils/process/AndroidProcess;->c:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaomi/gamecenter/sdk/utils/process/AndroidProcess;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
