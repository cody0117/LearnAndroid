.class final Lcom/aadhk/restpos/d/gh;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gf;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/gf;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    invoke-static {v1}, Lcom/aadhk/restpos/d/gf;->b(Lcom/aadhk/restpos/d/gf;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/printer/i;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/gf;->a(Lcom/aadhk/restpos/d/gf;[Ljava/lang/String;)[Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/gh;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-static {v0}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/gh;->b:I

    .line 119
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 126
    iget v0, p0, Lcom/aadhk/restpos/d/gh;->b:I

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gf;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 128
    iget v1, p0, Lcom/aadhk/restpos/d/gh;->b:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(I)V

    .line 129
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gf;->a(Lcom/aadhk/restpos/d/gf;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/gf;->a(Lcom/aadhk/restpos/d/gf;[Ljava/lang/String;)[Ljava/lang/String;

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    new-instance v1, Lcom/aadhk/restpos/a/bn;

    iget-object v2, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    iget-object v2, v2, Lcom/aadhk/restpos/d/gf;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    invoke-static {v3}, Lcom/aadhk/restpos/d/gf;->a(Lcom/aadhk/restpos/d/gf;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/bn;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/gf;->a(Lcom/aadhk/restpos/d/gf;Lcom/aadhk/restpos/a/bn;)Lcom/aadhk/restpos/a/bn;

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gf;->d(Lcom/aadhk/restpos/d/gf;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    invoke-static {v1}, Lcom/aadhk/restpos/d/gf;->c(Lcom/aadhk/restpos/d/gf;)Lcom/aadhk/restpos/a/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 138
    return-void
.end method
