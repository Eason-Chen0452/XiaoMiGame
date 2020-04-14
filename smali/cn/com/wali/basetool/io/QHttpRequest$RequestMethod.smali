.class public final enum Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/wali/basetool/io/QHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GET:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

.field public static final enum HEAD:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

.field public static final enum POST:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

.field private static final synthetic a:[Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->GET:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    new-instance v0, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->POST:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    new-instance v0, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v4}, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->HEAD:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    sget-object v1, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->GET:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->POST:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->HEAD:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    aput-object v1, v0, v4

    sput-object v0, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->a:[Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;
    .locals 1

    const-class v0, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    return-object v0
.end method

.method public static values()[Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;
    .locals 1

    sget-object v0, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->a:[Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    invoke-virtual {v0}, [Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    return-object v0
.end method
