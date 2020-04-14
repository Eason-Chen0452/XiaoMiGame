.class public abstract Lcom/google/protobuf/AbstractMessage;
.super Lcom/google/protobuf/AbstractMessageLite;
.source "AbstractMessage.java"

# interfaces
.implements Lcom/google/protobuf/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/AbstractMessage$Builder;
    }
.end annotation


# instance fields
.field private memoizedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessageLite;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 229
    return-void
.end method

.method private static compareBytes(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 140
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 141
    check-cast p0, [B

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [B

    check-cast p1, [B

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 143
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage;->toByteString(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessage;->toByteString(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static compareFields(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "a":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .local p1, "b":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 157
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v8

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v7

    .line 160
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 161
    .local v0, "descriptor":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 164
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 165
    .local v5, "value1":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 166
    .local v6, "value2":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v8

    sget-object v9, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v8, v9, :cond_4

    .line 167
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v3, v5

    .line 168
    check-cast v3, Ljava/util/List;

    .local v3, "list1":Ljava/util/List;
    move-object v4, v6

    .line 169
    check-cast v4, Ljava/util/List;

    .line 170
    .local v4, "list2":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 173
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 174
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/protobuf/AbstractMessage;->compareBytes(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    .end local v1    # "i":I
    .end local v3    # "list1":Ljava/util/List;
    .end local v4    # "list2":Ljava/util/List;
    :cond_3
    invoke-static {v5, v6}, Lcom/google/protobuf/AbstractMessage;->compareBytes(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 186
    :cond_4
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 191
    .end local v0    # "descriptor":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .end local v5    # "value1":Ljava/lang/Object;
    .end local v6    # "value2":Ljava/lang/Object;
    :cond_5
    const/4 v7, 0x1

    goto :goto_0
.end method

.method protected static hashFields(ILjava/util/Map;)I
    .locals 7
    .param p0, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 198
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 199
    .local v1, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 200
    .local v4, "value":Ljava/lang/Object;
    mul-int/lit8 v5, p0, 0x25

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v6

    add-int p0, v5, v6

    .line 201
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v5

    sget-object v6, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v5, v6, :cond_0

    .line 202
    mul-int/lit8 v5, p0, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int p0, v5, v6

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 204
    check-cast v3, Ljava/util/List;

    .line 205
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/google/protobuf/Internal$EnumLite;>;"
    mul-int/lit8 v5, p0, 0x35

    invoke-static {v3}, Lcom/google/protobuf/Internal;->hashEnumList(Ljava/util/List;)I

    move-result v6

    add-int p0, v5, v6

    .line 206
    goto :goto_0

    .line 207
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<+Lcom/google/protobuf/Internal$EnumLite;>;"
    :cond_1
    mul-int/lit8 v5, p0, 0x35

    check-cast v4, Lcom/google/protobuf/Internal$EnumLite;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-static {v4}, Lcom/google/protobuf/Internal;->hashEnum(Lcom/google/protobuf/Internal$EnumLite;)I

    move-result v6

    add-int p0, v5, v6

    goto :goto_0

    .line 210
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v1    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_2
    return p0
.end method

.method private static toByteString(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 128
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 129
    check-cast p0, [B

    .end local p0    # "value":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    .line 131
    :goto_0
    return-object p0

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    if-ne p1, p0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    instance-of v3, p1, Lcom/google/protobuf/Message;

    if-nez v3, :cond_2

    move v1, v2

    .line 104
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 106
    check-cast v0, Lcom/google/protobuf/Message;

    .line 107
    .local v0, "otherMessage":Lcom/google/protobuf/Message;
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/protobuf/Message;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 108
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->getAllFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/protobuf/Message;->getAllFields()Ljava/util/Map;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/AbstractMessage;->compareFields(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/protobuf/Message;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public findInitializationErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0}, Lcom/google/protobuf/MessageReflection;->findMissingFields(Lcom/google/protobuf/MessageOrBuilder;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->findInitializationErrors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/MessageReflection;->delimitWithCommas(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 2
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getOneofFieldDescriptor() is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 90
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 95
    .end local v0    # "size":I
    :goto_0
    return v0

    .line 94
    .restart local v0    # "size":I
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/MessageReflection;->getSerializedSize(Lcom/google/protobuf/Message;)I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 95
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    goto :goto_0
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 2
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "hasOneof() is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 116
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedHashCode:I

    .line 117
    .local v0, "hash":I
    if-nez v0, :cond_0

    .line 118
    const/16 v0, 0x29

    .line 119
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 120
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->getAllFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/AbstractMessage;->hashFields(ILjava/util/Map;)I

    move-result v0

    .line 121
    mul-int/lit8 v1, v0, 0x1d

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 122
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedHashCode:I

    .line 124
    :cond_0
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/protobuf/MessageReflection;->isInitialized(Lcom/google/protobuf/MessageOrBuilder;)Z

    move-result v0

    return v0
.end method

.method newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;
    .locals 1

    .prologue
    .line 219
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->printToString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 1
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/MessageReflection;->writeMessageTo(Lcom/google/protobuf/Message;Lcom/google/protobuf/CodedOutputStream;Z)V

    .line 84
    return-void
.end method
