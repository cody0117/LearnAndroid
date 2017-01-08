.class public abstract Lcom/aadhk/product/a/a;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Landroid/content/res/Resources;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/product/a/a;->d:I

    .line 17
    iput-object p1, p0, Lcom/aadhk/product/a/a;->a:Landroid/content/Context;

    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/product/a/a;->b:Landroid/view/LayoutInflater;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/product/a/a;->c:Landroid/content/res/Resources;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/product/a/a;->d:I

    .line 29
    invoke-virtual {p0}, Lcom/aadhk/product/a/a;->notifyDataSetChanged()V

    .line 30
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/aadhk/product/a/a;->d:I

    .line 24
    invoke-virtual {p0}, Lcom/aadhk/product/a/a;->notifyDataSetChanged()V

    .line 25
    return-void
.end method

.method public abstract a(II)V
.end method

.method public abstract b()V
.end method
