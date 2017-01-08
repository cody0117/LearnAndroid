.class final Lcom/aadhk/restpos/bs;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/l;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ReportActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/ReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/aadhk/restpos/bs;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/bs;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v0, p1}, Lcom/aadhk/restpos/ReportActivity;->a(Lcom/aadhk/restpos/ReportActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/bs;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v0, p2}, Lcom/aadhk/restpos/ReportActivity;->b(Lcom/aadhk/restpos/ReportActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/bs;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ReportActivity;->a(Lcom/aadhk/restpos/ReportActivity;)I

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/bs;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ReportActivity;->b(Lcom/aadhk/restpos/ReportActivity;)Lcom/aadhk/restpos/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bt;->notifyDataSetChanged()V

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/bs;->a:Lcom/aadhk/restpos/ReportActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ReportActivity;->c(Lcom/aadhk/restpos/ReportActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 119
    return-void
.end method
