.class public Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->b:Z

    return-void
.end method
