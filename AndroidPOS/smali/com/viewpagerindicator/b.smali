.class final Lcom/viewpagerindicator/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/IconPageIndicator;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/IconPageIndicator;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/viewpagerindicator/b;->a:Lcom/viewpagerindicator/IconPageIndicator;

    iput-object p2, p0, Lcom/viewpagerindicator/b;->b:Landroid/view/View;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viewpagerindicator/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/viewpagerindicator/b;->a:Lcom/viewpagerindicator/IconPageIndicator;

    invoke-virtual {v1}, Lcom/viewpagerindicator/IconPageIndicator;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/viewpagerindicator/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 63
    iget-object v1, p0, Lcom/viewpagerindicator/b;->a:Lcom/viewpagerindicator/IconPageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/viewpagerindicator/IconPageIndicator;->smoothScrollTo(II)V

    .line 64
    iget-object v0, p0, Lcom/viewpagerindicator/b;->a:Lcom/viewpagerindicator/IconPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/IconPageIndicator;->a(Lcom/viewpagerindicator/IconPageIndicator;)V

    .line 65
    return-void
.end method
