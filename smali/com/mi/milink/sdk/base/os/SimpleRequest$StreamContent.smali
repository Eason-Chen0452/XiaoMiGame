.class public Lcom/mi/milink/sdk/base/os/SimpleRequest$StreamContent;
.super Lcom/mi/milink/sdk/base/os/SimpleRequest$HeaderContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/base/os/SimpleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamContent"
.end annotation


# instance fields
.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/base/os/SimpleRequest$HeaderContent;-><init>()V

    iput-object p1, p0, Lcom/mi/milink/sdk/base/os/SimpleRequest$StreamContent;->stream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/base/os/SimpleRequest$StreamContent;->stream:Ljava/io/InputStream;

    return-object v0
.end method
