.class public Lcom/mi/milink/sdk/account/manager/RSAPublicKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;
    }
.end annotation


# static fields
.field public static key2:Ljava/lang/String;

.field public static key3:Ljava/lang/String;

.field public static key4:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDp9WJz0gTAQP5oneVMs+ubmBDn7uFbNJOetNH19Ze+4EyYxyg7zPr9rGlWuNmiQzd7KeHB6uOOBTOIYtRl0J/z4fx5aPejleHfJEd8urjkMCEReDTLKrFa0IeBHRqy8FyGjMtVQJUw9V30Jvy7WFFB07rTw1Lt2mJsQOpPt4CjPwIDAQAB"

    sput-object v0, Lcom/mi/milink/sdk/account/manager/RSAPublicKey;->key2:Ljava/lang/String;

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD+qNU/W2iWBi5APoJ9nOSgD1IFCI18OQ6ksWDqjWK0GIpOU0wapEa9cVKbbhDkGwpX5I5JEuHygPsAEMWLRF6zr9h5RqdOjISlaeAU4nwsd4dJRNHeHON5COkGo38Eu9PJSGzOed7sjCC7XxCI+E2N7hiaFRQlF2obHQch6Cnb9wIDAQAB"

    sput-object v0, Lcom/mi/milink/sdk/account/manager/RSAPublicKey;->key3:Ljava/lang/String;

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCm4DNek5oJVR0AkGNG1A3WMAcSf2ifKI6Ythj1SYeeL0CZhxRn2FBQtGlxRZRDq0FFws0VlzZpo4xatJpEJh2CBpooMK2VJYQ3Erm8eyBw2vQEJ6dhOZ8UqRSMwaKT4g6IEp8TqtArjbFaOcvKLq4APanv1OXTi/Xo5Px3T84gUQIDAQAB"

    sput-object v0, Lcom/mi/milink/sdk/account/manager/RSAPublicKey;->key4:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPublicKeyAndId()Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;
    .locals 5

    const/4 v4, 0x3

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/mi/milink/sdk/account/manager/RSAPublicKey;->key2:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/mi/milink/sdk/account/manager/RSAPublicKey;->key3:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/mi/milink/sdk/account/manager/RSAPublicKey;->key4:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;

    invoke-direct {v2, v0, v1}, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public getPublicKeySet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;

    const-string v2, "2"

    sget-object v3, Lcom/mi/milink/sdk/account/manager/RSAPublicKey;->key2:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;

    const-string v3, "3"

    sget-object v4, Lcom/mi/milink/sdk/account/manager/RSAPublicKey;->key3:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;

    const-string v4, "4"

    sget-object v5, Lcom/mi/milink/sdk/account/manager/RSAPublicKey;->key4:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
