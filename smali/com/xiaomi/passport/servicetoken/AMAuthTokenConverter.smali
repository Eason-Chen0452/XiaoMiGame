.class public final Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    invoke-direct {v0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "authtoken"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "authtoken"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    invoke-direct {v0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_AUTHENTICATOR_ERROR:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    const-string v1, "invalid auth token"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_4

    const-string v1, "weblogin:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    aget-object v1, v2, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    new-instance v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    invoke-direct {v2, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_NONE:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v2, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    goto :goto_1

    :cond_4
    array-length v1, v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    aget-object v1, v2, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, v2, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, v2, v4

    aget-object v0, v2, v5

    goto :goto_2

    :cond_5
    const-string v0, "intent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    invoke-direct {v1, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_USER_INTERACTION_NEEDED:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Landroid/content/Intent;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string v0, "errorCode"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    invoke-direct {v0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v0, "errorCode"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "errorMessage"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    :goto_3
    new-instance v3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    invoke-direct {v3, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_REMOTE_EXCEPTION:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    goto :goto_3

    :pswitch_2
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_IOERROR:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    goto :goto_3

    :pswitch_3
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_CANCELLED:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    goto :goto_3

    :pswitch_4
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_AUTHENTICATOR_ERROR:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    goto :goto_3

    :pswitch_5
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_AUTHENTICATOR_ERROR:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    goto :goto_3

    :pswitch_6
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_AUTHENTICATOR_ERROR:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    goto :goto_3

    :pswitch_7
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_AUTHENTICATOR_ERROR:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    goto :goto_3

    :pswitch_8
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_AUTHENTICATOR_ERROR:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
