.class final enum Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingPolicy$2;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingPolicy;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingPolicy$1;)V

    return-void
.end method


# virtual methods
.method public final translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/FieldNamingPolicy$2;->upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
