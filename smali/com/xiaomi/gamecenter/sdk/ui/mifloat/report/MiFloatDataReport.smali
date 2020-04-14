.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    const-string v0, "game_main"

    const-string v1, "mifloat_show"

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->c(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a()V

    return-void
.end method

.method public static a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;)V
    .locals 4

    const-string v0, "game_main"

    const-string v1, "mifloat_menu_click"

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "game_main"

    const-string v1, "marquee_show"

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, p0, v2}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method public static b()V
    .locals 3

    const-string v0, "game_main"

    const-string v1, "mifloat_menu_show"

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->c(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "game_main"

    const-string v1, "marquee_goto"

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, p0, v2}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method public static c()V
    .locals 4

    const-string v0, "game_main"

    const-string v1, "mifloat_menu_click"

    const-string v2, "mifloat_me"

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "game_main"

    const-string v1, "marquee_close"

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, p0, v2}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method public static d()V
    .locals 4

    const-string v0, "game_main"

    const/4 v1, 0x0

    const-string v2, "mifloat_hide"

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method
