.class public Lcom/xiaomi/passport/PassportUserEnvironment$Holder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/PassportUserEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/passport/PassportUserEnvironment;

.field private static b:Lcom/xiaomi/passport/PassportUserEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/PassportUserEnvironment;

    invoke-direct {v0}, Lcom/xiaomi/passport/PassportUserEnvironment;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$Holder;->a:Lcom/xiaomi/passport/PassportUserEnvironment;

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$Holder;->b:Lcom/xiaomi/passport/PassportUserEnvironment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
