.class final Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/RewardedInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;


# direct methods
.method constructor <init>(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 251
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    iget-object p1, p1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->m(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    iget-object p1, p1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->n(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    :cond_0
    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 244
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    iget-object p1, p1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->k(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    iget-object p1, p1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->l(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 237
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    iget-object p1, p1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->i(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    iget-object p1, p1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->j(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

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

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 258
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    iget-object p1, p1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->o(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    iget-object p1, p1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->p(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    :cond_0
    return-void
.end method

.method public final onRewardedInterstitialClosed()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->g(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->h(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public final onRewardedInterstitialCompleted()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->c(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->d(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->e(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->f(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    :cond_1
    return-void
.end method
