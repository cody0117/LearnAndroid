.class interface abstract Lcom/sun/crypto/provider/SunJCE_d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:I = 0x10

.field public static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/crypto/provider/SunJCE_d;->b:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method
