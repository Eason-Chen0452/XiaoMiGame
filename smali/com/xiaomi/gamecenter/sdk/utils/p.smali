.class public final Lcom/xiaomi/gamecenter/sdk/utils/p;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiAlertDialog;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6743\u9650\u672a\u6388\u4e88"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4e3a\u4e86\u5e10\u53f7\u98ce\u9669\u63a7\u5236\u8bf7\u5728-\u5e94\u7528\u8bbe\u7f6e-\u6743\u9650-\u4e2d\uff0c\u5141\u8bb8APP\u4f7f\u7528\u83b7\u53d6\u624b\u673a\u4fe1\u606f\u3001\u8bbf\u95ee\u624b\u673a\u8d26\u6237\u4ee5\u53ca\u8bfb\u5199\u624b\u673a\u5b58\u50a8\u6743\u9650"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7acb\u5373\u5f00\u542f"

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/utils/q;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/utils/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
