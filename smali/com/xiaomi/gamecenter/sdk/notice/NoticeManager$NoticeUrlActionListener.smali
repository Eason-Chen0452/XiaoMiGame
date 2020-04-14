.class Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeUrlActionListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoticeUrlActionListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

.field private b:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeUrlActionListener;->a:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeUrlActionListener;->b:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    return-void
.end method
