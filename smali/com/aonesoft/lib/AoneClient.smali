.class public Lcom/aonesoft/lib/AoneClient;
.super Ljava/lang/Object;
.source "AoneClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aonesoft/lib/AoneClient$GameGroup;,
        Lcom/aonesoft/lib/AoneClient$GameProduct;,
        Lcom/aonesoft/lib/AoneClient$GameRole;,
        Lcom/aonesoft/lib/AoneClient$GameVersion;,
        Lcom/aonesoft/lib/AoneClient$InitReturnStatus;,
        Lcom/aonesoft/lib/AoneClient$LoginReturnStatus;,
        Lcom/aonesoft/lib/AoneClient$LogoutReturnStatus;,
        Lcom/aonesoft/lib/AoneClient$PayReturnStatus;,
        Lcom/aonesoft/lib/AoneClient$ShareReturnStatus;
    }
.end annotation


# static fields
.field private static userID:J

.field private static userToken:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 186
    sput-wide v0, Lcom/aonesoft/lib/AoneClient;->userID:J

    .line 189
    sput-wide v0, Lcom/aonesoft/lib/AoneClient;->userToken:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AllGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aonesoft/lib/AoneClient$GameGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeAllGroups()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static AllLangs()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeAllLangs()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public static AllProducts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aonesoft/lib/AoneClient$GameProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeAllProducts()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static AllRoles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aonesoft/lib/AoneClient$GameRole;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeAllRoles()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static AoneAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeAoneAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static CheckVersion(IIILcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p0, "majorVersion"    # I
    .param p1, "minorVersion"    # I
    .param p2, "revisionVersion"    # I
    .param p3, "listener"    # Lcom/aonesoft/lib/AoneResultListener;

    .prologue
    .line 394
    invoke-static {p0, p1, p2, p3}, Lcom/aonesoft/lib/AoneClient;->nativeCheckVersion(IIILcom/aonesoft/lib/AoneResultListener;)V

    .line 395
    return-void
.end method

.method public static CreateRole(Ljava/lang/String;Ljava/lang/String;ILjava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "roleID"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p4, "groupId"    # Ljava/lang/String;
    .param p5, "groupName"    # Ljava/lang/String;
    .param p6, "roleVip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 316
    .local p3, "features":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 317
    new-instance p3, Ljava/util/Hashtable;

    .end local p3    # "features":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/Hashtable;-><init>()V

    .line 319
    .restart local p3    # "features":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/aonesoft/lib/AoneClient;->nativeCreateRoleCP(Ljava/lang/String;Ljava/lang/String;ILjava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static CreateRoleAsyc(Ljava/lang/String;ILjava/util/Hashtable;ILcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p3, "owner_groupid"    # I
    .param p4, "listener"    # Lcom/aonesoft/lib/AoneResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/aonesoft/lib/AoneResultListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 433
    .local p2, "features":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/aonesoft/lib/AoneClient;->nativeCreateRole(Ljava/lang/String;ILjava/util/Hashtable;ILcom/aonesoft/lib/AoneResultListener;)V

    .line 434
    return-void
.end method

.method public static EmbedQR(Ljava/lang/String;Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 497
    invoke-static/range {p0 .. p5}, Lcom/aonesoft/lib/AoneClient;->nativeEmbedQR(Ljava/lang/String;Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Exit()V
    .locals 0

    .prologue
    .line 205
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeExit()V

    .line 206
    return-void
.end method

.method public static GetAdTrackLink(Ljava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p0, "userData"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/aonesoft/lib/AoneResultListener;

    .prologue
    .line 462
    invoke-static {p0, p1}, Lcom/aonesoft/lib/AoneClient;->nativeGetAdTrackLink(Ljava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V

    .line 463
    return-void
.end method

.method public static GetAdsource(Ljava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p0, "userData"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/aonesoft/lib/AoneResultListener;

    .prologue
    .line 482
    invoke-static {p0, p1}, Lcom/aonesoft/lib/AoneClient;->nativeGetAdSource(Ljava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V

    .line 483
    return-void
.end method

.method public static GetAoneConfigData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static {p0}, Lcom/aonesoft/lib/AoneClient;->nativeAoneConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetAppLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeGetAppLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetGameVersion()Lcom/aonesoft/lib/AoneClient$GameVersion;
    .locals 1

    .prologue
    .line 402
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeGetGameVersion()Lcom/aonesoft/lib/AoneClient$GameVersion;

    move-result-object v0

    return-object v0
.end method

.method public static GetSelectedGroup()Lcom/aonesoft/lib/AoneClient$GameGroup;
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeGetSelectedGroup()Lcom/aonesoft/lib/AoneClient$GameGroup;

    move-result-object v0

    return-object v0
.end method

.method public static GetSelectedRole()Lcom/aonesoft/lib/AoneClient$GameRole;
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeGetSelectedRole()Lcom/aonesoft/lib/AoneClient$GameRole;

    move-result-object v0

    return-object v0
.end method

.method public static GetToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetUserToken()I
    .locals 1

    .prologue
    .line 286
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeUserToken()I

    move-result v0

    return v0
.end method

.method public static InitSDK(Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/aonesoft/lib/AoneResultListener;

    .prologue
    .line 213
    invoke-static {p0}, Lcom/aonesoft/lib/AoneClient;->nativeInitSDK(Lcom/aonesoft/lib/AoneResultListener;)V

    .line 214
    return-void
.end method

.method public static LogEvent(Ljava/lang/String;)V
    .locals 0
    .param p0, "eventId"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-static {p0}, Lcom/aonesoft/lib/AoneClient;->nativeLogEvent(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public static LogEvent(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0
    .param p0, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "info":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/aonesoft/lib/AoneClient;->nativeLogEventParams(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 508
    return-void
.end method

.method public static Login(Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/aonesoft/lib/AoneResultListener;

    .prologue
    .line 266
    invoke-static {p0}, Lcom/aonesoft/lib/AoneClient;->nativeLogin(Lcom/aonesoft/lib/AoneResultListener;)V

    .line 267
    return-void
.end method

.method public static Logout(Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/aonesoft/lib/AoneResultListener;

    .prologue
    .line 382
    invoke-static {p0}, Lcom/aonesoft/lib/AoneClient;->nativeLogout(Lcom/aonesoft/lib/AoneResultListener;)V

    .line 383
    return-void
.end method

.method public static OpenUrl(Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 511
    invoke-static {p0}, Lcom/aonesoft/lib/AoneClient;->nativeOpenUrl(Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public static Pay(Ljava/lang/String;ILjava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p0, "product_id"    # Ljava/lang/String;
    .param p1, "purchaseNum"    # I
    .param p2, "cp_ext"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/aonesoft/lib/AoneResultListener;

    .prologue
    .line 374
    invoke-static {p0, p1, p2, p3}, Lcom/aonesoft/lib/AoneClient;->nativePay(Ljava/lang/String;ILjava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V

    .line 375
    return-void
.end method

.method public static PullGameGroup(Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/aonesoft/lib/AoneResultListener;

    .prologue
    .line 344
    invoke-static {p0}, Lcom/aonesoft/lib/AoneClient;->nativePullGameGroup(Lcom/aonesoft/lib/AoneResultListener;)V

    .line 345
    return-void
.end method

.method public static SelectLang(Ljava/lang/String;)I
    .locals 1
    .param p0, "lang"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {p0}, Lcom/aonesoft/lib/AoneClient;->nativeSelectLang(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static SelectRoleAndGroup(IILcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p0, "role_id"    # I
    .param p1, "group_id"    # I
    .param p2, "listener"    # Lcom/aonesoft/lib/AoneResultListener;

    .prologue
    .line 443
    invoke-static {p0, p1, p2}, Lcom/aonesoft/lib/AoneClient;->nativeSelectRoleAndGroup(IILcom/aonesoft/lib/AoneResultListener;)V

    .line 444
    return-void
.end method

.method public static Share(Ljava/util/Hashtable;Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aonesoft/lib/AoneResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aonesoft/lib/AoneResultListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "cpInfo":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 448
    new-instance p0, Ljava/util/Hashtable;

    .end local p0    # "cpInfo":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 450
    .restart local p0    # "cpInfo":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {p0, p1}, Lcom/aonesoft/lib/AoneClient;->nativeShare(Ljava/util/Hashtable;Lcom/aonesoft/lib/AoneResultListener;)V

    .line 451
    return-void
.end method

.method public static SubmitRoleData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;J)V
    .locals 0
    .param p0, "roleID"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "groupId"    # Ljava/lang/String;
    .param p4, "groupName"    # Ljava/lang/String;
    .param p5, "roleVip"    # I
    .param p6, "isLogin"    # Z
    .param p7, "action"    # Ljava/lang/String;
    .param p8, "roleCTime"    # J

    .prologue
    .line 336
    invoke-static/range {p0 .. p9}, Lcom/aonesoft/lib/AoneClient;->nativeSubmitRoleData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;J)V

    .line 337
    return-void
.end method

.method public static UserID()I
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeUserID()I

    move-result v0

    return v0
.end method

.method static synthetic access$0(ILjava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 0

    .prologue
    .line 583
    invoke-static {p0, p1, p2}, Lcom/aonesoft/lib/AoneClient;->nativeQueryPaynoStatus(ILjava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V

    return-void
.end method

.method static synthetic access$1(I)V
    .locals 0

    .prologue
    .line 584
    invoke-static {p0}, Lcom/aonesoft/lib/AoneClient;->nativeRecordDevicePoint(I)V

    return-void
.end method

.method public static hasExitUI()Z
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->nativeHasExitUI()Z

    move-result v0

    return v0
.end method

.method private static native nativeAllGroups()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aonesoft/lib/AoneClient$GameGroup;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeAllLangs()Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeAllProducts()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aonesoft/lib/AoneClient$GameProduct;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeAllRoles()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aonesoft/lib/AoneClient$GameRole;",
            ">;"
        }
    .end annotation
.end method

.method public static native nativeAnnounceCallback()V
.end method

.method private static native nativeAoneAccount()Ljava/lang/String;
.end method

.method private static native nativeAoneConfigData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeCheckVersion(IIILcom/aonesoft/lib/AoneResultListener;)V
.end method

.method private static native nativeCreateRole(Ljava/lang/String;ILjava/util/Hashtable;ILcom/aonesoft/lib/AoneResultListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/aonesoft/lib/AoneResultListener;",
            ")V"
        }
    .end annotation
.end method

.method private static native nativeCreateRoleCP(Ljava/lang/String;Ljava/lang/String;ILjava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation
.end method

.method private static native nativeEmbedQR(Ljava/lang/String;Ljava/lang/String;IIII)Ljava/lang/String;
.end method

.method private static native nativeExit()V
.end method

.method private static native nativeGetAdSource(Ljava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V
.end method

.method private static native nativeGetAdTrackLink(Ljava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V
.end method

.method private static native nativeGetAppLink()Ljava/lang/String;
.end method

.method private static native nativeGetGameVersion()Lcom/aonesoft/lib/AoneClient$GameVersion;
.end method

.method private static native nativeGetSelectedGroup()Lcom/aonesoft/lib/AoneClient$GameGroup;
.end method

.method private static native nativeGetSelectedRole()Lcom/aonesoft/lib/AoneClient$GameRole;
.end method

.method private static native nativeHasExitUI()Z
.end method

.method public static native nativeImagePicker(I)V
.end method

.method private static native nativeInitSDK(Lcom/aonesoft/lib/AoneResultListener;)V
.end method

.method private static native nativeLogEvent(Ljava/lang/String;)V
.end method

.method private static native nativeLogEventParams(Ljava/lang/String;Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeLogin(Lcom/aonesoft/lib/AoneResultListener;)V
.end method

.method private static native nativeLogout(Lcom/aonesoft/lib/AoneResultListener;)V
.end method

.method private static native nativeOauthLogin(Lcom/aonesoft/lib/AoneResultListener;)V
.end method

.method private static native nativeOpenUrl(Ljava/lang/String;)V
.end method

.method private static native nativePay(Ljava/lang/String;ILjava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V
.end method

.method private static native nativePullGameGroup(Lcom/aonesoft/lib/AoneResultListener;)V
.end method

.method private static native nativeQueryPaynoStatus(ILjava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V
.end method

.method private static native nativeRecordDevicePoint(I)V
.end method

.method private static native nativeSelectLang(Ljava/lang/String;)I
.end method

.method private static native nativeSelectRoleAndGroup(IILcom/aonesoft/lib/AoneResultListener;)V
.end method

.method private static native nativeSetOAuthType(Ljava/lang/String;)I
.end method

.method private static native nativeShare(Ljava/util/Hashtable;Lcom/aonesoft/lib/AoneResultListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aonesoft/lib/AoneResultListener;",
            ")V"
        }
    .end annotation
.end method

.method private static native nativeSubmitRoleData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;J)V
.end method

.method private static native nativeToken()Ljava/lang/String;
.end method

.method public static native nativeUpdateCallback()V
.end method

.method private static native nativeUserID()I
.end method

.method private static native nativeUserToken()I
.end method

.method public static oauthLogin(Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/aonesoft/lib/AoneResultListener;

    .prologue
    .line 270
    invoke-static {p0}, Lcom/aonesoft/lib/AoneClient;->nativeOauthLogin(Lcom/aonesoft/lib/AoneResultListener;)V

    .line 271
    return-void
.end method

.method public static queryPaynoStatus(ILjava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 4
    .param p0, "appId"    # I
    .param p1, "payno"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/aonesoft/lib/AoneResultListener;

    .prologue
    .line 524
    move v0, p0

    .line 525
    .local v0, "cpId":I
    move-object v1, p1

    .line 526
    .local v1, "order":Ljava/lang/String;
    move-object v2, p2

    .line 527
    .local v2, "resultListener":Lcom/aonesoft/lib/AoneResultListener;
    new-instance v3, Lcom/aonesoft/lib/AoneClient$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/aonesoft/lib/AoneClient$1;-><init>(ILjava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V

    invoke-static {v3}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 533
    return-void
.end method

.method public static recordDevicePoint(I)V
    .locals 2
    .param p0, "sdkPoint"    # I

    .prologue
    .line 536
    move v0, p0

    .line 537
    .local v0, "sPoint":I
    new-instance v1, Lcom/aonesoft/lib/AoneClient$2;

    invoke-direct {v1, v0}, Lcom/aonesoft/lib/AoneClient$2;-><init>(I)V

    invoke-static {v1}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 543
    return-void
.end method

.method public static setOAuthType(Ljava/lang/String;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {p0}, Lcom/aonesoft/lib/AoneClient;->nativeSetOAuthType(Ljava/lang/String;)I

    .line 256
    return-void
.end method
