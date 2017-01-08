.class final Lyuku/ambilwarna/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lyuku/ambilwarna/a;


# direct methods
.method constructor <init>(Lyuku/ambilwarna/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lyuku/ambilwarna/c;->a:Lyuku/ambilwarna/a;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lyuku/ambilwarna/c;->a:Lyuku/ambilwarna/a;

    invoke-virtual {v0}, Lyuku/ambilwarna/a;->a()V

    .line 163
    iget-object v0, p0, Lyuku/ambilwarna/c;->a:Lyuku/ambilwarna/a;

    invoke-virtual {v0}, Lyuku/ambilwarna/a;->b()V

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lyuku/ambilwarna/c;->a:Lyuku/ambilwarna/a;

    invoke-static {v0}, Lyuku/ambilwarna/a;->h(Lyuku/ambilwarna/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lyuku/ambilwarna/c;->a:Lyuku/ambilwarna/a;

    invoke-static {v0}, Lyuku/ambilwarna/a;->h(Lyuku/ambilwarna/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
