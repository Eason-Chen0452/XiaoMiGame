.class public Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/NotificationWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalParams"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->b:Z

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->d:Ljava/lang/String;

    return-void
.end method
