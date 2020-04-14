.class public Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;
.super Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/SimpleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamContent"
.end annotation


# instance fields
.field private a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;->a:Ljava/io/InputStream;

    return-void
.end method
