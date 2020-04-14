.class public Lcom/xiaomi/account/data/PassportCAToken;
.super Ljava/lang/Object;


# static fields
.field public static c:Lcom/xiaomi/account/data/PassportCAToken;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/account/data/PassportCAToken;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/account/data/PassportCAToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/account/data/PassportCAToken;->c:Lcom/xiaomi/account/data/PassportCAToken;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/account/data/PassportCAToken;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/account/data/PassportCAToken;->b:Ljava/lang/String;

    return-void
.end method
