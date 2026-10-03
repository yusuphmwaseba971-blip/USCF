.class public Lcom/anythink/network/facebook/FacebookATNativeAd;
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
.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Z)V

    .line 17
    const-class p1, Lcom/anythink/network/facebook/FacebookATNativeAd;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeAd;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    instance-of v0, v0, Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    check-cast v0, Lcom/facebook/ads/NativeAd;

    .line 33
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCreativeType()Lcom/facebook/ads/NativeAd$AdCreativeType;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/NativeAd$AdCreativeType;->VIDEO:Lcom/facebook/ads/NativeAd$AdCreativeType;

    if-ne v1, v2, :cond_0

    const-string v0, "1"

    .line 34
    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATNativeAd;->mAdSourceType:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCreativeType()Lcom/facebook/ads/NativeAd$AdCreativeType;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/NativeAd$AdCreativeType;->IMAGE:Lcom/facebook/ads/NativeAd$AdCreativeType;

    if-ne v0, v1, :cond_1

    const-string v0, "2"

    .line 36
    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATNativeAd;->mAdSourceType:Ljava/lang/String;

    .line 40
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    return-void
.end method
