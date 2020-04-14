.class final Lcom/xiaomi/gamecenter/sdk/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/bg;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/o;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/o;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)V
    .locals 5

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)I

    move-result v2

    const-string v0, "MiGameSDK.MiCommplatform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onShow "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a()V

    const/4 v1, 0x0

    const/4 v0, -0x1

    packed-switch v2, :pswitch_data_0

    :goto_0
    const-string v2, "init_notice_view"

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/o;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v2, v3, v1, v4}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(ILjava/lang/String;)V

    return-void

    :pswitch_0
    const-string v1, "notice_text"

    const/16 v0, 0xc8

    goto :goto_0

    :pswitch_1
    const-string v1, "notice_image"

    const/16 v0, 0xd2

    goto :goto_0

    :pswitch_2
    const-string v1, "notice_scheme"

    const/16 v0, 0xdc

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;Z)V
    .locals 4

    if-eqz p2, :cond_2

    const-string v0, "init_notice_view"

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notice_close_not_remind"

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/o;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    :goto_0
    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, -0x1

    if-nez v1, :cond_3

    const/16 v0, 0xc9

    :cond_0
    :goto_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "init_notice_view"

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notice_close_remind"

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/o;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/16 v0, 0xdd

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v0, 0xd3

    goto :goto_1
.end method

.method public final b(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)V
    .locals 4

    const-string v0, "init_notice_view"

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notice_skip_btn"

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/o;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, -0x1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/16 v0, 0xdf

    :cond_0
    :goto_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v0, 0xd5

    goto :goto_0
.end method

.method public final b(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;Z)V
    .locals 4

    if-eqz p2, :cond_2

    const-string v0, "init_notice_view"

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notice_close_not_remind"

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/o;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    :goto_0
    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, -0x1

    if-nez v1, :cond_3

    const/16 v0, 0xca

    :cond_0
    :goto_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "init_notice_view"

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notice_close_remind"

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/o;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/16 v0, 0xde

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v0, 0xd4

    goto :goto_1
.end method
