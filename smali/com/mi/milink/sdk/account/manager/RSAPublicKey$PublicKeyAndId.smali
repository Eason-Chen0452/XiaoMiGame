.class public Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/account/manager/RSAPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PublicKeyAndId"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;->key:Ljava/lang/String;

    return-void
.end method
