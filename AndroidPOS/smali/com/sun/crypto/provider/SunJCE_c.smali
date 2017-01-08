.class final Lcom/sun/crypto/provider/SunJCE_c;
.super Lcom/sun/crypto/provider/SunJCE_e;
.source "ProGuard"

# interfaces
.implements Lcom/sun/crypto/provider/SunJCE_d;


# static fields
.field private static f:[I

.field private static g:[I

.field private static final h:[B

.field private static final i:[B

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field private static final m:[I

.field private static final n:[I

.field private static final o:[I

.field private static final p:[I

.field private static final q:[I

.field private static final r:[I

.field private static final s:[I

.field private static final t:[I

.field private static final u:[I

.field private static final v:[B


# instance fields
.field private a:Z

.field private b:Z

.field private c:[Ljava/lang/Object;

.field private d:[I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v3, 0x1

    const/4 v15, 0x4

    const/16 v14, 0x8

    const/16 v13, 0x100

    const/4 v4, 0x0

    new-array v0, v13, [I

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->f:[I

    new-array v0, v13, [I

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->g:[I

    new-array v0, v13, [B

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    new-array v0, v13, [B

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    new-array v0, v13, [I

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->j:[I

    new-array v0, v13, [I

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->k:[I

    new-array v0, v13, [I

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->l:[I

    new-array v0, v13, [I

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->m:[I

    new-array v0, v13, [I

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    new-array v0, v13, [I

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    new-array v0, v13, [I

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    new-array v0, v13, [I

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    new-array v0, v13, [I

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->r:[I

    new-array v0, v13, [I

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->s:[I

    new-array v0, v13, [I

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->t:[I

    new-array v0, v13, [I

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->u:[I

    const/16 v0, 0x1e

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->v:[B

    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->f:[I

    aput v3, v0, v4

    move v1, v3

    :goto_0
    if-ge v1, v13, :cond_1

    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->f:[I

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    shl-int/lit8 v0, v0, 0x1

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->f:[I

    add-int/lit8 v5, v1, -0x1

    aget v2, v2, v5

    xor-int/2addr v0, v2

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_0

    xor-int/lit16 v0, v0, 0x11b

    :cond_0
    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->f:[I

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    const/16 v1, 0xff

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->g:[I

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->f:[I

    aget v2, v2, v0

    aput v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-array v7, v14, [[B

    new-array v0, v14, [B

    fill-array-data v0, :array_0

    aput-object v0, v7, v4

    new-array v0, v14, [B

    fill-array-data v0, :array_1

    aput-object v0, v7, v3

    const/4 v0, 0x2

    new-array v1, v14, [B

    fill-array-data v1, :array_2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    new-array v1, v14, [B

    fill-array-data v1, :array_3

    aput-object v1, v7, v0

    new-array v0, v14, [B

    fill-array-data v0, :array_4

    aput-object v0, v7, v15

    const/4 v0, 0x5

    new-array v1, v14, [B

    fill-array-data v1, :array_5

    aput-object v1, v7, v0

    const/4 v0, 0x6

    new-array v1, v14, [B

    fill-array-data v1, :array_6

    aput-object v1, v7, v0

    const/4 v0, 0x7

    new-array v1, v14, [B

    fill-array-data v1, :array_7

    aput-object v1, v7, v0

    new-array v8, v14, [B

    fill-array-data v8, :array_8

    filled-new-array {v13, v14}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    aget-object v1, v0, v3

    const/4 v2, 0x7

    aput-byte v3, v1, v2

    const/4 v1, 0x2

    move v2, v1

    :goto_2
    if-ge v2, v13, :cond_4

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->f:[I

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->g:[I

    aget v5, v5, v2

    rsub-int v5, v5, 0xff

    aget v5, v1, v5

    move v1, v4

    :goto_3
    if-ge v1, v14, :cond_3

    aget-object v6, v0, v2

    rsub-int/lit8 v9, v1, 0x7

    ushr-int v9, v5, v9

    and-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    aput-byte v9, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_4
    filled-new-array {v13, v14}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    move v6, v4

    :goto_4
    if-ge v6, v13, :cond_7

    move v5, v4

    :goto_5
    if-ge v5, v14, :cond_6

    aget-object v2, v1, v6

    aget-byte v9, v8, v5

    aput-byte v9, v2, v5

    move v2, v4

    :goto_6
    if-ge v2, v14, :cond_5

    aget-object v9, v1, v6

    aget-byte v10, v9, v5

    aget-object v11, v7, v5

    aget-byte v11, v11, v2

    aget-object v12, v0, v6

    aget-byte v12, v12, v2

    mul-int/2addr v11, v12

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v9, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_4

    :cond_7
    move v2, v4

    :goto_7
    if-ge v2, v13, :cond_9

    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    aget-object v5, v1, v2

    aget-byte v5, v5, v4

    shl-int/lit8 v5, v5, 0x7

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    move v0, v3

    :goto_8
    if-ge v0, v14, :cond_8

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    aget-byte v6, v5, v2

    aget-object v7, v1, v2

    aget-byte v7, v7, v0

    rsub-int/lit8 v8, v0, 0x7

    shl-int/2addr v7, v8

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v6, v2

    aput-byte v6, v0, v5

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_9
    new-array v7, v15, [[B

    new-array v0, v15, [B

    fill-array-data v0, :array_9

    aput-object v0, v7, v4

    new-array v0, v15, [B

    fill-array-data v0, :array_a

    aput-object v0, v7, v3

    const/4 v0, 0x2

    new-array v1, v15, [B

    fill-array-data v1, :array_b

    aput-object v1, v7, v0

    const/4 v0, 0x3

    new-array v1, v15, [B

    fill-array-data v1, :array_c

    aput-object v1, v7, v0

    filled-new-array {v15, v14}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v2, v4

    :goto_9
    if-ge v2, v15, :cond_b

    move v1, v4

    :goto_a
    if-ge v1, v15, :cond_a

    aget-object v5, v0, v2

    aget-object v6, v7, v2

    aget-byte v6, v6, v1

    aput-byte v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_a
    aget-object v1, v0, v2

    add-int/lit8 v5, v2, 0x4

    aput-byte v3, v1, v5

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9

    :cond_b
    filled-new-array {v15, v15}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    move v5, v4

    :goto_b
    if-ge v5, v15, :cond_15

    aget-object v2, v0, v5

    aget-byte v2, v2, v5

    if-nez v2, :cond_f

    add-int/lit8 v2, v5, 0x1

    :goto_c
    aget-object v6, v0, v2

    aget-byte v6, v6, v5

    if-nez v6, :cond_c

    if-ge v2, v15, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_c
    if-ne v2, v15, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "G matrix is not invertible"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move v6, v4

    :goto_d
    if-ge v6, v14, :cond_e

    aget-object v8, v0, v5

    aget-byte v8, v8, v6

    aget-object v9, v0, v5

    aget-object v10, v0, v2

    aget-byte v10, v10, v6

    aput-byte v10, v9, v6

    aget-object v9, v0, v2

    aput-byte v8, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_e
    aget-object v2, v0, v5

    aget-byte v2, v2, v5

    :cond_f
    move v6, v4

    :goto_e
    if-ge v6, v14, :cond_11

    aget-object v8, v0, v5

    aget-byte v8, v8, v6

    if-eqz v8, :cond_10

    aget-object v8, v0, v5

    sget-object v9, Lcom/sun/crypto/provider/SunJCE_c;->f:[I

    sget-object v10, Lcom/sun/crypto/provider/SunJCE_c;->g:[I

    aget-object v11, v0, v5

    aget-byte v11, v11, v6

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    add-int/lit16 v10, v10, 0xff

    sget-object v11, Lcom/sun/crypto/provider/SunJCE_c;->g:[I

    and-int/lit16 v12, v2, 0xff

    aget v11, v11, v12

    sub-int/2addr v10, v11

    rem-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    int-to-byte v9, v9

    aput-byte v9, v8, v6

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_11
    move v6, v4

    :goto_f
    if-ge v6, v15, :cond_14

    if-eq v5, v6, :cond_13

    add-int/lit8 v2, v5, 0x1

    :goto_10
    if-ge v2, v14, :cond_12

    aget-object v8, v0, v6

    aget-byte v9, v8, v2

    aget-object v10, v0, v5

    aget-byte v10, v10, v2

    aget-object v11, v0, v6

    aget-byte v11, v11, v5

    invoke-static {v10, v11}, Lcom/sun/crypto/provider/SunJCE_c;->a(II)I

    move-result v10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_12
    aget-object v2, v0, v6

    aput-byte v4, v2, v5

    :cond_13
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_f

    :cond_14
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_b

    :cond_15
    move v5, v4

    :goto_11
    if-ge v5, v15, :cond_17

    move v2, v4

    :goto_12
    if-ge v2, v15, :cond_16

    aget-object v6, v1, v5

    aget-object v8, v0, v5

    add-int/lit8 v9, v2, 0x4

    aget-byte v8, v8, v9

    aput-byte v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_16
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_11

    :cond_17
    move v0, v4

    :goto_13
    if-ge v0, v13, :cond_18

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    aget-byte v2, v2, v0

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->j:[I

    aget-object v6, v7, v4

    invoke-static {v2, v6}, Lcom/sun/crypto/provider/SunJCE_c;->a(I[B)I

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->k:[I

    aget-object v6, v7, v3

    invoke-static {v2, v6}, Lcom/sun/crypto/provider/SunJCE_c;->a(I[B)I

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->l:[I

    const/4 v6, 0x2

    aget-object v6, v7, v6

    invoke-static {v2, v6}, Lcom/sun/crypto/provider/SunJCE_c;->a(I[B)I

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->m:[I

    const/4 v6, 0x3

    aget-object v6, v7, v6

    invoke-static {v2, v6}, Lcom/sun/crypto/provider/SunJCE_c;->a(I[B)I

    move-result v2

    aput v2, v5, v0

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    aget-byte v2, v2, v0

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    aget-object v6, v1, v4

    invoke-static {v2, v6}, Lcom/sun/crypto/provider/SunJCE_c;->a(I[B)I

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    aget-object v6, v1, v3

    invoke-static {v2, v6}, Lcom/sun/crypto/provider/SunJCE_c;->a(I[B)I

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-static {v2, v6}, Lcom/sun/crypto/provider/SunJCE_c;->a(I[B)I

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    const/4 v6, 0x3

    aget-object v6, v1, v6

    invoke-static {v2, v6}, Lcom/sun/crypto/provider/SunJCE_c;->a(I[B)I

    move-result v2

    aput v2, v5, v0

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->r:[I

    aget-object v5, v1, v4

    invoke-static {v0, v5}, Lcom/sun/crypto/provider/SunJCE_c;->a(I[B)I

    move-result v5

    aput v5, v2, v0

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->s:[I

    aget-object v5, v1, v3

    invoke-static {v0, v5}, Lcom/sun/crypto/provider/SunJCE_c;->a(I[B)I

    move-result v5

    aput v5, v2, v0

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->t:[I

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v0, v5}, Lcom/sun/crypto/provider/SunJCE_c;->a(I[B)I

    move-result v5

    aput v5, v2, v0

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->u:[I

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v0, v5}, Lcom/sun/crypto/provider/SunJCE_c;->a(I[B)I

    move-result v5

    aput v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    :cond_18
    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->v:[B

    aput-byte v3, v0, v4

    move v0, v3

    :goto_14
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_19

    const/4 v1, 0x2

    invoke-static {v1, v3}, Lcom/sun/crypto/provider/SunJCE_c;->a(II)I

    move-result v3

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->v:[B

    int-to-byte v2, v3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_19
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->g:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_c;->f:[I

    return-void

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_3
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_4
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_5
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_6
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_7
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_8
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_9
    .array-data 0x1
        0x2t
        0x1t
        0x1t
        0x3t
    .end array-data

    :array_a
    .array-data 0x1
        0x3t
        0x2t
        0x1t
        0x1t
    .end array-data

    :array_b
    .array-data 0x1
        0x1t
        0x3t
        0x2t
        0x1t
    .end array-data

    :array_c
    .array-data 0x1
        0x1t
        0x1t
        0x3t
        0x2t
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sun/crypto/provider/SunJCE_e;-><init>()V

    iput-boolean v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->a:Z

    iput-boolean v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->b:Z

    iput-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->c:[Ljava/lang/Object;

    iput-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->e:I

    return-void
.end method

.method private static final a(II)I
    .locals 4

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->f:[I

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->g:[I

    and-int/lit16 v2, p0, 0xff

    aget v1, v1, v2

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->g:[I

    and-int/lit16 v3, p1, 0xff

    aget v2, v2, v3

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final a(I[B)I
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v1

    :cond_0
    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->g:[I

    and-int/lit16 v2, p0, 0xff

    aget v4, v0, v2

    aget-byte v0, p1, v1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->f:[I

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->g:[I

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    add-int/2addr v2, v4

    rem-int/lit16 v2, v2, 0xff

    aget v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    :goto_1
    aget-byte v2, p1, v5

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->f:[I

    sget-object v3, Lcom/sun/crypto/provider/SunJCE_c;->g:[I

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    add-int/2addr v3, v4

    rem-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    :goto_2
    aget-byte v3, p1, v6

    if-eqz v3, :cond_4

    sget-object v3, Lcom/sun/crypto/provider/SunJCE_c;->f:[I

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->g:[I

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    add-int/2addr v5, v4

    rem-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    :goto_3
    aget-byte v5, p1, v7

    if-eqz v5, :cond_1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->f:[I

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->g:[I

    aget-byte v6, p1, v7

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    add-int/2addr v4, v5

    rem-int/lit16 v4, v4, 0xff

    aget v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    :cond_1
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move v3, v1

    goto :goto_3
.end method

.method private a(Z)V
    .locals 12

    const/4 v11, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_c;->c:[Ljava/lang/Object;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    aget-object v0, v3, v0

    check-cast v0, [[I

    array-length v5, v0

    mul-int/lit8 v3, v5, 0x4

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_2

    move v3, v2

    :goto_2
    const/4 v6, 0x4

    if-ge v3, v6, :cond_1

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    mul-int/lit8 v7, v4, 0x4

    add-int/2addr v7, v3

    aget-object v8, v0, v4

    aget v8, v8, v3

    aput v8, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x4

    aget v3, v0, v3

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x3

    aget v4, v0, v4

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x2

    aget v6, v0, v6

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v7, v0, v7

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-le v0, v11, :cond_3

    iget-object v8, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    iget-object v9, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v10, v0, -0x4

    aget v9, v9, v10

    aput v9, v8, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    aput v3, v0, v2

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    aput v4, v0, v1

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/4 v3, 0x2

    aput v6, v0, v3

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    aput v7, v0, v11

    :cond_4
    const/16 v0, 0xd

    if-lt v5, v0, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->a:Z

    const/16 v0, 0xf

    if-ne v5, v0, :cond_6

    :goto_5
    iput-boolean v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->b:Z

    add-int/lit8 v0, v5, -0x1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->e:I

    return-void

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_5
.end method

.method static final a(I)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/sun/crypto/provider/SunJCE_d;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_d;->b:[I

    aget v2, v2, v0

    if-ne p0, v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([B)[Ljava/lang/Object;
    .locals 14

    if-nez p0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Empty key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE_c;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid AES key length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE_c;->b(I)I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    mul-int/lit8 v7, v0, 0x4

    add-int/lit8 v0, v6, 0x1

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    add-int/lit8 v1, v6, 0x1

    const/4 v2, 0x4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    array-length v2, p0

    div-int/lit8 v8, v2, 0x4

    new-array v9, v8, [I

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v3, v8, :cond_2

    aget-byte v4, p0, v2

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_3

    if-ge v3, v7, :cond_3

    div-int/lit8 v4, v3, 0x4

    aget-object v4, v0, v4

    rem-int/lit8 v5, v3, 0x4

    aget v10, v9, v2

    aput v10, v4, v5

    div-int/lit8 v4, v3, 0x4

    sub-int v4, v6, v4

    aget-object v4, v1, v4

    rem-int/lit8 v5, v3, 0x4

    aget v10, v9, v2

    aput v10, v4, v5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v7, :cond_7

    add-int/lit8 v3, v8, -0x1

    aget v3, v9, v3

    const/4 v10, 0x0

    aget v11, v9, v10

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v12, v3, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v5, v5, v12

    shl-int/lit8 v5, v5, 0x18

    sget-object v12, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v13, v3, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    xor-int/2addr v5, v12

    sget-object v12, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    and-int/lit16 v13, v3, 0xff

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    xor-int/2addr v5, v12

    sget-object v12, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v3, v3, 0x18

    aget-byte v3, v12, v3

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v3, v5

    sget-object v12, Lcom/sun/crypto/provider/SunJCE_c;->v:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v12, v2

    shl-int/lit8 v2, v2, 0x18

    xor-int/2addr v2, v3

    xor-int/2addr v2, v11

    aput v2, v9, v10

    const/16 v2, 0x8

    if-eq v8, v2, :cond_4

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_3
    if-ge v3, v8, :cond_6

    aget v10, v9, v3

    aget v11, v9, v2

    xor-int/2addr v10, v11

    aput v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_4
    div-int/lit8 v10, v8, 0x2

    if-ge v3, v10, :cond_5

    aget v10, v9, v3

    aget v11, v9, v2

    xor-int/2addr v10, v11

    aput v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    div-int/lit8 v2, v8, 0x2

    add-int/lit8 v2, v2, -0x1

    aget v2, v9, v2

    div-int/lit8 v3, v8, 0x2

    aget v10, v9, v3

    sget-object v11, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    and-int/lit16 v12, v2, 0xff

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    sget-object v12, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    xor-int/2addr v11, v12

    sget-object v12, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v13, v2, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    xor-int/2addr v11, v12

    sget-object v12, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v2, v2, 0x18

    aget-byte v2, v12, v2

    shl-int/lit8 v2, v2, 0x18

    xor-int/2addr v2, v11

    xor-int/2addr v2, v10

    aput v2, v9, v3

    div-int/lit8 v2, v8, 0x2

    add-int/lit8 v3, v2, 0x1

    :goto_5
    if-ge v3, v8, :cond_6

    aget v10, v9, v3

    aget v11, v9, v2

    xor-int/2addr v10, v11

    aput v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    move v3, v4

    :goto_6
    if-ge v2, v8, :cond_a

    if-ge v3, v7, :cond_a

    div-int/lit8 v4, v3, 0x4

    aget-object v4, v0, v4

    rem-int/lit8 v10, v3, 0x4

    aget v11, v9, v2

    aput v11, v4, v10

    div-int/lit8 v4, v3, 0x4

    sub-int v4, v6, v4

    aget-object v4, v1, v4

    rem-int/lit8 v10, v3, 0x4

    aget v11, v9, v2

    aput v11, v4, v10

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x1

    move v3, v2

    :goto_7
    if-ge v3, v6, :cond_9

    const/4 v2, 0x0

    :goto_8
    const/4 v4, 0x4

    if-ge v2, v4, :cond_8

    aget-object v4, v1, v3

    aget v4, v4, v2

    aget-object v5, v1, v3

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->r:[I

    ushr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->s:[I

    ushr-int/lit8 v9, v4, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v7, v8

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->t:[I

    ushr-int/lit8 v9, v4, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v7, v8

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->u:[I

    and-int/lit16 v4, v4, 0xff

    aget v4, v8, v4

    xor-int/2addr v4, v7

    aput v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    :cond_9
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2

    :cond_a
    move v2, v5

    move v4, v3

    goto/16 :goto_2
.end method

.method private static b(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, 0x6

    return v0
.end method


# virtual methods
.method final a()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method final a(ZLjava/lang/String;[B)V
    .locals 3

    const-string v0, "AES"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Rijndael"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Wrong algorithm: AES or Rijndael required"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p3

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE_c;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid AES key length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p3}, Lcom/sun/crypto/provider/SunJCE_c;->a([B)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/SunJCE_c;->c:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/sun/crypto/provider/SunJCE_c;->a(Z)V

    return-void
.end method

.method final a([BI[BI)V
    .locals 11

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    xor-int v2, v0, v1

    add-int/lit8 v0, v3, 0x1

    aget-byte v1, p1, v3

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/4 v4, 0x1

    aget v1, v1, v4

    xor-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/4 v5, 0x2

    aget v3, v3, v5

    xor-int/2addr v0, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v3

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/4 v6, 0x3

    const/4 v3, 0x4

    aget v5, v5, v6

    xor-int/2addr v4, v5

    move v6, v4

    move v4, v2

    move v2, v1

    move v1, v3

    :goto_0
    iget v3, p0, Lcom/sun/crypto/provider/SunJCE_c;->e:I

    if-ge v1, v3, :cond_0

    sget-object v3, Lcom/sun/crypto/provider/SunJCE_c;->j:[I

    ushr-int/lit8 v5, v4, 0x18

    aget v3, v3, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->k:[I

    ushr-int/lit8 v7, v2, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v5, v5, v7

    xor-int/2addr v3, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->l:[I

    ushr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v5, v5, v7

    xor-int/2addr v3, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->m:[I

    and-int/lit16 v7, v6, 0xff

    aget v5, v5, v7

    xor-int/2addr v3, v5

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v7, v1, 0x1

    aget v1, v5, v1

    xor-int v5, v3, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->j:[I

    ushr-int/lit8 v3, v2, 0x18

    aget v1, v1, v3

    sget-object v3, Lcom/sun/crypto/provider/SunJCE_c;->k:[I

    ushr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v3, v3, v8

    xor-int/2addr v1, v3

    sget-object v3, Lcom/sun/crypto/provider/SunJCE_c;->l:[I

    ushr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v3, v3, v8

    xor-int/2addr v1, v3

    sget-object v3, Lcom/sun/crypto/provider/SunJCE_c;->m:[I

    and-int/lit16 v8, v4, 0xff

    aget v3, v3, v8

    xor-int/2addr v1, v3

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v8, v7, 0x1

    aget v3, v3, v7

    xor-int/2addr v3, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->j:[I

    ushr-int/lit8 v7, v0, 0x18

    aget v1, v1, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->k:[I

    ushr-int/lit8 v9, v6, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v1, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->l:[I

    ushr-int/lit8 v9, v4, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v1, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->m:[I

    and-int/lit16 v9, v2, 0xff

    aget v7, v7, v9

    xor-int/2addr v1, v7

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    xor-int/2addr v1, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->j:[I

    ushr-int/lit8 v6, v6, 0x18

    aget v6, v7, v6

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->k:[I

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v7, v4

    xor-int/2addr v4, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->l:[I

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    xor-int/2addr v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->m:[I

    and-int/lit16 v0, v0, 0xff

    aget v0, v4, v0

    xor-int/2addr v2, v0

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v0, v9, 0x1

    aget v4, v4, v9

    xor-int/2addr v2, v4

    move v4, v5

    move v6, v2

    move v2, v3

    move v10, v0

    move v0, v1

    move v1, v10

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v5, v1, 0x1

    aget v1, v3, v1

    add-int/lit8 v3, p4, 0x1

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v8, v4, 0x18

    aget-byte v7, v7, v8

    ushr-int/lit8 v8, v1, 0x18

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, p4

    add-int/lit8 v7, v3, 0x1

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v9, v2, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    ushr-int/lit8 v9, v1, 0x10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v3

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v9, v0, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    add-int/lit8 v7, v3, 0x1

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    and-int/lit16 v9, v6, 0xff

    aget-byte v8, v8, v9

    xor-int/2addr v1, v8

    int-to-byte v1, v1

    aput-byte v1, p3, v3

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v3, v5, 0x1

    aget v1, v1, v5

    add-int/lit8 v5, v7, 0x1

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v9, v2, 0x18

    aget-byte v8, v8, v9

    ushr-int/lit8 v9, v1, 0x18

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v9, v0, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    ushr-int/lit8 v9, v1, 0x10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v5

    add-int/lit8 v5, v7, 0x1

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    and-int/lit16 v9, v4, 0xff

    aget-byte v8, v8, v9

    xor-int/2addr v1, v8

    int-to-byte v1, v1

    aput-byte v1, p3, v5

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v5, v3, 0x1

    aget v1, v1, v3

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v9, v0, 0x18

    aget-byte v8, v8, v9

    ushr-int/lit8 v9, v1, 0x18

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    add-int/lit8 v7, v3, 0x1

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v9, v6, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    ushr-int/lit8 v9, v1, 0x10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v3

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v9, v4, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    add-int/lit8 v7, v3, 0x1

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    and-int/lit16 v9, v2, 0xff

    aget-byte v8, v8, v9

    xor-int/2addr v1, v8

    int-to-byte v1, v1

    aput-byte v1, p3, v3

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    aget v1, v1, v5

    add-int/lit8 v3, v7, 0x1

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v6, v6, 0x18

    aget-byte v5, v5, v6

    ushr-int/lit8 v6, v1, 0x18

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v7

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v6, v4

    ushr-int/lit8 v6, v1, 0x10

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, v5, 0x1

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v4, v2

    ushr-int/lit8 v4, v1, 0x8

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p3, v5

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->h:[B

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v2, v0

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p3, v3

    return-void
.end method

.method final b([BI[BI)V
    .locals 10

    const/16 v3, 0x10

    const/16 v4, 0x8

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    xor-int v2, v0, v1

    add-int/lit8 v0, v5, 0x1

    aget-byte v1, p1, v5

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/4 v6, 0x5

    aget v1, v1, v6

    xor-int/2addr v1, v0

    add-int/lit8 v0, v5, 0x1

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v0, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/4 v7, 0x6

    aget v5, v5, v7

    xor-int/2addr v0, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    iget-boolean v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->a:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v7, v2, 0x18

    aget v6, v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v8, v1, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    aget v4, v7, v4

    xor-int/2addr v4, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v7, v1, 0x18

    aget v6, v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v8, v0, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/16 v8, 0x9

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v8, v0, 0x18

    aget v7, v7, v8

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v9, v1, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v7, v8

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v9, v2, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v7, v8

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v9, v5, 0xff

    aget v8, v8, v9

    xor-int/2addr v7, v8

    iget-object v8, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/16 v9, 0xa

    aget v8, v8, v9

    xor-int/2addr v7, v8

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v5, v5, 0x18

    aget v5, v8, v5

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    aget v0, v8, v0

    xor-int/2addr v0, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    aget v1, v5, v1

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    xor-int v5, v0, v1

    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v1, v4, 0x18

    aget v0, v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v2, v5, 0x10

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v2, v7, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v2, v6, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/16 v2, 0xc

    aget v1, v1, v2

    xor-int v2, v0, v1

    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v1, v6, 0x18

    aget v0, v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v1, v1, v8

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v1, v1, v8

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v8, v7, 0xff

    aget v1, v1, v8

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/16 v8, 0xd

    aget v1, v1, v8

    xor-int/2addr v1, v0

    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v8, v7, 0x18

    aget v0, v0, v8

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v9, v6, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v0, v8

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v9, v4, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v0, v8

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v9, v5, 0xff

    aget v8, v8, v9

    xor-int/2addr v0, v8

    iget-object v8, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/16 v9, 0xe

    aget v8, v8, v9

    xor-int/2addr v0, v8

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v5, v5, 0x18

    aget v5, v8, v5

    sget-object v8, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v7, v8, v7

    xor-int/2addr v5, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    aget v6, v7, v6

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v4, v4, 0xff

    aget v4, v6, v4

    xor-int/2addr v4, v5

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    xor-int/2addr v4, v5

    iget-boolean v5, p0, Lcom/sun/crypto/provider/SunJCE_c;->b:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v6, v2, 0x18

    aget v5, v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v7, v4, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v7, v1, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    aget v3, v6, v3

    xor-int/2addr v3, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v6, v1, 0x18

    aget v5, v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v7, v2, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v7, v0, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/16 v7, 0x11

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v7, v0, 0x18

    aget v6, v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v8, v4, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/16 v8, 0x12

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v4, v4, 0x18

    aget v4, v7, v4

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    aget v0, v7, v0

    xor-int/2addr v0, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    aget v1, v4, v1

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/16 v2, 0x13

    aget v1, v1, v2

    xor-int v4, v0, v1

    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v1, v3, 0x18

    aget v0, v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v2, v4, 0x10

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v2, v6, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v2, v5, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    xor-int v2, v0, v1

    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v1, v5, 0x18

    aget v0, v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v7, v3, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v1, v1, v7

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v1, v1, v7

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v7, v6, 0xff

    aget v1, v1, v7

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/16 v7, 0x15

    aget v1, v1, v7

    xor-int/2addr v1, v0

    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v7, v6, 0x18

    aget v0, v0, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v8, v4, 0xff

    aget v7, v7, v8

    xor-int/2addr v0, v7

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/16 v8, 0x16

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v4, v4, 0x18

    aget v4, v7, v4

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v6, v7, v6

    xor-int/2addr v4, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v5, v6, v5

    xor-int/2addr v4, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v3, v3, 0xff

    aget v3, v5, v3

    xor-int/2addr v4, v3

    iget-object v5, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/16 v6, 0x17

    const/16 v3, 0x18

    aget v5, v5, v6

    xor-int/2addr v4, v5

    :cond_0
    :goto_0
    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v6, v2, 0x18

    aget v5, v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v7, v4, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v7, v1, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v7, v3, 0x1

    aget v3, v6, v3

    xor-int/2addr v3, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v6, v1, 0x18

    aget v5, v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v8, v0, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v8, v7, 0x1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v7, v0, 0x18

    aget v6, v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v9, v1, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v9, v2, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v9, v4, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v4, v4, 0x18

    aget v4, v7, v4

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    aget v0, v7, v0

    xor-int/2addr v0, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    aget v1, v4, v1

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v2, v9, 0x1

    aget v1, v1, v9

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v4, v3, 0x18

    aget v1, v1, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v4, v4, v7

    xor-int/2addr v1, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v7, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v4, v4, v7

    xor-int/2addr v1, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v7, v5, 0xff

    aget v4, v4, v7

    xor-int/2addr v1, v4

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v7, v2, 0x1

    aget v2, v4, v2

    xor-int/2addr v1, v2

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v4, v5, 0x18

    aget v2, v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v8, v6, 0xff

    aget v4, v4, v8

    xor-int/2addr v2, v4

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v8, v7, 0x1

    aget v4, v4, v7

    xor-int/2addr v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v7, v6, 0x18

    aget v4, v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v9, v5, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v9, v0, 0xff

    aget v7, v7, v9

    xor-int/2addr v4, v7

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    xor-int/2addr v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v7, v0

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v6, v7, v6

    xor-int/2addr v0, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v5, v6, v5

    xor-int/2addr v0, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v3, v3, 0xff

    aget v3, v5, v3

    xor-int/2addr v0, v3

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v5, v9, 0x1

    aget v3, v3, v9

    xor-int/2addr v0, v3

    sget-object v3, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v6, v1, 0x18

    aget v3, v3, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v3, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v3, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v7, v2, 0xff

    aget v6, v6, v7

    xor-int/2addr v3, v6

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v7, v5, 0x1

    aget v5, v6, v5

    xor-int/2addr v3, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v6, v2, 0x18

    aget v5, v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v8, v4, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v8, v7, 0x1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v7, v4, 0x18

    aget v6, v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v9, v2, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v9, v0, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v7, v0

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v7, v4

    xor-int/2addr v0, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v4, v2

    xor-int/2addr v0, v2

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v1, v1, 0xff

    aget v1, v2, v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v2, v9, 0x1

    aget v1, v1, v9

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v4, v3, 0x18

    aget v1, v1, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v4, v4, v7

    xor-int/2addr v1, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v7, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v4, v4, v7

    xor-int/2addr v1, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v7, v5, 0xff

    aget v4, v4, v7

    xor-int/2addr v1, v4

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v7, v2, 0x1

    aget v2, v4, v2

    xor-int/2addr v1, v2

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v4, v5, 0x18

    aget v2, v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v8, v6, 0xff

    aget v4, v4, v8

    xor-int/2addr v2, v4

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v8, v7, 0x1

    aget v4, v4, v7

    xor-int/2addr v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v7, v6, 0x18

    aget v4, v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v9, v5, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v9, v0, 0xff

    aget v7, v7, v9

    xor-int/2addr v4, v7

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    xor-int/2addr v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v7, v0

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v6, v7, v6

    xor-int/2addr v0, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v5, v6, v5

    xor-int/2addr v0, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v3, v3, 0xff

    aget v3, v5, v3

    xor-int/2addr v0, v3

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v5, v9, 0x1

    aget v3, v3, v9

    xor-int/2addr v0, v3

    sget-object v3, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v6, v1, 0x18

    aget v3, v3, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v3, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v3, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v7, v2, 0xff

    aget v6, v6, v7

    xor-int/2addr v3, v6

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v7, v5, 0x1

    aget v5, v6, v5

    xor-int/2addr v3, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v6, v2, 0x18

    aget v5, v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v8, v4, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v8, v7, 0x1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v7, v4, 0x18

    aget v6, v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v9, v2, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v9, v0, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v7, v0

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v7, v4

    xor-int/2addr v0, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v4, v2

    xor-int/2addr v0, v2

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v1, v1, 0xff

    aget v1, v2, v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v2, v9, 0x1

    aget v1, v1, v9

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v4, v3, 0x18

    aget v1, v1, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v4, v4, v7

    xor-int/2addr v1, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v7, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v4, v4, v7

    xor-int/2addr v1, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v7, v5, 0xff

    aget v4, v4, v7

    xor-int/2addr v1, v4

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v7, v2, 0x1

    aget v2, v4, v2

    xor-int/2addr v1, v2

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v4, v5, 0x18

    aget v2, v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v8, v6, 0xff

    aget v4, v4, v8

    xor-int/2addr v2, v4

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v8, v7, 0x1

    aget v4, v4, v7

    xor-int/2addr v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v7, v6, 0x18

    aget v4, v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v9, v5, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v9, v0, 0xff

    aget v7, v7, v9

    xor-int/2addr v4, v7

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    xor-int/2addr v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v7, v0

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v6, v7, v6

    xor-int/2addr v0, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v5, v6, v5

    xor-int/2addr v0, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v3, v3, 0xff

    aget v3, v5, v3

    xor-int/2addr v0, v3

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v5, v9, 0x1

    aget v3, v3, v9

    xor-int/2addr v0, v3

    sget-object v3, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v6, v1, 0x18

    aget v3, v3, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v3, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v3, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v7, v2, 0xff

    aget v6, v6, v7

    xor-int/2addr v3, v6

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v7, v5, 0x1

    aget v5, v6, v5

    xor-int/2addr v3, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v6, v2, 0x18

    aget v5, v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v8, v4, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v8, v7, 0x1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v7, v4, 0x18

    aget v6, v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v9, v2, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v9, v0, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v7, v0

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v7, v4

    xor-int/2addr v0, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v4, v2

    xor-int/2addr v0, v2

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v1, v1, 0xff

    aget v1, v2, v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v2, v9, 0x1

    aget v1, v1, v9

    xor-int/2addr v0, v1

    sget-object v1, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v4, v3, 0x18

    aget v1, v1, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v4, v4, v7

    xor-int/2addr v1, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v7, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v4, v4, v7

    xor-int/2addr v1, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v7, v5, 0xff

    aget v4, v4, v7

    xor-int/2addr v1, v4

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v7, v2, 0x1

    aget v2, v4, v2

    xor-int/2addr v1, v2

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v4, v5, 0x18

    aget v2, v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v4, v4, v8

    xor-int/2addr v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v8, v6, 0xff

    aget v4, v4, v8

    xor-int/2addr v2, v4

    iget-object v4, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v8, v7, 0x1

    aget v4, v4, v7

    xor-int/2addr v2, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v7, v6, 0x18

    aget v4, v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v9, v5, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v9, v0, 0xff

    aget v7, v7, v9

    xor-int/2addr v4, v7

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    xor-int/2addr v4, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v7, v0

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v6, v7, v6

    xor-int/2addr v0, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v5, v6, v5

    xor-int/2addr v0, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v3, v3, 0xff

    aget v3, v5, v3

    xor-int/2addr v0, v3

    iget-object v3, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v5, v9, 0x1

    aget v3, v3, v9

    xor-int/2addr v0, v3

    sget-object v3, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v6, v1, 0x18

    aget v3, v3, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v3, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v3, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v7, v2, 0xff

    aget v6, v6, v7

    xor-int/2addr v3, v6

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v7, v5, 0x1

    aget v5, v6, v5

    xor-int/2addr v3, v5

    sget-object v5, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v6, v2, 0x18

    aget v5, v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v8, v4, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    iget-object v6, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v8, v7, 0x1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v7, v4, 0x18

    aget v6, v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v9, v2, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v9, v0, 0xff

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iget-object v7, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->n:[I

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v7, v0

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->o:[I

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v4, v7, v4

    xor-int/2addr v0, v4

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->p:[I

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v4, v2

    xor-int/2addr v0, v2

    sget-object v2, Lcom/sun/crypto/provider/SunJCE_c;->q:[I

    and-int/lit16 v1, v1, 0xff

    aget v1, v2, v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    aget v1, v1, v9

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/lit8 v2, p4, 0x1

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    ushr-int/lit8 v7, v3, 0x18

    aget-byte v4, v4, v7

    ushr-int/lit8 v7, v1, 0x18

    xor-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, p3, p4

    add-int/lit8 v4, v2, 0x1

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    ushr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    ushr-int/lit8 v8, v1, 0x10

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v2

    add-int/lit8 v2, v4, 0x1

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    ushr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    ushr-int/lit8 v8, v1, 0x8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v4

    add-int/lit8 v4, v2, 0x1

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    and-int/lit16 v8, v5, 0xff

    aget-byte v7, v7, v8

    xor-int/2addr v1, v7

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/lit8 v2, v4, 0x1

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    ushr-int/lit8 v8, v5, 0x18

    aget-byte v7, v7, v8

    ushr-int/lit8 v8, v1, 0x18

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v4

    add-int/lit8 v4, v2, 0x1

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    ushr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    ushr-int/lit8 v8, v1, 0x10

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v2

    add-int/lit8 v2, v4, 0x1

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    ushr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    ushr-int/lit8 v8, v1, 0x8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v4

    add-int/lit8 v4, v2, 0x1

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    and-int/lit16 v8, v6, 0xff

    aget-byte v7, v7, v8

    xor-int/2addr v1, v7

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/lit8 v2, v4, 0x1

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    ushr-int/lit8 v8, v6, 0x18

    aget-byte v7, v7, v8

    ushr-int/lit8 v8, v1, 0x18

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v4

    add-int/lit8 v4, v2, 0x1

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    ushr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    ushr-int/lit8 v8, v1, 0x10

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v2

    add-int/lit8 v2, v4, 0x1

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    ushr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    ushr-int/lit8 v8, v1, 0x8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v4

    add-int/lit8 v4, v2, 0x1

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    and-int/lit16 v8, v0, 0xff

    aget-byte v7, v7, v8

    xor-int/2addr v1, v7

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    iget-object v1, p0, Lcom/sun/crypto/provider/SunJCE_c;->d:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    add-int/lit8 v2, v4, 0x1

    sget-object v7, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    ushr-int/lit8 v0, v0, 0x18

    aget-byte v0, v7, v0

    ushr-int/lit8 v7, v1, 0x18

    xor-int/2addr v0, v7

    int-to-byte v0, v0

    aput-byte v0, p3, v4

    add-int/lit8 v0, v2, 0x1

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    ushr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v4, v4, v6

    ushr-int/lit8 v6, v1, 0x10

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    add-int/lit8 v2, v0, 0x1

    sget-object v4, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    ushr-int/lit8 v5, v1, 0x8

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v0

    sget-object v0, Lcom/sun/crypto/provider/SunJCE_c;->i:[B

    and-int/lit16 v3, v3, 0xff

    aget-byte v0, v0, v3

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p3, v2

    return-void

    :cond_1
    move v3, v4

    move v4, v5

    goto/16 :goto_0
.end method
