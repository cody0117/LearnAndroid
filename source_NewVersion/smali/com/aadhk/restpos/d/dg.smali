.class final Lcom/aadhk/restpos/d/dg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/de;

.field private b:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/de;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/aadhk/restpos/d/dg;->a:Lcom/aadhk/restpos/d/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dg;->a:Lcom/aadhk/restpos/d/de;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dg;->a:Lcom/aadhk/restpos/d/de;

    invoke-static {v1}, Lcom/aadhk/restpos/d/de;->b(Lcom/aadhk/restpos/d/de;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/printer/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/de;->a(Lcom/aadhk/restpos/d/de;[Ljava/lang/String;)[Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/d/dg;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-static {v0}, Lcom/aadhk/restpos/e/e;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/d/dg;->b:I

    .line 126
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 133
    iget v0, p0, Lcom/aadhk/restpos/d/dg;->b:I

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dg;->a:Lcom/aadhk/restpos/d/de;

    iget-object v1, v1, Lcom/aadhk/restpos/d/de;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 135
    iget v1, p0, Lcom/aadhk/restpos/d/dg;->b:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 136
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dg;->a:Lcom/aadhk/restpos/d/de;

    invoke-static {v0}, Lcom/aadhk/restpos/d/de;->a(Lcom/aadhk/restpos/d/de;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/d/dg;->a:Lcom/aadhk/restpos/d/de;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/de;->a(Lcom/aadhk/restpos/d/de;[Ljava/lang/String;)[Ljava/lang/String;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/dg;->a:Lcom/aadhk/restpos/d/de;

    new-instance v1, Lcom/aadhk/restpos/a/bf;

    iget-object v2, p0, Lcom/aadhk/restpos/d/dg;->a:Lcom/aadhk/restpos/d/de;

    iget-object v2, v2, Lcom/aadhk/restpos/d/de;->h:Lcom/aadhk/restpos/PrinterActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/dg;->a:Lcom/aadhk/restpos/d/de;

    invoke-static {v3}, Lcom/aadhk/restpos/d/de;->a(Lcom/aadhk/restpos/d/de;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/bf;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/de;->a(Lcom/aadhk/restpos/d/de;Lcom/aadhk/restpos/a/bf;)Lcom/aadhk/restpos/a/bf;

    .line 143
    iget-object v0, p0, Lcom/aadhk/restpos/d/dg;->a:Lcom/aadhk/restpos/d/de;

    invoke-static {v0}, Lcom/aadhk/restpos/d/de;->d(Lcom/aadhk/restpos/d/de;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/dg;->a:Lcom/aadhk/restpos/d/de;

    invoke-static {v1}, Lcom/aadhk/restpos/d/de;->c(Lcom/aadhk/restpos/d/de;)Lcom/aadhk/restpos/a/bf;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 145
    return-void
.end method
