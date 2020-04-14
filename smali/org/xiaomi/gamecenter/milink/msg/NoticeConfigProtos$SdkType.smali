.class public final enum Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

.field public static final enum MIGAME:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

.field public static final MIGAME_VALUE:I = 0x2

.field public static final enum OFFLINE:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

.field public static final OFFLINE_VALUE:I = 0x1

.field public static final enum SERVICE:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

.field public static final SERVICE_VALUE:I = 0x3

.field private static final VALUES:[Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v4, v4, v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->OFFLINE:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    const-string v1, "MIGAME"

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->MIGAME:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    const-string v1, "SERVICE"

    invoke-direct {v0, v1, v3, v3, v5}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->SERVICE:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    new-array v0, v5, [Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->OFFLINE:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->MIGAME:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->SERVICE:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->$VALUES:[Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/ap;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/ap;-><init>()V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->values()[Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    move-result-object v0

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->VALUES:[Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->index:I

    iput p4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->OFFLINE:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->MIGAME:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->SERVICE:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->VALUES:[Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;
    .locals 1

    const-class v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    return-object v0
.end method

.method public static values()[Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->$VALUES:[Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    invoke-virtual {v0}, [Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
