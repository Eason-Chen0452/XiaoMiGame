.class public final enum Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Count:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum Delete:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum DeleteAll:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum DeleteByKey:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum DeleteInTxArray:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum DeleteInTxIterable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum Insert:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertInTxArray:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertInTxIterable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertOrReplace:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertOrReplaceInTxArray:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertOrReplaceInTxIterable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum Load:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum LoadAll:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum QueryList:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum QueryUnique:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum Refresh:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum TransactionCallable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum TransactionRunnable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum Update:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum UpdateInTxArray:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field public static final enum UpdateInTxIterable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field private static final synthetic a:[Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Insert"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->Insert:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertInTxIterable"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->InsertInTxIterable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertInTxArray"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->InsertInTxArray:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertOrReplace"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->InsertOrReplace:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertOrReplaceInTxIterable"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxIterable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertOrReplaceInTxArray"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxArray:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Update"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->Update:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "UpdateInTxIterable"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->UpdateInTxIterable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "UpdateInTxArray"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->UpdateInTxArray:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Delete"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->Delete:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteInTxIterable"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->DeleteInTxIterable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteInTxArray"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->DeleteInTxArray:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteByKey"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->DeleteByKey:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteAll"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->DeleteAll:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "TransactionRunnable"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->TransactionRunnable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "TransactionCallable"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->TransactionCallable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "QueryList"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->QueryList:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "QueryUnique"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->QueryUnique:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Load"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->Load:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "LoadAll"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->LoadAll:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Count"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->Count:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Refresh"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->Refresh:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    sget-object v1, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->Insert:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->InsertInTxIterable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->InsertInTxArray:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->InsertOrReplace:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxIterable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxArray:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->Update:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->UpdateInTxIterable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->UpdateInTxArray:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->Delete:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->DeleteInTxIterable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->DeleteInTxArray:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->DeleteByKey:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->DeleteAll:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->TransactionRunnable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->TransactionCallable:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->QueryList:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->QueryUnique:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->Load:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->LoadAll:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->Count:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->Refresh:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->a:[Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;
    .locals 1

    const-class v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;
    .locals 1

    sget-object v0, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->a:[Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    invoke-virtual {v0}, [Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    return-object v0
.end method
