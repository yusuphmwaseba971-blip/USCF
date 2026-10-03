.class final Lcom/anythink/network/facebook/FacebookATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;->e(Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;->f(Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    :cond_0
    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;->c(Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;->d(Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 50
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;->a(Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;->b(Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;->i(Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;->j(Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    :cond_0
    return-void
.end method

.method public final onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;->g(Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;->h(Lcom/anythink/network/facebook/FacebookATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    :cond_0
    return-void
.end method
