.class public Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->d:Z

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->e:Z

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->c:Ljava/lang/String;

    return-void
.end method
