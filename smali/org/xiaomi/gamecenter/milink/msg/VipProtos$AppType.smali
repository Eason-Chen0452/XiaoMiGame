.class public final enum Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/VipProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

.field public static final enum GAMECENTER:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

.field public static final GAMECENTER_VALUE:I = 0x2

.field public static final enum SDK:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

.field public static final SDK_VALUE:I = 0x1

.field private static final VALUES:[Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    const-string v1, "SDK"

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->SDK:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    const-string v1, "GAMECENTER"

    invoke-direct {v0, v1, v2, v2, v4}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->GAMECENTER:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    new-array v0, v4, [Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->SDK:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->GAMECENTER:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    aput-object v1, v0, v2

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->$VALUES:[Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/aw;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/aw;-><init>()V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->values()[Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    move-result-object v0

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->VALUES:[Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

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

    iput p3, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->index:I

    iput p4, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->SDK:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->GAMECENTER:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->VALUES:[Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;
    .locals 1

    const-class v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    return-object v0
.end method

.method public static values()[Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->$VALUES:[Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    invoke-virtual {v0}, [Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
