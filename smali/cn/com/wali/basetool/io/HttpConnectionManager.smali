.class public final Lcn/com/wali/basetool/io/HttpConnectionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/wali/basetool/io/HttpConnectionManager$WaliSSLSocketFactory;,
        Lcn/com/wali/basetool/io/HttpConnectionManager$GzipDecompressingEntity;,
        Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;,
        Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xea60

    sput v0, Lcn/com/wali/basetool/io/HttpConnectionManager;->a:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/com/wali/basetool/io/HttpConnectionManager;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
