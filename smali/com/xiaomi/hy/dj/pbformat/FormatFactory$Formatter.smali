.class public final enum Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/hy/dj/pbformat/FormatFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Formatter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

.field public static final enum COUCHDB:Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

.field public static final enum JAVA_PROPS:Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

.field public static final enum JSON:Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;


# instance fields
.field private formatterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    const-string v1, "COUCHDB"

    const-class v2, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat;

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;->COUCHDB:Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    const-string v1, "JAVA_PROPS"

    const-class v2, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;->JAVA_PROPS:Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    const-string v1, "JSON"

    const-class v2, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;->JSON:Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    sget-object v1, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;->COUCHDB:Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;->JAVA_PROPS:Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;->JSON:Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;->$VALUES:[Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;->formatterClass:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;
    .locals 1

    const-class v0, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;->$VALUES:[Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    invoke-virtual {v0}, [Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;

    return-object v0
.end method


# virtual methods
.method protected final getFormatterClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/FormatFactory$Formatter;->formatterClass:Ljava/lang/Class;

    return-object v0
.end method
