.class public Lcom/xiaomi/passport/data/LoginPreference;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/data/LoginPreference;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/passport/data/LoginPreference;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/data/LoginPreference;->c:Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    return-void
.end method
