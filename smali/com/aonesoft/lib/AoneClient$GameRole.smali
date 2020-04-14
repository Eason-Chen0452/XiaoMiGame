.class public Lcom/aonesoft/lib/AoneClient$GameRole;
.super Ljava/lang/Object;
.source "AoneClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aonesoft/lib/AoneClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameRole"
.end annotation


# instance fields
.field public CreateTime:Ljava/lang/String;

.field public Features:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ID:I

.field public LastGroupID:I

.field public LastLoginTime:Ljava/lang/String;

.field public Level:I

.field public Name:Ljava/lang/String;

.field public OwnerGroupID:I

.field public Type:I

.field public VIP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/util/Hashtable;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "level"    # I
    .param p5, "vip"    # I
    .param p6, "createTime"    # Ljava/lang/String;
    .param p7, "lastLoginTime"    # Ljava/lang/String;
    .param p8, "ownerGroupId"    # I
    .param p9, "lastGroupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p10, "features":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p1, p0, Lcom/aonesoft/lib/AoneClient$GameRole;->ID:I

    .line 173
    iput-object p2, p0, Lcom/aonesoft/lib/AoneClient$GameRole;->Name:Ljava/lang/String;

    .line 174
    iput p3, p0, Lcom/aonesoft/lib/AoneClient$GameRole;->Type:I

    .line 175
    iput p4, p0, Lcom/aonesoft/lib/AoneClient$GameRole;->Level:I

    .line 176
    iput p5, p0, Lcom/aonesoft/lib/AoneClient$GameRole;->VIP:I

    .line 177
    iput-object p6, p0, Lcom/aonesoft/lib/AoneClient$GameRole;->CreateTime:Ljava/lang/String;

    .line 178
    iput-object p7, p0, Lcom/aonesoft/lib/AoneClient$GameRole;->LastLoginTime:Ljava/lang/String;

    .line 179
    iput p8, p0, Lcom/aonesoft/lib/AoneClient$GameRole;->OwnerGroupID:I

    .line 180
    iput p9, p0, Lcom/aonesoft/lib/AoneClient$GameRole;->LastGroupID:I

    .line 181
    iput-object p10, p0, Lcom/aonesoft/lib/AoneClient$GameRole;->Features:Ljava/util/Hashtable;

    .line 182
    return-void
.end method
