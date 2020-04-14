.class final Lcn/com/wali/basetool/io/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcn/com/wali/basetool/io/HttpConnectionManager$WaliSSLSocketFactory;


# direct methods
.method constructor <init>(Lcn/com/wali/basetool/io/HttpConnectionManager$WaliSSLSocketFactory;)V
    .locals 0

    iput-object p1, p0, Lcn/com/wali/basetool/io/a;->a:Lcn/com/wali/basetool/io/HttpConnectionManager$WaliSSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
