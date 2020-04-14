.class public Lcom/aonesoft/lib/utils/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canMakeSmores()Z
    .locals 2

    .prologue
    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-static {}, Lcom/aonesoft/lib/utils/PermissionHelper;->canMakeSmores()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requestPermissionDialog(Landroid/app/Activity;I)Z
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 20
    invoke-static {}, Lcom/aonesoft/lib/utils/PermissionsHelper;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "needGrantPersissions":[Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/aonesoft/lib/utils/PermissionsHelper;->getNotGrantPermissions(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "notGrantPersissions":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    return v2

    .line 26
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 28
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static requestPermissionDialog(Landroid/app/Activity;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "permissions"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    invoke-static {p0, p1}, Lcom/aonesoft/lib/utils/PermissionHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    invoke-static {p0, v1, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 41
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static twiceShowRequestPermission(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
