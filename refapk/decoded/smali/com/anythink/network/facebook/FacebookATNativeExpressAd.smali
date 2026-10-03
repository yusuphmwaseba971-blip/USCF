.class public Lcom/anythink/network/facebook/FacebookATNativeExpressAd;
.super Lcom/anythink/network/facebook/FacebookATBaseNativeAd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/network/facebook/FacebookATBaseNativeAd<",
        "Lcom/facebook/ads/NativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field i:Landroid/view/View;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;)V
    .locals 1

    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Z)V

    .line 18
    const-class p1, Lcom/anythink/network/facebook/FacebookATNativeExpressAd;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeExpressAd;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    .line 28
    :try_start_0
    iget-boolean p1, p0, Lcom/anythink/network/facebook/FacebookATNativeExpressAd;->c:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeExpressAd;->a:Lcom/facebook/ads/NativeAdBase;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeExpressAd;->a:Lcom/facebook/ads/NativeAdBase;

    instance-of p1, p1, Lcom/facebook/ads/NativeAd;

    if-eqz p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeExpressAd;->i:Landroid/view/View;

    if-nez p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeExpressAd;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATNativeExpressAd;->a:Lcom/facebook/ads/NativeAdBase;

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-static {p1, v0}, Lcom/facebook/ads/NativeAdView;->render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeExpressAd;->i:Landroid/view/View;

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeExpressAd;->i:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
