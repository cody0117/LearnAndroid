.class public final Lcom/google/android/gms/internal/fi;
.super Lcom/google/android/gms/internal/fy;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ia;
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private final b:Landroid/app/Activity;

.field private c:Lcom/google/android/gms/internal/dr;

.field private d:Lcom/google/android/gms/internal/fq;

.field private e:Lcom/google/android/gms/internal/mg;

.field private f:Lcom/google/android/gms/internal/fn;

.field private g:Lcom/google/android/gms/internal/ft;

.field private h:Z

.field private i:Z

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/fi;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fy;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fi;->i:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fi;->l:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fi;->m:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fi;->n:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/dr;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    iget-object v2, p1, Lcom/google/android/gms/internal/dr;->n:Lcom/google/android/gms/internal/gs;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/gs;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/dr;->a(Landroid/content/Intent;Lcom/google/android/gms/internal/dr;)V

    invoke-static {}, Lcom/google/android/gms/internal/qx;->d()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    const/4 v3, -0x2

    if-eqz p1, :cond_0

    const/16 v0, 0x32

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ft;

    iget-object v2, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ft;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/fi;->g:Lcom/google/android/gms/internal/ft;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_1

    const/16 v0, 0xb

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->g:Lcom/google/android/gms/internal/ft;

    iget-object v2, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/dr;->h:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ft;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->o:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/fi;->g:Lcom/google/android/gms/internal/ft;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_1
.end method

