.class final Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/facebook/FacebookATBannerAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/facebook/FacebookATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->e(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->f(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    :cond_0
    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATBannerAdapter;

    check-cast p1, Lcom/facebook/ads/AdView;

    iput-object p1, v0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->a:Lcom/facebook/ads/AdView;

    .line 78
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->a(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->b(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 86
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->c(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->d(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->g(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->h(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    :cond_0
    return-void
.end method
