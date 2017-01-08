.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final NON_EXECUTE_PREFIX:[C


# instance fields
.field private final buffer:[C

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private hasToken:Z

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private name:Ljava/lang/String;

.field private pos:I

.field private skipping:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/stream/JsonScope;",
            ">;"
        }
    .end annotation
.end field

.field private final stringPool:Lcom/google/gson/stream/StringPool;

.field private token:Lcom/google/gson/stream/JsonToken;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Lcom/google/gson/stream/StringPool;

    invoke-direct {v0}, Lcom/google/gson/stream/StringPool;-><init>()V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stringPool:Lcom/google/gson/stream/StringPool;

    .line 197
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 203
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 204
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 205
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 210
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->bufferStartLine:I

    .line 211
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    .line 215
    sget-object v0, Lcom/google/gson/stream/JsonScope;->EMPTY_DOCUMENT:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(Lcom/google/gson/stream/JsonScope;)V

    .line 241
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    .line 247
    if-nez p1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 251
    return-void
.end method

.method private advance()Lcom/google/gson/stream/JsonToken;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 432
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 434
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 435
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 436
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 437
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 438
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    .line 439
    return-object v0
.end method

.method private checkLenient()V
    .locals 1

    .prologue
    .line 938
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v0, :cond_0

    .line 939
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 941
    :cond_0
    return-void
.end method

.method private consumeNonExecutePrefix()V
    .locals 3

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    .line 412
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 414
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 425
    :cond_2
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method private decodeLiteral()V
    .locals 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 1151
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1140
    :cond_1
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 1143
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1144
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1147
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1148
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0
.end method

.method private expect(Lcom/google/gson/stream/JsonToken;)V
    .locals 3
    .parameter

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 330
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    if-eq v0, p1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 334
    return-void
.end method

.method private fillBuffer(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 827
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-ge v0, v3, :cond_1

    .line 828
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v3, v3, v0

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 829
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->bufferStartLine:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->bufferStartLine:I

    .line 830
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    .line 827
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 832
    :cond_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    goto :goto_1

    .line 836
    :cond_1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-eq v0, v3, :cond_5

    .line 837
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 838
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 843
    :goto_2
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v5, v5

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 846
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 849
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->bufferStartLine:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v0, v0, v1

    const v3, 0xfeff

    if-ne v0, v3, :cond_3

    .line 850
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 851
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    .line 854
    :cond_3
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v0, p1, :cond_2

    move v1, v2

    .line 858
    :cond_4
    return v1

    .line 840
    :cond_5
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_2
.end method

.method private getColumnNumber()I
    .locals 4

    .prologue
    .line 872
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    .line 873
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-ge v0, v2, :cond_1

    .line 874
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 875
    const/4 v1, 0x1

    .line 873
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 877
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 880
    :cond_1
    return v1
.end method

.method private getLineNumber()I
    .locals 4

    .prologue
    .line 862
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->bufferStartLine:I

    .line 863
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-ge v0, v2, :cond_1

    .line 864
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 865
    add-int/lit8 v1, v1, 0x1

    .line 863
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 868
    :cond_1
    return v1
.end method

.method private getSnippet()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/16 v4, 0x14

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1164
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1165
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1166
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1167
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1168
    return-object v0
.end method

.method private nextInArray(Z)Lcom/google/gson/stream/JsonToken;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 678
    if-eqz p1, :cond_0

    .line 679
    sget-object v0, Lcom/google/gson/stream/JsonScope;->NONEMPTY_ARRAY:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->replaceTop(Lcom/google/gson/stream/JsonScope;)V

    .line 696
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 713
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 714
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    :goto_1
    return-object v0

    .line 682
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 692
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 684
    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->pop()Lcom/google/gson/stream/JsonScope;

    .line 685
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 686
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_1

    .line 688
    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_0

    .line 698
    :sswitch_3
    if-eqz p1, :cond_1

    .line 699
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->pop()Lcom/google/gson/stream/JsonScope;

    .line 700
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 701
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_1

    .line 707
    :cond_1
    :sswitch_4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 708
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 709
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 710
    const-string v0, "null"

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 711
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_1

    .line 696
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_3
    .end sparse-switch

    .line 682
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextInObject(Z)Lcom/google/gson/stream/JsonToken;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 725
    if-eqz p1, :cond_0

    .line 727
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 733
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 750
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 751
    sparse-switch v0, :sswitch_data_0

    .line 758
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 759
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 760
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextLiteral()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    .line 761
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 762
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 729
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->pop()Lcom/google/gson/stream/JsonScope;

    .line 730
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 731
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 768
    :goto_0
    return-object v0

    .line 736
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 745
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 738
    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->pop()Lcom/google/gson/stream/JsonScope;

    .line 739
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 740
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 753
    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 755
    :sswitch_3
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    .line 766
    :cond_1
    sget-object v0, Lcom/google/gson/stream/JsonScope;->DANGLING_NAME:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->replaceTop(Lcom/google/gson/stream/JsonScope;)V

    .line 767
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 768
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 727
    nop

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
    .end packed-switch

    .line 751
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
    .end sparse-switch

    .line 736
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextLiteral()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1023
    const/4 v0, 0x0

    .line 1026
    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1027
    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v2, v3, :cond_3

    .line 1028
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v2, v3

    .line 1029
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1048
    :goto_1
    :sswitch_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1049
    iget-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    if-eqz v2, :cond_1

    .line 1050
    const-string v0, "skipped!"

    .line 1066
    :goto_2
    return-object v0

    .line 1035
    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_1

    .line 1051
    :cond_1
    if-nez v0, :cond_2

    .line 1052
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stringPool:Lcom/google/gson/stream/StringPool;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/gson/stream/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1054
    :cond_2
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1060
    :cond_3
    if-nez v0, :cond_4

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1063
    :cond_4
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1064
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1066
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1029
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2c -> :sswitch_0
        0x2f -> :sswitch_1
        0x3a -> :sswitch_0
        0x3b -> :sswitch_1
        0x3d -> :sswitch_1
        0x5b -> :sswitch_0
        0x5c -> :sswitch_1
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private nextNonWhitespace()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 884
    :goto_0
    :sswitch_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 886
    sparse-switch v0, :sswitch_data_0

    .line 931
    :cond_1
    :goto_1
    return v0

    .line 894
    :sswitch_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 898
    :cond_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 899
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v2

    .line 900
    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    .line 903
    :sswitch_2
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 904
    const-string v0, "*/"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 905
    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 907
    :cond_3
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 912
    :sswitch_3
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 913
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    goto :goto_0

    .line 926
    :sswitch_4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 927
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    goto :goto_0

    .line 934
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    .line 900
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private nextString(C)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 981
    const/4 v0, 0x0

    .line 984
    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 985
    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v2, v3, :cond_5

    .line 986
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v2, v3

    .line 988
    if-ne v2, p1, :cond_3

    .line 989
    iget-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    if-eqz v2, :cond_1

    .line 990
    const-string v0, "skipped!"

    .line 995
    :goto_1
    return-object v0

    .line 991
    :cond_1
    if-nez v0, :cond_2

    .line 992
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stringPool:Lcom/google/gson/stream/StringPool;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/gson/stream/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 994
    :cond_2
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 998
    :cond_3
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_7

    .line 999
    if-nez v0, :cond_4

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1002
    :cond_4
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1003
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1004
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_2
    move v5, v0

    move-object v0, v1

    move v1, v5

    .line 1006
    goto :goto_0

    .line 1008
    :cond_5
    if-nez v0, :cond_6

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1011
    :cond_6
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1012
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1014
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_2
.end method

.method private nextValue()Lcom/google/gson/stream/JsonToken;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 795
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 796
    sparse-switch v0, :sswitch_data_0

    .line 815
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 816
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readLiteral()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    :goto_0
    return-object v0

    .line 798
    :sswitch_0
    sget-object v0, Lcom/google/gson/stream/JsonScope;->EMPTY_OBJECT:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(Lcom/google/gson/stream/JsonScope;)V

    .line 799
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 800
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 803
    :sswitch_1
    sget-object v0, Lcom/google/gson/stream/JsonScope;->EMPTY_ARRAY:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(Lcom/google/gson/stream/JsonScope;)V

    .line 804
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 805
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 808
    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 810
    :sswitch_3
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 811
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 812
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 796
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private objectValue()Lcom/google/gson/stream/JsonToken;
    .locals 2

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 786
    :pswitch_0
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 780
    :pswitch_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 781
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    .line 782
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 789
    :cond_1
    :pswitch_2
    sget-object v0, Lcom/google/gson/stream/JsonScope;->NONEMPTY_OBJECT:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->replaceTop(Lcom/google/gson/stream/JsonScope;)V

    .line 790
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    return-object v0

    .line 776
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private peekStack()Lcom/google/gson/stream/JsonScope;
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/stream/JsonScope;

    return-object v0
.end method

.method private pop()Lcom/google/gson/stream/JsonScope;
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/stream/JsonScope;

    return-object v0
.end method

.method private push(Lcom/google/gson/stream/JsonScope;)V
    .locals 1
    .parameter

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    return-void
.end method

.method private quickPeek()Lcom/google/gson/stream/JsonToken;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 363
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 397
    :cond_0
    :goto_0
    return-object v0

    .line 367
    :cond_1
    sget-object v0, Lcom/google/gson/stream/JsonReader$1;->$SwitchMap$com$google$gson$stream$JsonScope:[I

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekStack()Lcom/google/gson/stream/JsonScope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 402
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 369
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_2

    .line 370
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 372
    :cond_2
    sget-object v0, Lcom/google/gson/stream/JsonScope;->NONEMPTY_DOCUMENT:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->replaceTop(Lcom/google/gson/stream/JsonScope;)V

    .line 373
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 374
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    .line 375
    const-string v1, "Expected JSON document to start with \'[\' or \'{\'"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    goto :goto_0

    .line 379
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextInArray(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 381
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->nextInArray(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 383
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextInObject(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 385
    :pswitch_4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->objectValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 387
    :pswitch_5
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->nextInObject(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 390
    :pswitch_6
    :try_start_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 391
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v1, :cond_0

    .line 394
    const-string v0, "Expected EOF"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :catch_0
    move-exception v0

    iput-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 397
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 400
    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private readEscapeCharacter()C
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1083
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1088
    sparse-switch v0, :sswitch_data_0

    .line 1116
    :goto_0
    return v0

    .line 1090
    :sswitch_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v0, v1, :cond_1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1091
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stringPool:Lcom/google/gson/stream/StringPool;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gson/stream/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v0

    .line 1094
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1095
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    goto :goto_0

    .line 1098
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 1101
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 1104
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    .line 1107
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 1110
    :sswitch_5
    const/16 v0, 0xc

    goto :goto_0

    .line 1088
    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private readLiteral()Lcom/google/gson/stream/JsonToken;
    .locals 2

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextLiteral()Ljava/lang/String;

    move-result-object v0

    .line 1125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1126
    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1128
    :cond_0
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 1129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 1130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v0
.end method

.method private replaceTop(Lcom/google/gson/stream/JsonScope;)V
    .locals 2
    .parameter

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 674
    return-void
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 959
    :goto_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 960
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 961
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_3

    .line 962
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 965
    :cond_1
    const/4 v1, 0x1

    .line 967
    :cond_2
    return v1

    .line 959
    :cond_3
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method private skipToEndOfLine()V
    .locals 3

    .prologue
    .line 949
    :cond_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 951
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 952
    :cond_2
    return-void
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .parameter

    .prologue
    .line 1158
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 299
    return-void
.end method

.method public beginObject()V
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 315
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->hasToken:Z

    .line 628
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 629
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 630
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 631
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:Ljava/util/List;

    sget-object v1, Lcom/google/gson/stream/JsonScope;->CLOSED:Lcom/google/gson/stream/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 633
    return-void
.end method

.method public endArray()V
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 307
    return-void
.end method

.method public endObject()V
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 323
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 341
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLenient()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 3

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 487
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_1

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    const/4 v0, 0x1

    .line 500
    :goto_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 501
    return v0

    .line 494
    :cond_2
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 495
    const/4 v0, 0x0

    goto :goto_0

    .line 497
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a boolean: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble()D
    .locals 4

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 535
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 541
    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids octal prefixes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_1
    iget-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 546
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 550
    return-wide v0
.end method

.method public nextInt()I
    .locals 5

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 600
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 615
    :cond_1
    int-to-long v1, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 616
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids octal prefixes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 609
    double-to-int v0, v1

    .line 610
    int-to-double v3, v0

    cmpl-double v1, v3, v1

    if-eqz v1, :cond_1

    .line 611
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 620
    return v0
.end method

.method public nextLong()J
    .locals 6

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 565
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 566
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 580
    :cond_1
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 581
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids octal prefixes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 574
    double-to-long v0, v2

    .line 575
    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_1

    .line 576
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 585
    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 451
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    .line 452
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    .line 455
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 456
    return-object v0
.end method

.method public nextNull()V
    .locals 3

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 513
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_1

    .line 514
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 518
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a null: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 522
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 469
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_1

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 474
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    .line 475
    return-object v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 1

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->quickPeek()Lcom/google/gson/stream/JsonToken;

    .line 350
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    if-nez v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->decodeLiteral()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v0
.end method

.method public final setLenient(Z)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 284
    return-void
.end method

.method public skipValue()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    move v0, v1

    .line 645
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    .line 646
    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_3

    .line 647
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 651
    :cond_2
    :goto_0
    if-nez v0, :cond_0

    .line 653
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    .line 654
    return-void

    .line 648
    :cond_3
    :try_start_1
    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_2

    .line 649
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
