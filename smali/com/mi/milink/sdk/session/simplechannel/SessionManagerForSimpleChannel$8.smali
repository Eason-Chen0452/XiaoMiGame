.class synthetic Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ClientActionEvent$EventType:[I

.field static final synthetic $SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType:[I

.field static final synthetic $SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionConnectEvent$EventType:[I

.field static final synthetic $SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionLoginEvent$EventType:[I

.field static final synthetic $SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionOtherEvent$EventType:[I

.field static final synthetic $SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;->values()[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType:[I

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;->ScreenOn:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_14

    :goto_0
    :try_start_1
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;->NetWorkChange:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_13

    :goto_1
    invoke-static {}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;->values()[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ClientActionEvent$EventType:[I

    :try_start_2
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ClientActionEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;->ClientRequestCheckConnection:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_12

    :goto_2
    :try_start_3
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ClientActionEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;->ClientRequestLogin:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_11

    :goto_3
    :try_start_4
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ClientActionEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;->ClientRequestLogoff:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_10

    :goto_4
    :try_start_5
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ClientActionEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;->ClientForceOpen:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_f

    :goto_5
    invoke-static {}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->values()[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType:[I

    :try_start_6
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->B2tokenExpired:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_e

    :goto_6
    :try_start_7
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->ChannelPubKeyUpdate:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_d

    :goto_7
    :try_start_8
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->ChannelDelPubKey:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_c

    :goto_8
    :try_start_9
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->ServerLineBroken:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_b

    :goto_9
    invoke-static {}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->values()[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionOtherEvent$EventType:[I

    :try_start_a
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionOtherEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->RecvInvalidPacket:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionOtherEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->RequestMapIsEmpty:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_9

    :goto_b
    :try_start_c
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionOtherEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->RequestMapIsNotEmpty:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_8

    :goto_c
    :try_start_d
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionOtherEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->StatisticsTimeoutPacket:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_7

    :goto_d
    :try_start_e
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionOtherEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->PackageNeedRetry:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_6

    :goto_e
    invoke-static {}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;->values()[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionLoginEvent$EventType:[I

    :try_start_f
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionLoginEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;->LoginFailed:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_5

    :goto_f
    :try_start_10
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionLoginEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;->LoginSuccess:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4

    :goto_10
    :try_start_11
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionLoginEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;->LogoffCmdReturn:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_3

    :goto_11
    invoke-static {}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;->values()[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionConnectEvent$EventType:[I

    :try_start_12
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionConnectEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;->SessionBuildFailed:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2

    :goto_12
    :try_start_13
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionConnectEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;->SessionBuildSuccess:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1

    :goto_13
    :try_start_14
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionConnectEvent$EventType:[I

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;->SessionRunError:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_0

    :goto_14
    return-void

    :catch_0
    move-exception v0

    goto :goto_14

    :catch_1
    move-exception v0

    goto :goto_13

    :catch_2
    move-exception v0

    goto :goto_12

    :catch_3
    move-exception v0

    goto :goto_11

    :catch_4
    move-exception v0

    goto :goto_10

    :catch_5
    move-exception v0

    goto :goto_f

    :catch_6
    move-exception v0

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    goto :goto_c

    :catch_9
    move-exception v0

    goto/16 :goto_b

    :catch_a
    move-exception v0

    goto/16 :goto_a

    :catch_b
    move-exception v0

    goto/16 :goto_9

    :catch_c
    move-exception v0

    goto/16 :goto_8

    :catch_d
    move-exception v0

    goto/16 :goto_7

    :catch_e
    move-exception v0

    goto/16 :goto_6

    :catch_f
    move-exception v0

    goto/16 :goto_5

    :catch_10
    move-exception v0

    goto/16 :goto_4

    :catch_11
    move-exception v0

    goto/16 :goto_3

    :catch_12
    move-exception v0

    goto/16 :goto_2

    :catch_13
    move-exception v0

    goto/16 :goto_1

    :catch_14
    move-exception v0

    goto/16 :goto_0
.end method
