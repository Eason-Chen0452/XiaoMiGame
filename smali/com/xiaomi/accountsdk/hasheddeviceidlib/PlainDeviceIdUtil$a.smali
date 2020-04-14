.class final Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$PlainDeviceIdUtilImplDefault;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$PlainDeviceIdUtilImplDefault;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$a;->a:Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$b;

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$b;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$a;->a:Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$b;

    return-object v0
.end method
