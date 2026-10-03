.class public final Lcom/anythink/banner/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/anythink/banner/a/d;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

.field c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/anythink/banner/a/d;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/anythink/banner/a/b;->c:Z

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/banner/a/b;->a:Ljava/lang/ref/WeakReference;

    .line 34
    iput-object p2, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    .line 35
    iput-boolean p3, p0, Lcom/anythink/banner/a/b;->c:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/anythink/banner/a/b;->d:I

    return-void
.end method

.method public final onBannerAdClicked()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    .line 79
    iget v1, p0, Lcom/anythink/banner/a/b;->d:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->G(I)V

    .line 81
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/n/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/n/a;->a(ILcom/anythink/core/common/f/at;)V

    .line 84
    sget-object v1, Lcom/anythink/core/common/b/h$m;->d:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->l:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/anythink/banner/a/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/banner/a/d;

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/a/d;->onBannerClicked(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    :cond_0
    return-void
.end method

.method public final onBannerAdClose()V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/anythink/banner/a/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/banner/a/d;

    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/a/d;->onBannerClose(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-virtual {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/anythink/core/common/b/h$m;->e:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->l:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 50
    invoke-static {v0, v1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;Z)V

    :cond_1
    return-void
.end method

.method public final onBannerAdShow()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/anythink/banner/a/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/banner/a/d;

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    iget-boolean v2, p0, Lcom/anythink/banner/a/b;->c:Z

    invoke-interface {v0, v1, v2}, Lcom/anythink/banner/a/d;->onBannerShow(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-virtual {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-virtual {v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->a(Ljava/util/Map;)V

    .line 67
    sget-object v1, Lcom/anythink/core/common/b/h$m;->c:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->l:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/n/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/a;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-virtual {v3}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/anythink/core/common/n/a;->a(ILcom/anythink/core/common/f/at;Lcom/anythink/core/common/f/au;)V

    :cond_1
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/anythink/banner/a/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/banner/a/d;

    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-interface {v0, v1, p1}, Lcom/anythink/banner/a/d;->onDeeplinkCallback(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 102
    sget-object p1, Lcom/anythink/core/common/b/h$m;->l:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/anythink/core/common/b/h$m;->m:Ljava/lang/String;

    .line 103
    :goto_0
    sget-object v1, Lcom/anythink/core/common/b/h$m;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, p1, v2}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/anythink/banner/a/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/banner/a/d;

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-interface {v0, p1, v1, p2}, Lcom/anythink/banner/a/d;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/anythink/banner/a/b;->b:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object p1

    .line 115
    sget-object p2, Lcom/anythink/core/common/b/h$m;->j:Ljava/lang/String;

    sget-object v0, Lcom/anythink/core/common/b/h$m;->l:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p1, p2, v0, v1}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
