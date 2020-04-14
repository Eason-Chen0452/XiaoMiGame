.class public Lcom/aonesoft/lib/AoneClient$GameGroup;
.super Ljava/lang/Object;
.source "AoneClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aonesoft/lib/AoneClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameGroup"
.end annotation


# instance fields
.field public ID:I

.field public IsInitialed:Z

.field public IsRecommend:Z

.field public Name:Ljava/lang/String;

.field public ServerIP:Ljava/lang/String;

.field public ServerPort:I

.field public Status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;IZZ)V
    .locals 0
    .param p1, "gameId"    # I
    .param p2, "gameName"    # Ljava/lang/String;
    .param p3, "gameStatus"    # I
    .param p4, "ip"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "rec"    # Z
    .param p7, "init"    # Z

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Lcom/aonesoft/lib/AoneClient$GameGroup;->ID:I

    .line 144
    iput-object p2, p0, Lcom/aonesoft/lib/AoneClient$GameGroup;->Name:Ljava/lang/String;

    .line 145
    iput p3, p0, Lcom/aonesoft/lib/AoneClient$GameGroup;->Status:I

    .line 146
    iput-object p4, p0, Lcom/aonesoft/lib/AoneClient$GameGroup;->ServerIP:Ljava/lang/String;

    .line 147
    iput p5, p0, Lcom/aonesoft/lib/AoneClient$GameGroup;->ServerPort:I

    .line 148
    iput-boolean p6, p0, Lcom/aonesoft/lib/AoneClient$GameGroup;->IsRecommend:Z

    .line 149
    iput-boolean p7, p0, Lcom/aonesoft/lib/AoneClient$GameGroup;->IsInitialed:Z

    .line 150
    return-void
.end method
