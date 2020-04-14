.class Lcom/wali/gamecenter/report/io/HttpConnectionManager$WaliSSLSocketFactory$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic this$0:Lcom/wali/gamecenter/report/io/HttpConnectionManager$WaliSSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/wali/gamecenter/report/io/HttpConnectionManager$WaliSSLSocketFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/io/HttpConnectionManager$WaliSSLSocketFactory$1;->this$0:Lcom/wali/gamecenter/report/io/HttpConnectionManager$WaliSSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
