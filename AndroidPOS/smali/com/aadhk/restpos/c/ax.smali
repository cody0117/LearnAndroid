.class public final Lcom/aadhk/restpos/c/ax;
.super Lcom/aadhk/restpos/c/cs;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    const v0, 0x7f03004c

    invoke-direct {p0, p1, v0}, Lcom/aadhk/restpos/c/cs;-><init>(Landroid/content/Context;I)V

    .line 21
    const v0, 0x7f0900ca

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ax;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ax;->f:Landroid/webkit/WebView;

    .line 22
    iget-object v0, p0, Lcom/aadhk/restpos/c/ax;->f:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 24
    const v0, 0x7f09010e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/ax;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/ax;->e:Landroid/widget/Button;

    .line 25
    iget-object v0, p0, Lcom/aadhk/restpos/c/ax;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/c/ax;->f:Landroid/webkit/WebView;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/ax;->e:Landroid/widget/Button;

    .line 40
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/ax;->dismiss()V

    .line 42
    return-void
.end method
