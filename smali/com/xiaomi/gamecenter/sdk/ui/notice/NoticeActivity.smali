.class public Lcom/xiaomi/gamecenter/sdk/ui/notice/NoticeActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/notice/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/NoticeActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/NoticeActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/NoticeActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/NoticeActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a()Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/notice/a;)V

    sget-boolean v0, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "show notice from jar"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/NoticeActivity;->finish()V

    invoke-virtual {p0, v2, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/NoticeActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/NoticeActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/NoticeActivity;->overridePendingTransition(II)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
