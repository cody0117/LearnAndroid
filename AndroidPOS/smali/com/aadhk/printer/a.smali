.class public final Lcom/aadhk/printer/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/util/BitSet;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/aadhk/printer/a;->a:Ljava/util/BitSet;

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/aadhk/printer/a;->b:I

    .line 27
    return-void
.end method

.method public final a(Ljava/util/BitSet;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/aadhk/printer/a;->a:Ljava/util/BitSet;

    .line 19
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/aadhk/printer/a;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/aadhk/printer/a;->c:I

    .line 35
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/aadhk/printer/a;->c:I

    return v0
.end method
