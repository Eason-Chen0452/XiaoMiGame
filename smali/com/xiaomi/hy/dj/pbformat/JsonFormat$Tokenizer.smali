.class public Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/hy/dj/pbformat/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Tokenizer"
.end annotation


# static fields
.field private static final DOUBLE_INFINITY:Ljava/util/regex/Pattern;

.field private static final FLOAT_INFINITY:Ljava/util/regex/Pattern;

.field private static final FLOAT_NAN:Ljava/util/regex/Pattern;

.field private static final TOKEN:Ljava/util/regex/Pattern;

.field private static final WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field private final byteSerializer:Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;

.field private column:I

.field private currentToken:Ljava/lang/String;

.field private line:I

.field private final matcher:Ljava/util/regex/Matcher;

.field private pos:I

.field private previousColumn:I

.field private previousLine:I

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x2

    const-string v0, "(\\s|(#.*$))++"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|\'([^\'\n\\\\]|\\\\.)*+(\'|\\\\?$)"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->TOKEN:Ljava/util/regex/Pattern;

    const-string v0, "-?inf(inity)?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->DOUBLE_INFINITY:Ljava/util/regex/Pattern;

    const-string v0, "-?inf(inity)?f?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->FLOAT_INFINITY:Ljava/util/regex/Pattern;

    const-string v0, "nanf?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->FLOAT_NAN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->pos:I

    iput v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->line:I

    iput v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->column:I

    iput v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->previousLine:I

    iput v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->previousColumn:I

    iput-object p1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->byteSerializer:Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;

    iput-object p2, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    sget-object v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->skipWhitespace()V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V

    return-void
.end method

.method private floatParseException(Ljava/lang/NumberFormatException;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t parse number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    return-object v0
.end method

.method private integerParseException(Ljava/lang/NumberFormatException;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t parse integer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    return-object v0
.end method

.method private skipWhitespace()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :cond_0
    return-void
.end method


# virtual methods
.method public atEnd()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public consume(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public consumeBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "Expected \"true\" or \"false\"."

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public consumeByteString()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_0
    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const-string v0, "Expected string."

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_3

    :cond_2
    const-string v0, "String missing ending quote."

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->byteSerializer:Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;

    invoke-interface {v1, v0}, Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public consumeDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->DOUBLE_INFINITY:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->floatParseException(Ljava/lang/NumberFormatException;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public consumeFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->FLOAT_INFINITY:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V

    if-eqz v0, :cond_0

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->FLOAT_NAN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V

    const/high16 v0, 0x7fc00000    # NaNf

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->floatParseException(Ljava/lang/NumberFormatException;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public consumeIdentifier()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-gt v2, v1, :cond_0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-gt v2, v1, :cond_1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_3

    :cond_1
    const/16 v2, 0x30

    if-gt v2, v1, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    :cond_2
    const/16 v2, 0x5f

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_3

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected identifier. -"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "\"|\'"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V

    return-object v0
.end method

.method public consumeInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->parseInt32(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public consumeInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->parseInt64(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public consumeString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_0
    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const/16 v1, 0x2c

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Expected string."

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_3

    :cond_2
    const-string v0, "String missing ending quote."

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->unescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V
    :try_end_1
    .catch Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public consumeUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->parseUInt32(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public consumeUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->parseUInt64(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public currentToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    return-object v0
.end method

.method public lookingAtBoolean()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "true"

    iget-object v2, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "false"

    iget-object v2, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public lookingAtFloat()Z
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->lookingAtInteger()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lookingAtInteger()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-gt v2, v1, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    :cond_2
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public nextToken()V
    .locals 3

    iget v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->line:I

    iput v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->previousLine:I

    iget v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->column:I

    iput v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->previousColumn:I

    :goto_0
    iget v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->pos:I

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->line:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->line:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->column:I

    :goto_1
    iget v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->pos:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->column:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->TOKEN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_3
    invoke-direct {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->skipWhitespace()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_3
.end method

.method public parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
    .locals 3

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->line:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->column:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public parseExceptionPreviousToken(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
    .locals 3

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->previousLine:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->previousColumn:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public tryConsume(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->nextToken()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
