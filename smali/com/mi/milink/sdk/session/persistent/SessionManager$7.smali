.class synthetic Lcom/mi/milink/sdk/session/persistent/SessionManager$7;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ChannelStatusChangeEvent$EventType:[I

.field static final synthetic $SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ClientActionEvent$EventType:[I

.field static final synthetic $SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ServerNotificationEvent$EventType:[I

.field static final synthetic $SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionConnectEvent$EventType:[I

.field static final synthetic $SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionLoginEvent$EventType:[I

.field static final synthetic $SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionOtherEvent$EventType:[I

.field static final synthetic $SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SystemNotificationEvent$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;->values()[Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SystemNotificationEvent$EventType:[I

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SystemNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;->AlarmArrived:Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_20

    :goto_0
    :try_start_1
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SystemNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;->ScreenOn:Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1f

    :goto_1
    :try_start_2
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SystemNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;->NetWorkChange:Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1e

    :goto_2
    :try_start_3
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SystemNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;->ServiceCreated:Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1d

    :goto_3
    invoke-static {}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->values()[Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ClientActionEvent$EventType:[I

    :try_start_4
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ClientActionEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientNotSameUserLogin:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1c

    :goto_4
    :try_start_5
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ClientActionEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientRequestCheckConnection:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1b

    :goto_5
    :try_start_6
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ClientActionEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientRequestLogin:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1a

    :goto_6
    :try_start_7
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ClientActionEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientRequestLogoff:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_19

    :goto_7
    :try_start_8
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ClientActionEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientForceOpen:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_18

    :goto_8
    :try_start_9
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ClientActionEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientSuspectBadConnection:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_17

    :goto_9
    invoke-static {}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->values()[Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ServerNotificationEvent$EventType:[I

    :try_start_a
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ServerNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ServerLineBroken:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_16

    :goto_a
    :try_start_b
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ServerNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->B2tokenExpired:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_15

    :goto_b
    :try_start_c
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ServerNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ChannelPubKeyUpdate:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_14

    :goto_c
    :try_start_d
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ServerNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ServiceTokenExpired:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_13

    :goto_d
    :try_start_e
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ServerNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ShouldUpdate:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_12

    :goto_e
    :try_start_f
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ServerNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->KickByServer:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_11

    :goto_f
    :try_start_10
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ServerNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->requireUploadLog:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :goto_10
    :try_start_11
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ServerNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->requireChannelLogLevel:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_f

    :goto_11
    invoke-static {}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;->values()[Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionOtherEvent$EventType:[I

    :try_start_12
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionOtherEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;->RecvInvalidPacket:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_e

    :goto_12
    :try_start_13
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionOtherEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;->RequestMapIsEmpty:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_d

    :goto_13
    :try_start_14
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionOtherEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;->RequestMapIsNotEmpty:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_c

    :goto_14
    :try_start_15
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionOtherEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;->StatisticsTimeoutPacket:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_b

    :goto_15
    invoke-static {}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;->values()[Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionLoginEvent$EventType:[I

    :try_start_16
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionLoginEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;->LoginFailed:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_a

    :goto_16
    :try_start_17
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionLoginEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;->LoginSuccess:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_9

    :goto_17
    :try_start_18
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionLoginEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;->LogoffCmdReturn:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_8

    :goto_18
    invoke-static {}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->values()[Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionConnectEvent$EventType:[I

    :try_start_19
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionConnectEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->SessionBuildFailed:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_7

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionConnectEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->SessionBuildSuccess:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_6

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionConnectEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->SessionRunError:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_5

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionConnectEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->AssistSessionConnectSuccess:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_4

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionConnectEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->AssistSessionConnectFailed:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_3

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionConnectEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->AssistSessionRunError:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_2

    :goto_1e
    invoke-static {}, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;->values()[Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ChannelStatusChangeEvent$EventType:[I

    :try_start_1f
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ChannelStatusChangeEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;->channelBusy:Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ChannelStatusChangeEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;->channelIdle:Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_0

    :goto_20
    return-void

    :catch_0
    move-exception v0

    goto :goto_20

    :catch_1
    move-exception v0

    goto :goto_1f

    :catch_2
    move-exception v0

    goto :goto_1e

    :catch_3
    move-exception v0

    goto :goto_1d

    :catch_4
    move-exception v0

    goto :goto_1c

    :catch_5
    move-exception v0

    goto :goto_1b

    :catch_6
    move-exception v0

    goto :goto_1a

    :catch_7
    move-exception v0

    goto :goto_19

    :catch_8
    move-exception v0

    goto :goto_18

    :catch_9
    move-exception v0

    goto/16 :goto_17

    :catch_a
    move-exception v0

    goto/16 :goto_16

    :catch_b
    move-exception v0

    goto/16 :goto_15

    :catch_c
    move-exception v0

    goto/16 :goto_14

    :catch_d
    move-exception v0

    goto/16 :goto_13

    :catch_e
    move-exception v0

    goto/16 :goto_12

    :catch_f
    move-exception v0

    goto/16 :goto_11

    :catch_10
    move-exception v0

    goto/16 :goto_10

    :catch_11
    move-exception v0

    goto/16 :goto_f

    :catch_12
    move-exception v0

    goto/16 :goto_e

    :catch_13
    move-exception v0

    goto/16 :goto_d

    :catch_14
    move-exception v0

    goto/16 :goto_c

    :catch_15
    move-exception v0

    goto/16 :goto_b

    :catch_16
    move-exception v0

    goto/16 :goto_a

    :catch_17
    move-exception v0

    goto/16 :goto_9

    :catch_18
    move-exception v0

    goto/16 :goto_8

    :catch_19
    move-exception v0

    goto/16 :goto_7

    :catch_1a
    move-exception v0

    goto/16 :goto_6

    :catch_1b
    move-exception v0

    goto/16 :goto_5

    :catch_1c
    move-exception v0

    goto/16 :goto_4

    :catch_1d
    move-exception v0

    goto/16 :goto_3

    :catch_1e
    move-exception v0

    goto/16 :goto_2

    :catch_1f
    move-exception v0

    goto/16 :goto_1

    :catch_20
    move-exception v0

    goto/16 :goto_0
.end method
