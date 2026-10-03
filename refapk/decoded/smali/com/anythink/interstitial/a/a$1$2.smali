.class final Lcom/anythink/interstitial/a/a$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/a/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

.field final synthetic b:Lcom/anythink/core/common/f/h;

.field final synthetic c:Lcom/anythink/interstitial/a/a$1;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/a/a$1;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/common/f/h;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iput-object p2, p0, Lcom/anythink/interstitial/a/a$1$2;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    iput-object p3, p0, Lcom/anythink/interstitial/a/a$1$2;->b:Lcom/anythink/core/common/f/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 189
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$2;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    iget-object v1, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget-object v1, v1, Lcom/anythink/interstitial/a/a$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->setScenario(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 192
    iget-object v2, p0, Lcom/anythink/interstitial/a/a$1$2;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    iget-object v3, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget-object v3, v3, Lcom/anythink/interstitial/a/a$1;->f:Lcom/anythink/core/api/ATEventInterface;

    invoke-interface {v0, v2, v1, v3}, Lcom/anythink/core/api/IExHandler;->createDownloadListener(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATEventInterface;)Lcom/anythink/core/api/ATEventInterface;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->setAdDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V

    .line 194
    :cond_0
    new-instance v5, Lcom/anythink/interstitial/a/e;

    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$2;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    iget-object v2, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget-object v2, v2, Lcom/anythink/interstitial/a/a$1;->g:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-direct {v5, v0, v2}, Lcom/anythink/interstitial/a/e;-><init>(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    .line 195
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$2;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getMixedFormatAdType()I

    move-result v0

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget-object v3, v0, Lcom/anythink/interstitial/a/a$1;->i:Lcom/anythink/interstitial/a/a;

    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget-object v4, v0, Lcom/anythink/interstitial/a/a$1;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget-object v0, v0, Lcom/anythink/interstitial/a/a$1;->a:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->e()Lcom/anythink/core/api/BaseAd;

    move-result-object v6

    iget-object v7, p0, Lcom/anythink/interstitial/a/a$1$2;->b:Lcom/anythink/core/common/f/h;

    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget-object v8, v0, Lcom/anythink/interstitial/a/a$1;->c:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/anythink/interstitial/a/a;->a(Lcom/anythink/interstitial/a/a;Landroid/app/Activity;Lcom/anythink/interstitial/a/e;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/h;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$2;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    iget-object v2, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget-object v2, v2, Lcom/anythink/interstitial/a/a$1;->b:Landroid/app/Activity;

    new-instance v3, Lcom/anythink/interstitial/a/b;

    invoke-direct {v3, v5}, Lcom/anythink/interstitial/a/b;-><init>(Lcom/anythink/interstitial/a/e;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->internalShow(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/core/api/ATCommonImpressionListener;)V

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$2;->a:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ad()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->C()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->M()I

    move-result v5

    const/4 v6, 0x4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v7, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget-wide v7, v7, Lcom/anythink/interstitial/a/a$1;->h:J

    sub-long v7, v0, v7

    const-string v1, "4"

    .line 201
    invoke-static/range {v1 .. v8}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 208
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget v0, v0, Lcom/anythink/interstitial/a/a$1;->e:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget-object v0, v0, Lcom/anythink/interstitial/a/a$1;->i:Lcom/anythink/interstitial/a/a;

    invoke-static {v0}, Lcom/anythink/interstitial/a/a;->c(Lcom/anythink/interstitial/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget-object v0, v0, Lcom/anythink/interstitial/a/a$1;->i:Lcom/anythink/interstitial/a/a;

    invoke-static {v0}, Lcom/anythink/interstitial/a/a;->d(Lcom/anythink/interstitial/a/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget-object v0, v0, Lcom/anythink/interstitial/a/a$1;->i:Lcom/anythink/interstitial/a/a;

    invoke-static {v0}, Lcom/anythink/interstitial/a/a;->d(Lcom/anythink/interstitial/a/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget-object v1, v1, Lcom/anythink/interstitial/a/a$1;->i:Lcom/anythink/interstitial/a/a;

    invoke-static {v1}, Lcom/anythink/interstitial/a/a;->d(Lcom/anythink/interstitial/a/a;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$2;->c:Lcom/anythink/interstitial/a/a$1;

    iget-object v0, v0, Lcom/anythink/interstitial/a/a$1;->i:Lcom/anythink/interstitial/a/a;

    invoke-static {v0}, Lcom/anythink/interstitial/a/a;->c(Lcom/anythink/interstitial/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    return-void
.end method
