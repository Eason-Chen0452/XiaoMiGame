.class public Lcom/xiaomi/gamecenter/sdk/ui/fault/ViewFaultNoticeActivity;
.super Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;


# instance fields
.field private j:Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/ViewFaultNoticeActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/ViewFaultNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "text_color_black_60"

    invoke-static {p0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected final b()Landroid/view/View;
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/ViewFaultNoticeActivity;->j:Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/ViewFaultNoticeActivity;->j:Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->onBackPressed()V

    const-string v0, "fault_notice"

    const-string v1, "fault_back"

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/ViewFaultNoticeActivity;->i:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->d(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/ViewFaultNoticeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "faultInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/protocol/login/FaultInfo;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/ViewFaultNoticeActivity;->j:Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/ViewFaultNoticeActivity;->j:Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/ViewFaultNoticeActivity;->i:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->a(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/ViewFaultNoticeActivity;->j:Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->a(Lcom/xiaomi/gamecenter/sdk/protocol/login/FaultInfo;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a()V

    const-string v0, "fault_notice"

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/ViewFaultNoticeActivity;->i:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "show fault notice from jar."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MiGameSDK.ViewFaultNoticeActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->onDestroy()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a()Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/fault/a;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/a;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/fault/ViewFaultNoticeActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;)V

    return-void
.end method
