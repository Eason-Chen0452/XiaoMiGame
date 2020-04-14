.class final Lcom/google/protobuf/TextFormat$Tokenizer;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tokenizer"
.end annotation


# static fields
.field private static final DOUBLE_INFINITY:Ljava/util/regex/Pattern;

.field private static final FLOAT_INFINITY:Ljava/util/regex/Pattern;

.field private static final FLOAT_NAN:Ljava/util/regex/Pattern;

.field private static final TOKEN:Ljava/util/regex/Pattern;

.field private static final WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
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

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x2

    .line 621
    const-string v0, "(\\s|(#.*$))++"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    .line 623
    const-string v0, "[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|\'([^\'\n\\\\]|\\\\.)*+(\'|\\\\?$)"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$Tokenizer;->TOKEN:Ljava/util/regex/Pattern;

    .line 630
    const-string v0, "-?inf(inity)?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$Tokenizer;->DOUBLE_INFINITY:Ljava/util/regex/Pattern;

    .line 633
    const-string v0, "-?inf(inity)?f?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$Tokenizer;->FLOAT_INFINITY:Ljava/util/regex/Pattern;

    .line 636
    const-string v0, "nanf?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$Tokenizer;->FLOAT_NAN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->pos:I

    .line 611
    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->line:I

    .line 612
    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->column:I

    .line 616
    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->previousLine:I

    .line 617
    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->previousColumn:I

    .line 642
    iput-object p1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    .line 643
    sget-object v0, Lcom/google/protobuf/TextFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    .line 644
    invoke-direct {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->skipWhitespace()V

    .line 645
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 646
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/google/protobuf/TextFormat$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Lcom/google/protobuf/TextFormat$1;

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$Tokenizer;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/protobuf/TextFormat$Tokenizer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/TextFormat$Tokenizer;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    return-object v0
.end method

.method private consumeByteString(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    const/4 v2, 0x0

    .line 1001
    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1003
    .local v2, "quote":C
    :cond_0
    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    const/16 v4, 0x27

    if-eq v2, v4, :cond_1

    .line 1004
    const-string v4, "Expected string."

    invoke-virtual {p0, v4}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v4

    throw v4

    .line 1007
    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_3

    .line 1009
    :cond_2
    const-string v4, "String missing ending quote."

    invoke-virtual {p0, v4}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v4

    throw v4

    .line 1013
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "escaped":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 1016
    .local v3, "result":Lcom/google/protobuf/ByteString;
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 1017
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    return-void

    .line 1018
    .end local v1    # "escaped":Ljava/lang/String;
    .end local v3    # "result":Lcom/google/protobuf/ByteString;
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;
    invoke-virtual {v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v4

    throw v4
.end method

.method private floatParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;
    .locals 3
    .param p1, "e"    # Ljava/lang/NumberFormatException;

    .prologue
    .line 1058
    const-string v1, "Couldn\'t parse number: "

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private integerParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;
    .locals 3
    .param p1, "e"    # Ljava/lang/NumberFormatException;

    .prologue
    .line 1050
    const-string v1, "Couldn\'t parse integer: "

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private skipWhitespace()V
    .locals 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/google/protobuf/TextFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 694
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 697
    :cond_0
    return-void
.end method


# virtual methods
.method public atEnd()Z
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

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
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 717
    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    .line 720
    :cond_0
    return-void
.end method

.method public consumeBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 943
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 947
    const/4 v0, 0x1

    .line 952
    :goto_0
    return v0

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 951
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 952
    const/4 v0, 0x0

    goto :goto_0

    .line 954
    :cond_3
    const-string v0, "Expected \"true\" or \"false\"."

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public consumeByteString()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeByteString(Ljava/util/List;)V

    .line 987
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 988
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeByteString(Ljava/util/List;)V

    goto :goto_0

    .line 990
    :cond_1
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public consumeDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 869
    sget-object v4, Lcom/google/protobuf/TextFormat$Tokenizer;->DOUBLE_INFINITY:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 870
    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 871
    .local v1, "negative":Z
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 872
    if-eqz v1, :cond_0

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 881
    .end local v1    # "negative":Z
    :goto_0
    return-wide v4

    .line 872
    .restart local v1    # "negative":Z
    :cond_0
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 874
    .end local v1    # "negative":Z
    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v5, "nan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 875
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 876
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 879
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 880
    .local v2, "result":D
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v2

    .line 881
    goto :goto_0

    .line 882
    .end local v2    # "result":D
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->floatParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v4

    throw v4
.end method

.method public consumeFloat()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 907
    sget-object v3, Lcom/google/protobuf/TextFormat$Tokenizer;->FLOAT_INFINITY:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 908
    iget-object v3, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 909
    .local v1, "negative":Z
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 910
    if-eqz v1, :cond_0

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    .line 919
    .end local v1    # "negative":Z
    :goto_0
    return v3

    .line 910
    .restart local v1    # "negative":Z
    :cond_0
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 912
    .end local v1    # "negative":Z
    :cond_1
    sget-object v3, Lcom/google/protobuf/TextFormat$Tokenizer;->FLOAT_NAN:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 913
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 914
    const/high16 v3, 0x7fc00000    # NaNf

    goto :goto_0

    .line 917
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 918
    .local v2, "result":F
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 919
    goto :goto_0

    .line 920
    .end local v2    # "result":F
    :catch_0
    move-exception v0

    .line 921
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->floatParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v3

    throw v3
.end method

.method public consumeIdentifier()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 749
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 750
    iget-object v3, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 751
    .local v0, "c":C
    const/16 v3, 0x61

    if-gt v3, v0, :cond_0

    const/16 v3, 0x7a

    if-le v0, v3, :cond_3

    :cond_0
    const/16 v3, 0x41

    if-gt v3, v0, :cond_1

    const/16 v3, 0x5a

    if-le v0, v3, :cond_3

    :cond_1
    const/16 v3, 0x30

    if-gt v3, v0, :cond_2

    const/16 v3, 0x39

    if-le v0, v3, :cond_3

    :cond_2
    const/16 v3, 0x5f

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_4

    .line 749
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    :cond_4
    iget-object v3, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1d

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Expected identifier. Found \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v3

    throw v3

    .line 762
    .end local v0    # "c":C
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 763
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 764
    return-object v2
.end method

.method public consumeInt32()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 786
    :try_start_0
    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/protobuf/TextFormat;->parseInt32(Ljava/lang/String;)I

    move-result v1

    .line 787
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    return v1

    .line 789
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v2

    throw v2
.end method

.method public consumeInt64()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/TextFormat;->parseInt64(Ljava/lang/String;)J

    move-result-wide v2

    .line 815
    .local v2, "result":J
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    return-wide v2

    .line 817
    .end local v2    # "result":J
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v1

    throw v1
.end method

.method public consumeString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public consumeUInt32()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 800
    :try_start_0
    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/protobuf/TextFormat;->parseUInt32(Ljava/lang/String;)I

    move-result v1

    .line 801
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    return v1

    .line 803
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v2

    throw v2
.end method

.method public consumeUInt64()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 841
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/TextFormat;->parseUInt64(Ljava/lang/String;)J

    move-result-wide v2

    .line 842
    .local v2, "result":J
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    return-wide v2

    .line 844
    .end local v2    # "result":J
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v1

    throw v1
.end method

.method public lookingAt(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public lookingAtInteger()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 727
    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 732
    :cond_0
    :goto_0
    return v1

    .line 731
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 732
    .local v0, "c":C
    const/16 v2, 0x30

    if-gt v2, v0, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public nextToken()V
    .locals 3

    .prologue
    .line 655
    iget v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->line:I

    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->previousLine:I

    .line 656
    iget v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->column:I

    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->previousColumn:I

    .line 659
    :goto_0
    iget v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->pos:I

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 660
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 661
    iget v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->line:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->line:I

    .line 662
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->column:I

    .line 666
    :goto_1
    iget v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->pos:I

    goto :goto_0

    .line 664
    :cond_0
    iget v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->column:I

    goto :goto_1

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 686
    :goto_2
    return-void

    .line 674
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/google/protobuf/TextFormat$Tokenizer;->TOKEN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 675
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 684
    :goto_3
    invoke-direct {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->skipWhitespace()V

    goto :goto_2

    .line 680
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_3
.end method

.method public parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;
    .locals 3
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 1029
    new-instance v0, Lcom/google/protobuf/TextFormat$ParseException;

    iget v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->line:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->column:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/protobuf/TextFormat$ParseException;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;
    .locals 3
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 1040
    new-instance v0, Lcom/google/protobuf/TextFormat$ParseException;

    iget v1, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->previousLine:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->previousColumn:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/protobuf/TextFormat$ParseException;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public tryConsume(Ljava/lang/String;)Z
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 706
    const/4 v0, 0x1

    .line 708
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tryConsumeDouble()Z
    .locals 2

    .prologue
    .line 893
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeDouble()D
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    const/4 v1, 0x1

    .line 896
    :goto_0
    return v1

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Lcom/google/protobuf/TextFormat$ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tryConsumeFloat()Z
    .locals 2

    .prologue
    .line 931
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeFloat()F
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    const/4 v1, 0x1

    .line 934
    :goto_0
    return v1

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Lcom/google/protobuf/TextFormat$ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tryConsumeIdentifier()Z
    .locals 2

    .prologue
    .line 773
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    const/4 v1, 0x1

    .line 776
    :goto_0
    return v1

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Lcom/google/protobuf/TextFormat$ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tryConsumeInt64()Z
    .locals 2

    .prologue
    .line 828
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeInt64()J
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    const/4 v1, 0x1

    .line 831
    :goto_0
    return v1

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Lcom/google/protobuf/TextFormat$ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tryConsumeString()Z
    .locals 2

    .prologue
    .line 972
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    const/4 v1, 0x1

    .line 975
    :goto_0
    return v1

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Lcom/google/protobuf/TextFormat$ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tryConsumeUInt64()Z
    .locals 2

    .prologue
    .line 855
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeUInt64()J
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    const/4 v1, 0x1

    .line 858
    :goto_0
    return v1

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Lcom/google/protobuf/TextFormat$ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method
