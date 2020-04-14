.class public Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/xiaomi/accountsdk/account/data/PassportInfo;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/xiaomi/accountsdk/account/data/MiuiActivatorInfo;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->b(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Lcom/xiaomi/accountsdk/account/data/PassportInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->b:Lcom/xiaomi/accountsdk/account/data/PassportInfo;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->c(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->d(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->e(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->f(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->g(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->h(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Lcom/xiaomi/accountsdk/account/data/MiuiActivatorInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->h:Lcom/xiaomi/accountsdk/account/data/MiuiActivatorInfo;

    return-void
.end method
