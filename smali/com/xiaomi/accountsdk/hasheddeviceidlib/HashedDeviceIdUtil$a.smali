.class public final Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

.field private static final c:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;


# instance fields
.field private b:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;->RUNTIME_DEVICE_ID_ONLY:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    sput-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;->a:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;->c:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;->a:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;->b:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;)Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;->b:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    return-object v0
.end method

.method public static a()Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;->c:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;

    return-object v0
.end method
