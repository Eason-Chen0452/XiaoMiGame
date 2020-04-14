.class public Lcom/xiaomi/passport/uicontroller/PhoneLoginController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;

    invoke-direct {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;

    return-void
.end method
