.class public final Lcom/anythink/interstitial/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/api/ATCommonImpressionListener;


# instance fields
.field a:Lcom/anythink/interstitial/a/e;


# direct methods
.method public constructor <init>(Lcom/anythink/interstitial/a/e;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/a/e;

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/a/e;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/anythink/interstitial/a/e;->onInterstitialAdClicked()V

    :cond_0
    return-void
.end method

.method public final onAdDismiss()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/a/e;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/anythink/interstitial/a/e;->onInterstitialAdClose()V

    :cond_0
    return-void
.end method

.method public final onAdImpression()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/a/e;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/anythink/interstitial/a/e;->onInterstitialAdShow()V

    :cond_0
    return-void
.end method

.method public final onAdReward()V
    .locals 0

    return-void
.end method

.method public final onAdShowFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/a/e;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/anythink/interstitial/a/e;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onAdVideoPlayEnd()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/a/e;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/anythink/interstitial/a/e;->onInterstitialAdVideoEnd()V

    :cond_0
    return-void
.end method

.method public final onAdVideoPlayStart()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/a/e;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/anythink/interstitial/a/e;->onInterstitialAdVideoStart()V

    :cond_0
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/a/e;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Lcom/anythink/interstitial/a/e;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/a/e;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1, p2}, Lcom/anythink/interstitial/a/e;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    :cond_0
    return-void
.end method
