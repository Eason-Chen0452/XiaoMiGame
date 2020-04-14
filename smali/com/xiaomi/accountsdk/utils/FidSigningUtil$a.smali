.class final Lcom/xiaomi/accountsdk/utils/FidSigningUtil$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/utils/FidSigningUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/accountsdk/utils/FidSigningUtil$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignerImplDefault;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignerImplDefault;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$a;->a:Lcom/xiaomi/accountsdk/utils/FidSigningUtil$b;

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/accountsdk/utils/FidSigningUtil$b;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$a;->a:Lcom/xiaomi/accountsdk/utils/FidSigningUtil$b;

    return-object v0
.end method
