.class public Lcom/xiaomi/hy/dj/config/ResultCode;
.super Ljava/lang/Object;


# static fields
.field public static final CREATE_UNDEFINEORDER_ERROR:I = 0xbf6

.field public static final GET_PAYINTO_ERROR:I = 0xbf7

.field public static final GET_SESSION_ERROR:I = 0xbf5

.field public static final NET_ERROR:I = 0xbf4

.field public static final NOT_INSTALL_QQ:I = 0xbfb

.field public static final ORDER_HAS_BUY:I = 0xb8

.field public static final PAY_CANCEL:I = 0xb9

.field public static final QUERY_ORDER_ERROR:I = 0xbf8

.field public static final REPOR_ALI_CALLED:I = 0xa8

.field public static final REPOR_ALI_CANCEL:I = 0xaa

.field public static final REPOR_ALI_FAIL:I = 0xab

.field public static final REPOR_ALI_SUCCESS:I = 0xa9

.field public static final REPOR_PAYECO_CALLED:I = 0xba

.field public static final REPOR_PAYECO_CANCEL:I = 0xbc

.field public static final REPOR_PAYECO_FAIL:I = 0xbd

.field public static final REPOR_PAYECO_SUCCESS:I = 0xbb

.field public static final REPOR_QQWAP_CALLED:I = 0xb4

.field public static final REPOR_QQWAP_CANCEL:I = 0xb6

.field public static final REPOR_QQWAP_FAIL:I = 0xb7

.field public static final REPOR_QQWAP_SUCCESS:I = 0xb5

.field public static final REPOR_SZFPAY_CALLED:I = 0xbe

.field public static final REPOR_SZFPAY_CANCEL:I = 0xc0

.field public static final REPOR_SZFPAY_FAIL:I = 0xc1

.field public static final REPOR_SZFPAY_SUCCESS:I = 0xbf

.field public static final REPOR_WXSCAN_CALLED:I = 0xb0

.field public static final REPOR_WXSCAN_CANCEL:I = 0xb2

.field public static final REPOR_WXSCAN_FAIL:I = 0xb3

.field public static final REPOR_WXSCAN_SUCCESS:I = 0xb1

.field public static final REPOR_WXWAP_CALLED:I = 0xac

.field public static final REPOR_WXWAP_CANCEL:I = 0xae

.field public static final REPOR_WXWAP_FAIL:I = 0xaf

.field public static final REPOR_WXWAP_SUCCESS:I = 0xad

.field public static final VERIFY_ERROR:I = 0xbfa

.field public static final VERIFY_FAIL:I = 0xbf9

.field public static errorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xb8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u53d6\u6d88\u652f\u4ed8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xaf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xb1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xb2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u53d6\u6d88\u652f\u4ed8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xb3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xa9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xaa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u53d6\u6d88\u652f\u4ed8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xb5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xb6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u53d6\u6d88\u652f\u4ed8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xb7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xbb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xbc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u53d6\u6d88\u652f\u4ed8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xbd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u53d6\u6d88\u652f\u4ed8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xbfb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u672a\u5b89\u88c5QQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xbf5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u83b7\u53d6session\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xbf6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u521b\u5efa\u9884\u8ba2\u5355\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u521b\u5efa\u9884\u8ba2\u5355\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xbf7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u83b7\u53d6\u652f\u4ed8\u4fe1\u606f\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xbf8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u67e5\u8be2\u8ba2\u5355\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7528\u6237\u5df2\u8d2d\u4e70"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xbf4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xbf9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5b9e\u540d\u8ba4\u8bc1\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    const/16 v1, 0xb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u53d6\u6d88"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