.method private static c(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method private c(Z)V
    .locals 14

    const/high16 v5, 0x100

    const/16 v3, 0x400

    const/4 v13, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fi;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fi;->n:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v1, v1, Lcom/google/android/gms/internal/dr;->q:Lcom/google/android/gms/internal/y;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/y;->c:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget v1, v1, Lcom/google/android/gms/internal/dr;->k:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/fi;->a(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_3

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/fm;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v3, v3, Lcom/google/android/gms/internal/dr;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/fm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fi;->o:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fi;->n:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->o:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/fi;->h:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v0, v0, Lcom/google/android/gms/internal/dr;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->f()Lcom/google/android/gms/internal/mi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mi;->b()Z

    move-result v3

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v1, v1, Lcom/google/android/gms/internal/dr;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mg;->e()Lcom/google/android/gms/internal/ay;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v5, v5, Lcom/google/android/gms/internal/dr;->n:Lcom/google/android/gms/internal/gs;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;ZZLcom/google/android/gms/internal/qa;Lcom/google/android/gms/internal/gs;)Lcom/google/android/gms/internal/mg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->f()Lcom/google/android/gms/internal/mi;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v8, v0, Lcom/google/android/gms/internal/dr;->f:Lcom/google/android/gms/internal/co;

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v9, v0, Lcom/google/android/gms/internal/dr;->j:Lcom/google/android/gms/internal/fu;

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v11, v0, Lcom/google/android/gms/internal/dr;->o:Lcom/google/android/gms/internal/da;

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v0, v0, Lcom/google/android/gms/internal/dr;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->f()Lcom/google/android/gms/internal/mi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mi;->a()Lcom/google/android/gms/internal/tz;

    move-result-object v12

    move-object v6, v4

    move-object v7, v4

    move v10, v2

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/gms/internal/mi;->a(Lcom/google/android/gms/internal/tr;Lcom/google/android/gms/internal/fp;Lcom/google/android/gms/internal/co;Lcom/google/android/gms/internal/fu;ZLcom/google/android/gms/internal/da;Lcom/google/android/gms/internal/tz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->f()Lcom/google/android/gms/internal/mi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/fk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fk;-><init>(Lcom/google/android/gms/internal/fi;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mi;->a(Lcom/google/android/gms/internal/mk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v0, v0, Lcom/google/android/gms/internal/dr;->m:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v1, v1, Lcom/google/android/gms/internal/dr;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mg;->loadUrl(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mg;->a(Lcom/google/android/gms/internal/fi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fi;->n:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    sget v1, Lcom/google/android/gms/internal/fi;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mg;->setBackgroundColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0, v1, v13, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->c()V

    :cond_6
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/fi;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/fi;->a(Z)V

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->o:Landroid/widget/RelativeLayout;

    sget v1, Lcom/google/android/gms/internal/fi;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v0, v0, Lcom/google/android/gms/internal/dr;->i:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v5, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v6, v0, Lcom/google/android/gms/internal/dr;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v7, v0, Lcom/google/android/gms/internal/dr;->i:Ljava/lang/String;

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/mg;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/fl;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fl;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v0, v0, Lcom/google/android/gms/internal/dr;->e:Lcom/google/android/gms/internal/mg;

    iput-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mg;->a(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fi;->m:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fi;->m:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->f:Lcom/google/android/gms/internal/fn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mg;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->f:Lcom/google/android/gms/internal/fn;

    iget-object v0, v0, Lcom/google/android/gms/internal/fn;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    iget-object v2, p0, Lcom/google/android/gms/internal/fi;->f:Lcom/google/android/gms/internal/fn;

    iget v2, v2, Lcom/google/android/gms/internal/fn;->a:I

    iget-object v3, p0, Lcom/google/android/gms/internal/fi;->f:Lcom/google/android/gms/internal/fn;

    iget-object v3, v3, Lcom/google/android/gms/internal/fn;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v0, v0, Lcom/google/android/gms/internal/dr;->d:Lcom/google/android/gms/internal/fp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v0, v0, Lcom/google/android/gms/internal/dr;->d:Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->p()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final a(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->d:Lcom/google/android/gms/internal/fq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->d:Lcom/google/android/gms/internal/fq;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/fi;->c(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fi;->l:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/dr;->a(Landroid/content/Intent;)Lcom/google/android/gms/internal/dr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/fl;

    const-string v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fl;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/fl; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fl;->getMessage()Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v0, v0, Lcom/google/android/gms/internal/dr;->q:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v0, v0, Lcom/google/android/gms/internal/dr;->q:Lcom/google/android/gms/internal/y;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/y;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fi;->n:Z

    :goto_1
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v0, v0, Lcom/google/android/gms/internal/dr;->d:Lcom/google/android/gms/internal/fp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v0, v0, Lcom/google/android/gms/internal/dr;->d:Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->q()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget v0, v0, Lcom/google/android/gms/internal/dr;->l:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v0, v0, Lcom/google/android/gms/internal/dr;->c:Lcom/google/android/gms/internal/tr;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v0, v0, Lcom/google/android/gms/internal/dr;->c:Lcom/google/android/gms/internal/tr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tr;->s()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget v0, v0, Lcom/google/android/gms/internal/dr;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/fl;

    const-string v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fl;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fi;->n:Z

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fi;->c(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/fn;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v1, v1, Lcom/google/android/gms/internal/dr;->e:Lcom/google/android/gms/internal/mg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fn;-><init>(Lcom/google/android/gms/internal/mg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fi;->f:Lcom/google/android/gms/internal/fn;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fi;->c(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fi;->c(Z)V

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fi;->l:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v1, v1, Lcom/google/android/gms/internal/dr;->b:Lcom/google/android/gms/internal/do;

    iget-object v2, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget-object v2, v2, Lcom/google/android/gms/internal/dr;->j:Lcom/google/android/gms/internal/fu;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ff;->a(Landroid/content/Context;Lcom/google/android/gms/internal/do;Lcom/google/android/gms/internal/fu;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Lcom/google/android/gms/internal/fl; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fi;->j:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->j:Landroid/widget/FrameLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/fi;->h:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/fi;->k:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/fi;->i:Z

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->g:Lcom/google/android/gms/internal/ft;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->g:Lcom/google/android/gms/internal/ft;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ft;->a(Z)V

    :cond_0
    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/fq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->d:Lcom/google/android/gms/internal/fq;

    return-object v0
.end method

.method public final b(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->d:Lcom/google/android/gms/internal/fq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/fq;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fi;->d:Lcom/google/android/gms/internal/fq;

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->d:Lcom/google/android/gms/internal/fq;

    const/4 v2, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/fi;->c(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->f()Lcom/google/android/gms/internal/mi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mi;->e()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fi;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fi;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget v0, v0, Lcom/google/android/gms/internal/dr;->k:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fi;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->j:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fi;->h:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/internal/fi;->j:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->k:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->k:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/internal/fi;->k:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fi;->i:Z

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->c:Lcom/google/android/gms/internal/dr;

    iget v0, v0, Lcom/google/android/gms/internal/dr;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fi;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-static {v0}, Lcom/google/android/gms/internal/lq;->b(Landroid/webkit/WebView;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fi;->l:Z

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->d:Lcom/google/android/gms/internal/fq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->d:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fq;->c()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fi;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->f:Lcom/google/android/gms/internal/fn;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-static {v0}, Lcom/google/android/gms/internal/lq;->a(Landroid/webkit/WebView;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/fi;->l()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fi;->l()V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->d:Lcom/google/android/gms/internal/fq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->d:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fq;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->e:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fi;->l()V

    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fi;->h:Z

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/fi;->g:Lcom/google/android/gms/internal/ft;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fi;->b(Z)V

    return-void
.end method
