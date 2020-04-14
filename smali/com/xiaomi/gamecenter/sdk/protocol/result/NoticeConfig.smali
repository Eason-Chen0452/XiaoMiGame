.class public Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/protocol/result/a;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/protocol/result/a;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->o:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->p:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;->getNoticeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;->getNoticeConfigType()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->b:I

    :try_start_0
    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->b:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getImagePortraitUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getImageLandscapeUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getActionUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getBackupActionUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getPortraitWidth()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->i:I

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getPortraitHeight()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->j:I

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getLandscapeWidth()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->k:I

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getLandscapeHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->l:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->m:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->n:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig;->getButtonText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->o:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig;->getActionUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->p:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig;->getBackupActionUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->q:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->i:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->j:I

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->k:I

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->l:I

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->q:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
