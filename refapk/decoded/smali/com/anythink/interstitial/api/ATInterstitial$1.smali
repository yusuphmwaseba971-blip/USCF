.class Lcom/anythink/interstitial/api/ATInterstitial$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/interstitial/api/ATInterstitialExListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/interstitial/api/ATInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/interstitial/api/ATInterstitial;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/api/ATInterstitial;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
    .locals 2

    .line 50
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/interstitial/api/ATInterstitial$1$1;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;Z)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 2

    .line 62
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/interstitial/api/ATInterstitial$1$2;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterstitialAdClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 2

    .line 135
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$7;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$7;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterstitialAdClose(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 2

    .line 123
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$6;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$6;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .locals 0

    return-void
.end method

.method public onInterstitialAdLoaded()V
    .locals 0

    return-void
.end method

.method public onInterstitialAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 2

    .line 148
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$8;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$8;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterstitialAdVideoEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 2

    .line 97
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$4;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V
    .locals 2

    .line 110
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$5;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterstitialAdVideoStart(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 2

    .line 84
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$3;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method
