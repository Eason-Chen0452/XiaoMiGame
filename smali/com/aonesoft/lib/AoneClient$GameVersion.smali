.class public Lcom/aonesoft/lib/AoneClient$GameVersion;
.super Ljava/lang/Object;
.source "AoneClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aonesoft/lib/AoneClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameVersion"
.end annotation


# instance fields
.field public DownloadURL:Ljava/lang/String;

.field public MajorVersion:C

.field public MinorVersion:C

.field public Notice:Ljava/lang/String;

.field public RevisionVersion:C

.field public Status:I

.field public UpdateURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/aonesoft/lib/AoneClient;


# direct methods
.method public constructor <init>(Lcom/aonesoft/lib/AoneClient;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/aonesoft/lib/AoneClient$GameVersion;->this$0:Lcom/aonesoft/lib/AoneClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/aonesoft/lib/AoneClient;CCCLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "MaV"    # C
    .param p3, "MiV"    # C
    .param p4, "RV"    # C
    .param p5, "Not"    # Ljava/lang/String;
    .param p6, "Down"    # Ljava/lang/String;
    .param p7, "Upda"    # Ljava/lang/String;
    .param p8, "Sta"    # I

    .prologue
    .line 107
    iput-object p1, p0, Lcom/aonesoft/lib/AoneClient$GameVersion;->this$0:Lcom/aonesoft/lib/AoneClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-char p2, p0, Lcom/aonesoft/lib/AoneClient$GameVersion;->MajorVersion:C

    .line 109
    iput-char p3, p0, Lcom/aonesoft/lib/AoneClient$GameVersion;->MinorVersion:C

    .line 110
    iput-char p4, p0, Lcom/aonesoft/lib/AoneClient$GameVersion;->RevisionVersion:C

    .line 111
    iput-object p5, p0, Lcom/aonesoft/lib/AoneClient$GameVersion;->Notice:Ljava/lang/String;

    .line 112
    iput-object p6, p0, Lcom/aonesoft/lib/AoneClient$GameVersion;->DownloadURL:Ljava/lang/String;

    .line 113
    iput-object p7, p0, Lcom/aonesoft/lib/AoneClient$GameVersion;->UpdateURL:Ljava/lang/String;

    .line 114
    iput p8, p0, Lcom/aonesoft/lib/AoneClient$GameVersion;->Status:I

    .line 115
    return-void
.end method
