.class public Lcom/aonesoft/lib/AoneClient$GameProduct;
.super Ljava/lang/Object;
.source "AoneClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aonesoft/lib/AoneClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameProduct"
.end annotation


# instance fields
.field public Amount:D

.field public Amount_usd:D

.field public Coin:I

.field public Currency:Ljava/lang/String;

.field public Describe:Ljava/lang/String;

.field public ID:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public Type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDILjava/lang/String;)V
    .locals 1
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "gameName"    # Ljava/lang/String;
    .param p3, "gameDescribe"    # Ljava/lang/String;
    .param p4, "gameCurrency"    # Ljava/lang/String;
    .param p5, "gameAmount"    # D
    .param p7, "usdAmount"    # D
    .param p9, "coin"    # I
    .param p10, "type"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/aonesoft/lib/AoneClient$GameProduct;->ID:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/aonesoft/lib/AoneClient$GameProduct;->Name:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/aonesoft/lib/AoneClient$GameProduct;->Describe:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/aonesoft/lib/AoneClient$GameProduct;->Currency:Ljava/lang/String;

    .line 76
    iput-wide p5, p0, Lcom/aonesoft/lib/AoneClient$GameProduct;->Amount:D

    .line 77
    iput-wide p7, p0, Lcom/aonesoft/lib/AoneClient$GameProduct;->Amount_usd:D

    .line 78
    iput p9, p0, Lcom/aonesoft/lib/AoneClient$GameProduct;->Coin:I

    .line 79
    iput-object p10, p0, Lcom/aonesoft/lib/AoneClient$GameProduct;->Type:Ljava/lang/String;

    .line 80
    return-void
.end method
