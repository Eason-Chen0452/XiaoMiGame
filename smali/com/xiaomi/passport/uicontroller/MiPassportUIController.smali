.class public Lcom/xiaomi/passport/uicontroller/MiPassportUIController;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/xiaomi/passport/uicontroller/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/uicontroller/a;->a:Lcom/xiaomi/passport/uicontroller/a;

    sput-object v0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->d:Lcom/xiaomi/passport/uicontroller/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->c:Ljava/lang/String;

    return-void
.end method
