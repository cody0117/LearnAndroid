.class final Lcom/aadhk/restpos/a/bo;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/a/bn;

.field private b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/aadhk/restpos/a/bo;->a:Lcom/aadhk/restpos/a/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/bo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/a/bo;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/bo;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/aadhk/restpos/a/bo;->b:Landroid/widget/TextView;

    return-object p1
.end method
