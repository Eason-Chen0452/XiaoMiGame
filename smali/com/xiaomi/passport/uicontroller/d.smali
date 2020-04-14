.class public abstract Lcom/xiaomi/passport/uicontroller/d;
.super Lcom/xiaomi/accountsdk/futureservice/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelDataType:",
        "Ljava/lang/Object;",
        "UIDataType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/accountsdk/futureservice/a",
        "<TModelDataType;TUIDataType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/xiaomi/passport/uicontroller/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/d$a",
            "<TUIDataType;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/futureservice/a;-><init>(Lcom/xiaomi/accountsdk/futureservice/a$a;)V

    return-void
.end method


# virtual methods
.method protected final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelDataType;)TUIDataType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/uicontroller/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract c(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelDataType;)TUIDataType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
