.class public final Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;
    }
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->b()Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    return-void
.end method

.method public static a()Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v1, ""

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private static b()Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->Other:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    :try_start_0
    const-string v2, "ro.miui.ui.version.name"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ro.miui.ui.version.code"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->MIUI:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    const-string v1, "ro.miui.ui.version.name"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "[Vv]\\d+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    const-string v2, "[Vv]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    const-string v1, "ro.build.version.incremental"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "[\\d.]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_3
    const-string v2, "ro.product.rom.name"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "joyui"

    const-string v4, "ro.product.rom.name"

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->JOYUI:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    const-string v1, "ro.product.rom.verision"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(Ljava/lang/String;)V

    const-string v1, "ro.build.id"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v2, "ro.build.version.emui"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "ro.build.hw_emui_api_level"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "ro.confg.hw_systemversion"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->EMUI:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    const-string v1, "ro.build.version.emui"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "EmotionUI_([\\d.]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(Ljava/lang/String;)V

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_7
    const-string v2, "ro.meizu.setupwizard.flyme"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "ro.flyme.published"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->Flyme:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    const-string v1, "ro.build.display.id"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Flyme[^\\d]*([\\d.]+)[^\\d]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(Ljava/lang/String;)V

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_9
    const-string v2, "ro.oppo.theme.version"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "ro.oppo.version"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "ro.build.version.opporom"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    const-string v1, "ro.build.version.opporom"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->ColorOS:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ColorOS([\\d.]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v3

    if-eqz v3, :cond_b

    const/4 v1, 0x1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(Ljava/lang/String;)V

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v1

    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string v2, "ro.smartisan.version"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->SmartisanOS:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    const-string v1, "ro.smartisan.version"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v2, "ro.vivo.os.name"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "ro.vivo.os.version"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "ro.vivo.os.build.display.id"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->FuntouchOS:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    const-string v1, "ro.vivo.os.version"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "[\\d.]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-result v2

    if-eqz v2, :cond_2

    :try_start_a
    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(Ljava/lang/String;)V

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v1

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_f
    const-string v2, "ro.letv.release.version"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "ro.product.letv_name"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "ro.product.letv_model"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->EUI:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    const-string v1, "ro.letv.release.version"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "([\\d.]+)[^\\d]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :try_start_c
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(Ljava/lang/String;)V

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v1

    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_11
    const-string v2, "ro.gn.gnromvernumber"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "ro.gn.amigo.systemui.support"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->AmigoOS:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    const-string v1, "ro.build.display.id"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "amigo([\\d.]+)[a-zA-Z]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :try_start_e
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(Ljava/lang/String;)V

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->a(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v1

    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_13
    const-string v2, "ro.sony.irremote.protocol_type"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "ro.sony.fota.encrypteddata"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->Sony:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :cond_15
    const-string v2, "ro.yulong.version.release"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "ro.yulong.version.tag"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_16
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->YuLong:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :cond_17
    const-string v2, "htc.build.stage"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "ro.htc.bluetooth.sap"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_18
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->Sense:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :cond_19
    const-string v2, "ro.lge.swversion"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "ro.lge.swversion_short"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "ro.lge.factoryversion"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->LG:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :cond_1b
    const-string v2, "ro.lenovo.device"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "ro.lenovo.platform"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "ro.lenovo.adb"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->Lenovo:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :cond_1d
    const-string v2, "ro.com.google.clientidbase"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "ro.com.google.clientidbase"

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1e
    move v1, v2

    :goto_2
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->MIUI:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "android-xiaomi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_2

    :sswitch_1
    const-string v1, "android-oppo"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v3

    goto :goto_2

    :sswitch_2
    const-string v1, "android-vivo"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_3
    const-string v1, "android-samsung"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_4
    const-string v1, "android-sonyericsson"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_5
    const-string v1, "android-coolpad"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_6
    const-string v1, "android-htc-rev"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_7
    const-string v1, "android-lenovo"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_8
    const-string v1, "android-gionee"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v1, 0x8

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->ColorOS:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :pswitch_2
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->FuntouchOS:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :pswitch_3
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->SamSung:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :pswitch_4
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->Sony:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :pswitch_5
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->YuLong:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :pswitch_6
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->Sense:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :pswitch_7
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->Lenovo:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :pswitch_8
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->AmigoOS:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :cond_1f
    const-string v1, "ro.build.display.id"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "ro.build.display.id"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Flyme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->Flyme:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :cond_20
    const-string v2, "amigo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->AmigoOS:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :cond_21
    const-string v1, "ro.build.version.base_os"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.build.version.base_os"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OPPO"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->ColorOS:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    goto/16 :goto_1

    :cond_22
    const-string v1, "samsung"

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->SamSung:Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x4d572c41 -> :sswitch_8
        -0x4507bdaf -> :sswitch_7
        -0x3dde3fc2 -> :sswitch_1
        -0x3ddb2ab6 -> :sswitch_2
        -0x305b2227 -> :sswitch_0
        -0x26eaf4b4 -> :sswitch_5
        -0x16a946b1 -> :sswitch_6
        -0x3dcfbf5 -> :sswitch_4
        0xf7bfa9c -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
