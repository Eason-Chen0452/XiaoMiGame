.class public Lcom/aonesoft/lib/utils/PermissionsHelper;
.super Ljava/lang/Object;
.source "PermissionsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 32
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, "hasWriteContactsPermission":I
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNotGrantPermissions(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "persissions"    # [Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 118
    :cond_0
    const/4 v2, 0x0

    .line 126
    :goto_0
    return-object v2

    .line 120
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .local v0, "notGrantPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_2

    .line 126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_2
    aget-object v1, p1, v2

    .line 122
    .local v1, "persission":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/aonesoft/lib/utils/PermissionsHelper;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getPermissions()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 153
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v1, "android.permission.GET_TASKS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static isGrantedCallLog(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 216
    if-nez p0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    :cond_0
    const-string v0, "android.permission.WRITE_CALL_LOG"

    invoke-static {p0, v0}, Lcom/aonesoft/lib/utils/PermissionsHelper;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isGrantedContancts(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 186
    if-nez p0, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 190
    :goto_0
    return v0

    :cond_0
    const-string v0, "android.permission.WRITE_CONTACTS"

    invoke-static {p0, v0}, Lcom/aonesoft/lib/utils/PermissionsHelper;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isGrantedRecordAudio(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 231
    if-nez p0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    :cond_0
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Lcom/aonesoft/lib/utils/PermissionsHelper;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isGrantedSMS(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 201
    if-nez p0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_0
    const-string v0, "android.permission.READ_SMS"

    invoke-static {p0, v0}, Lcom/aonesoft/lib/utils/PermissionsHelper;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isGrantedStorage(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 246
    if-nez p0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/aonesoft/lib/utils/PermissionsHelper;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static requestPermissions(Landroid/app/Activity;I)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 259
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v2

    .line 262
    :cond_1
    invoke-static {}, Lcom/aonesoft/lib/utils/PermissionsHelper;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "needGrantPersissions":[Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/aonesoft/lib/utils/PermissionsHelper;->getNotGrantPermissions(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "notGrantPersissions":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-eqz v3, :cond_0

    .line 268
    invoke-static {p0, v1, p1}, Lcom/aonesoft/lib/utils/PermissionsHelper;->requestSelfPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 276
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static requestSelfPermissions(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "persission"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static requestSelfPermissions(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "persissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static requestSelfPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "persissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "persission"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 139
    if-nez p0, :cond_0

    if-nez p1, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_1
    const-string v0, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
